

----


----
+ source ./zConfig.sh
++ WorkDir=../main/
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
+ source ./zConfig.sh
++ WorkDir=../main/
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:41:25 PM
Thu, Oct 11, 2018 12:41:25 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
Error / ExitCode = 1
Error / ExitCode = 1


----
+ source ./zConfig.sh
++ WorkDir=../main/
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:41:41 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
Error / ExitCode = 1


----
+ source ./zConfig.sh
++ WorkDir=../main/
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:41:51 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
Error / ExitCode = 1


----
+ source ./zConfig.sh
++ WorkDir=../main/
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:42:25 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
Error / ExitCode = 1


----
+ source ./zConfig.sh
++ WorkDir=.
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:43:06 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
Error / ExitCode = 1


----
+ source ./zConfig.sh
++ WorkDir=.
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:43:32 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
mv: cannot move './.vs/SignalRSimpleChat' to './.vs/JustChat': Permission denied
Error / ExitCode = 1


----
+ source ./zConfig.sh
++ WorkDir=.
++ RemoteBrName=
++ StartRev=1
++ RemoteUrl=
++ Username=
++ OldName=SignalRSimpleChat
++ NewName=JustChat
+ date
Thu, Oct 11, 2018 12:45:35 PM
+ pwd
/c/Users/iyuzv/Downloads/SignalRSimpleChat
+ FindCodeCmd='find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'''
+ FindFilesCmd='find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ FindDirsCmd='find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''*'
+ SedCmd='sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
+ RenameCmd='while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -regex '\''.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)'\'' -exec sed -i'\'''\'' '\''s/SignalRSimpleChat/JustChat/g'\'' {} +'
++ find ./ -type f -not -path '*/.git/*' -regex '.*\.\(cs\|html\|cshtml\|xml\|js\|ts\|csproj\|sln\|config\|asax\|json\|template\)' -exec sed -i s/SignalRSimpleChat/JustChat/g '{}' +
+ eval 'find ./ -type d -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type d -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./.vs/SignalRSimpleChat ./.vs/JustChat
++ read FNAME
+ eval 'find ./ -type f -not -path '\''*/.git/*'\'' -name '\''*SignalRSimpleChat'\''* | while read FNAME; do mv "$FNAME" "${FNAME//SignalRSimpleChat/JustChat}"; done'
++ find ./ -type f -not -path '*/.git/*' -name '*SignalRSimpleChat*'
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.deps.json ./bin/Debug/netcoreapp2.1/JustChat.deps.json
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.dll ./bin/Debug/netcoreapp2.1/JustChat.dll
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.pdb ./bin/Debug/netcoreapp2.1/JustChat.pdb
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.runtimeconfig.dev.json ./bin/Debug/netcoreapp2.1/JustChat.runtimeconfig.dev.json
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.runtimeconfig.json ./bin/Debug/netcoreapp2.1/JustChat.runtimeconfig.json
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.Views.dll ./bin/Debug/netcoreapp2.1/JustChat.Views.dll
++ read FNAME
++ mv ./bin/Debug/netcoreapp2.1/SignalRSimpleChat.Views.pdb ./bin/Debug/netcoreapp2.1/JustChat.Views.pdb
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.AssemblyInfo.cs ./obj/Debug/netcoreapp2.1/JustChat.AssemblyInfo.cs
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.AssemblyInfoInputs.cache ./obj/Debug/netcoreapp2.1/JustChat.AssemblyInfoInputs.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.assets.cache ./obj/Debug/netcoreapp2.1/JustChat.assets.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.csproj.CopyComplete ./obj/Debug/netcoreapp2.1/JustChat.csproj.CopyComplete
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.csproj.CoreCompileInputs.cache ./obj/Debug/netcoreapp2.1/JustChat.csproj.CoreCompileInputs.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.csproj.FileListAbsolute.txt ./obj/Debug/netcoreapp2.1/JustChat.csproj.FileListAbsolute.txt
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.csprojAssemblyReference.cache ./obj/Debug/netcoreapp2.1/JustChat.csprojAssemblyReference.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.dll ./obj/Debug/netcoreapp2.1/JustChat.dll
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.pdb ./obj/Debug/netcoreapp2.1/JustChat.pdb
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.RazorAssemblyInfo.cache ./obj/Debug/netcoreapp2.1/JustChat.RazorAssemblyInfo.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.RazorAssemblyInfo.cs ./obj/Debug/netcoreapp2.1/JustChat.RazorAssemblyInfo.cs
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.RazorCoreGenerate.cache ./obj/Debug/netcoreapp2.1/JustChat.RazorCoreGenerate.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.RazorTargetAssemblyInfo.cache ./obj/Debug/netcoreapp2.1/JustChat.RazorTargetAssemblyInfo.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.RazorTargetAssemblyInfo.cs ./obj/Debug/netcoreapp2.1/JustChat.RazorTargetAssemblyInfo.cs
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.TagHelpers.input.cache ./obj/Debug/netcoreapp2.1/JustChat.TagHelpers.input.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.TagHelpers.output.cache ./obj/Debug/netcoreapp2.1/JustChat.TagHelpers.output.cache
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.Views.dll ./obj/Debug/netcoreapp2.1/JustChat.Views.dll
++ read FNAME
++ mv ./obj/Debug/netcoreapp2.1/SignalRSimpleChat.Views.pdb ./obj/Debug/netcoreapp2.1/JustChat.Views.pdb
++ read FNAME
++ mv ./obj/SignalRSimpleChat.csproj.nuget.cache ./obj/JustChat.csproj.nuget.cache
++ read FNAME
++ mv ./obj/SignalRSimpleChat.csproj.nuget.g.props ./obj/JustChat.csproj.nuget.g.props
++ read FNAME
++ mv ./obj/SignalRSimpleChat.csproj.nuget.g.targets ./obj/JustChat.csproj.nuget.g.targets
++ read FNAME
++ mv ./SignalRSimpleChat.csproj ./JustChat.csproj
++ read FNAME
++ mv ./SignalRSimpleChat.csproj.user ./JustChat.csproj.user
++ read FNAME
++ mv ./SignalRSimpleChat.sln ./JustChat.sln
++ read FNAME
Success
