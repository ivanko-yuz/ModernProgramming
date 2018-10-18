package main

import "fmt"

func main() {
	showLU(matrix{
		{1, 3, 5},
		{2, 4, 7},
		{1, 1, 0}})
	// showLU(matrix{
	// 	{11, 9, 24, 2},
	// 	{1, 5, 2, 6},ß
	// 	{3, 17, 18, 1},
	// 	{2, 5, 7, 1}})
}

type matrix [][]float64

type MatrixFormatter struct {
	numerOfRows int
}

func (mf MatrixFormatter) zero() matrix {
	r := make([][]float64, mf.numerOfRows)
	a := make([]float64, mf.numerOfRows*mf.numerOfRows)
	for i := range r {
		r[i] = a[mf.numerOfRows*i : mf.numerOfRows*(i+1)]
	}
	return r
}

func (mf MatrixFormatter) eye() matrix {
	r := make([][]float64, mf.numerOfRows)
	a := make([]float64, mf.numerOfRows*mf.numerOfRows)
	for i := range r {
		r[i] = a[mf.numerOfRows*i : mf.numerOfRows*(i+1)]
	}
	for i := range r {
		r[i][i] = 1
	}
	return r
}

// func (m matrix) print(label string) {
// 	if label > "" {
// 		fmt.Printf("%s:\n", label)
// 	}
// 	for _, r := range m {
// 		for _, e := range r {
// 			fmt.Printf(" %9.5f", e)
// 		}
// 		fmt.Println()
// 	}
// }

func (a matrix) pivotize() matrix {
	martixFormatter := MatrixFormatter{numerOfRows: len(a)}
	p := martixFormatter.eye()
	for j, r := range a {
		max := r[j]
		row := j
		for i := j; i < len(a); i++ {
			if a[i][j] > max {
				max = a[i][j]
				row = i
			}
		}
		if j != row {
			// swap rows
			p[j], p[row] = p[row], p[j]
		}
	}
	return p
}

func (m1 matrix) multiply(m2 matrix) matrix {
	martixFormatter := MatrixFormatter{numerOfRows: len(m1)}
	r := martixFormatter.zero()
	for i, r1 := range m1 {
		for j := range m2 {
			for k := range m1 {
				r[i][j] += r1[k] * m2[k][j]
			}
		}
	}
	return r
}

func (a matrix) lu() (l, u, p matrix) {
	martixFormatter := MatrixFormatter{numerOfRows: len(a)}

	l = martixFormatter.zero()
	u = martixFormatter.zero()
	p = a.pivotize()
	a = p.multiply(a)
	for j := range a {
		l[j][j] = 1
		for i := 0; i <= j; i++ {
			sum := 0.
			for k := 0; k < i; k++ {
				sum += u[k][j] * l[i][k]
			}
			u[i][j] = a[i][j] - sum
		}
		for i := j; i < len(a); i++ {
			sum := 0.
			for k := 0; k < j; k++ {
				sum += u[k][j] * l[i][k]
			}
			l[i][j] = (a[i][j] - sum) / u[j][j]
		}
	}
	return
}

type PrintManager struct {
	matrix matrix
}

func (manager PrintManager) print(label string) {
	if label > "" {
		fmt.Printf("%s:\n", label)
	}
	for _, r := range manager.matrix {
		for _, e := range r {
			fmt.Printf(" %9.5f", e)
		}
		fmt.Println()
	}
}

func showLU(a matrix) {
	// a.print("\na")
	a_printer := PrintManager{matrix: a}
	a_printer.print("a")

	l, u, p := a.lu()

	l_printer := PrintManager{matrix: l}
	l_printer.print("l")

	u_printer := PrintManager{matrix: u}
	u_printer.print("u")

	p_printer := PrintManager{matrix: p}
	p_printer.print("p")

	result := l.multiply(u)

	result_printer := PrintManager{matrix: result}
	result_printer.print("result")
	// l.print("l")
	// u.print("u")
	// p.print("p")
	// result.print("res")

}
