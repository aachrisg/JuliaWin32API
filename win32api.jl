const WINAPI_FAMILY_PC_APP  = 2
const WINAPI_FAMILY_PHONE_APP  = 3
const WINAPI_FAMILY_SYSTEM  = 4
const WINAPI_FAMILY_SERVER  = 5
const WINAPI_FAMILY_GAMES  = 6
const WINAPI_FAMILY_DESKTOP_APP  = 100
const STRICT  = 1
const MAX_PATH  = 260
const NULL  = 0
const FALSE  = 0
const TRUE  = 1
const WPARAM = UInt
const LPARAM = Int
const LRESULT = Int
const HGLOBAL = Ptr{Cvoid}
const HLOCAL = Ptr{Cvoid}
const GLOBALHANDLE = Ptr{Cvoid}
const LOCALHANDLE = Ptr{Cvoid}
const ATOM = Cushort
const HFILE = Cint

mutable struct FILETIME
    dwLowDateTime::Culong
    dwHighDateTime::Culong
end


mutable struct SECURITY_ATTRIBUTES
    nLength::Culong
    lpSecurityDescriptor::Ptr{Cvoid}
    bInheritHandle::Cint
end


mutable struct SYSTEMTIME
    wYear::Cushort
    wMonth::Cushort
    wDayOfWeek::Cushort
    wDay::Cushort
    wHour::Cushort
    wMinute::Cushort
    wSecond::Cushort
    wMilliseconds::Cushort
end


mutable struct WIN32_FIND_DATAA
    dwFileAttributes::Culong
    ftCreationTime::FILETIME
    ftLastAccessTime::FILETIME
    ftLastWriteTime::FILETIME
    nFileSizeHigh::Culong
    nFileSizeLow::Culong
    dwReserved0::Culong
    dwReserved1::Culong
    cFileName::SVector{ 260 ,Cchar}
    cAlternateFileName::SVector{ 14 ,Cchar}
    dwFileType::Culong
    dwCreatorType::Culong
    wFinderFlags::Cushort
end


mutable struct WIN32_FIND_DATAW
    dwFileAttributes::Culong
    ftCreationTime::FILETIME
    ftLastAccessTime::FILETIME
    ftLastWriteTime::FILETIME
    nFileSizeHigh::Culong
    nFileSizeLow::Culong
    dwReserved0::Culong
    dwReserved1::Culong
    cFileName::SVector{ 260 ,Cwchar_t}
    cAlternateFileName::SVector{ 14 ,Cwchar_t}
    dwFileType::Culong
    dwCreatorType::Culong
    wFinderFlags::Cushort
end

const WIN32_FIND_DATA = WIN32_FIND_DATAW
const LPWIN32_FIND_DATA = Ptr{WIN32_FIND_DATAW}
@enum FINDEX_INFO_LEVELS::Int32 FindExInfoStandard=0 FindExInfoBasic=1 FindExInfoMaxInfoLevel=2
@enum FINDEX_SEARCH_OPS::Int32 FindExSearchNameMatch=0 FindExSearchLimitToDirectories=1 FindExSearchLimitToDevices=2 FindExSearchMaxSearchOp=3
@enum READ_DIRECTORY_NOTIFY_INFORMATION_CLASS::Int32 ReadDirectoryNotifyInformation=1 ReadDirectoryNotifyExtendedInformation=2
@enum GET_FILEEX_INFO_LEVELS::Int32 GetFileExInfoStandard=0 GetFileExMaxInfoLevel=1
@enum FILE_INFO_BY_HANDLE_CLASS::Int32 FileBasicInfo=0 FileStandardInfo=1 FileNameInfo=2 FileRenameInfo=3 FileDispositionInfo=4 FileAllocationInfo=5 FileEndOfFileInfo=6 FileStreamInfo=7 FileCompressionInfo=8 FileAttributeTagInfo=9 FileIdBothDirectoryInfo=10 FileIdBothDirectoryRestartInfo=11 FileIoPriorityHintInfo=12 FileRemoteProtocolInfo=13 FileFullDirectoryInfo=14 FileFullDirectoryRestartInfo=15 FileStorageInfo=16 FileAlignmentInfo=17 FileIdInfo=18 FileIdExtdDirectoryInfo=19 FileIdExtdDirectoryRestartInfo=20 FileDispositionInfoEx=21 FileRenameInfoEx=22 FileCaseSensitiveInfo=23 FileNormalizedNameInfo=24 MaximumFileInfoByHandleClass=25
const EXCEPTION_DEBUG_EVENT  = 1
const CREATE_THREAD_DEBUG_EVENT  = 2
const CREATE_PROCESS_DEBUG_EVENT  = 3
const EXIT_THREAD_DEBUG_EVENT  = 4
const EXIT_PROCESS_DEBUG_EVENT  = 5
const LOAD_DLL_DEBUG_EVENT  = 6
const UNLOAD_DLL_DEBUG_EVENT  = 7
const OUTPUT_DEBUG_STRING_EVENT  = 8
const RIP_EVENT  = 9

mutable struct EXIT_THREAD_DEBUG_INFO
    dwExitCode::Culong
end


mutable struct EXIT_PROCESS_DEBUG_INFO
    dwExitCode::Culong
end


mutable struct LOAD_DLL_DEBUG_INFO
    hFile::Ptr{Cvoid}
    lpBaseOfDll::Ptr{Cvoid}
    dwDebugInfoFileOffset::Culong
    nDebugInfoSize::Culong
    lpImageName::Ptr{Cvoid}
    fUnicode::Cushort
end


mutable struct UNLOAD_DLL_DEBUG_INFO
    lpBaseOfDll::Ptr{Cvoid}
end


mutable struct OUTPUT_DEBUG_STRING_INFO
    lpDebugStringData::Ptr{Cchar}
    fUnicode::Cushort
    nDebugStringLength::Cushort
end


mutable struct RIP_INFO
    dwError::Culong
    dwType::Culong
end


mutable struct PROCESS_INFORMATION
    hProcess::Ptr{Cvoid}
    hThread::Ptr{Cvoid}
    dwProcessId::Culong
    dwThreadId::Culong
end


mutable struct STARTUPINFOA
    cb::Culong
    lpReserved::Ptr{Cchar}
    lpDesktop::Ptr{Cchar}
    lpTitle::Ptr{Cchar}
    dwX::Culong
    dwY::Culong
    dwXSize::Culong
    dwYSize::Culong
    dwXCountChars::Culong
    dwYCountChars::Culong
    dwFillAttribute::Culong
    dwFlags::Culong
    wShowWindow::Cushort
    cbReserved2::Cushort
    lpReserved2::Ptr{Cuchar}
    hStdInput::Ptr{Cvoid}
    hStdOutput::Ptr{Cvoid}
    hStdError::Ptr{Cvoid}
end


mutable struct STARTUPINFOW
    cb::Culong
    lpReserved::Ptr{Cwchar_t}
    lpDesktop::Ptr{Cwchar_t}
    lpTitle::Ptr{Cwchar_t}
    dwX::Culong
    dwY::Culong
    dwXSize::Culong
    dwYSize::Culong
    dwXCountChars::Culong
    dwYCountChars::Culong
    dwFillAttribute::Culong
    dwFlags::Culong
    wShowWindow::Cushort
    cbReserved2::Cushort
    lpReserved2::Ptr{Cuchar}
    hStdInput::Ptr{Cvoid}
    hStdOutput::Ptr{Cvoid}
    hStdError::Ptr{Cvoid}
end

const STARTUPINFO = STARTUPINFOW
const LPSTARTUPINFO = Ptr{STARTUPINFOW}
function GetProcessTimes( hProcess::Ptr{Cvoid}, lpCreationTime::Ptr{FILETIME}, lpExitTime::Ptr{FILETIME}, lpKernelTime::Ptr{FILETIME}, lpUserTime::Ptr{FILETIME} )::Cint
    ccall( (:GetProcessTimes, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{FILETIME}, Ptr{FILETIME}, Ptr{FILETIME}, Ptr{FILETIME},  ),
        hProcess, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime )
end
function GetCurrentProcess(  )::Ptr{Cvoid}
    ccall( (:GetCurrentProcess, "kernel32"), stdcall, Ptr{Cvoid},
        (  ),
         )
end
function GetCurrentProcessId(  )::Culong
    ccall( (:GetCurrentProcessId, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function ExitProcess( uExitCode::UInt32 )::Cvoid
    ccall( (:ExitProcess, "kernel32"), stdcall, Cvoid,
        ( UInt32,  ),
        uExitCode )
end
function TerminateProcess( hProcess::Ptr{Cvoid}, uExitCode::UInt32 )::Cint
    ccall( (:TerminateProcess, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt32,  ),
        hProcess, uExitCode )
end
function GetExitCodeProcess( hProcess::Ptr{Cvoid}, lpExitCode::Ptr{Culong} )::Cint
    ccall( (:GetExitCodeProcess, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hProcess, lpExitCode )
end
function SwitchToThread(  )::Cint
    ccall( (:SwitchToThread, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function GetCurrentThread(  )::Ptr{Cvoid}
    ccall( (:GetCurrentThread, "kernel32"), stdcall, Ptr{Cvoid},
        (  ),
         )
end
function GetCurrentThreadId(  )::Culong
    ccall( (:GetCurrentThreadId, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function OpenThread( dwDesiredAccess::Culong, bInheritHandle::Cint, dwThreadId::Culong )::Ptr{Cvoid}
    ccall( (:OpenThread, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Culong,  ),
        dwDesiredAccess, bInheritHandle, dwThreadId )
end
function SetThreadPriorityBoost( hThread::Ptr{Cvoid}, bDisablePriorityBoost::Cint )::Cint
    ccall( (:SetThreadPriorityBoost, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cint,  ),
        hThread, bDisablePriorityBoost )
end
function GetThreadPriority( hThread::Ptr{Cvoid} )::Cint
    ccall( (:GetThreadPriority, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hThread )
end
function ExitThread( dwExitCode::Culong )::Cvoid
    ccall( (:ExitThread, "kernel32"), stdcall, Cvoid,
        ( Culong,  ),
        dwExitCode )
end
function TerminateThread( hThread::Ptr{Cvoid}, dwExitCode::Culong )::Cint
    ccall( (:TerminateThread, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hThread, dwExitCode )
end
function SuspendThread( hThread::Ptr{Cvoid} )::Culong
    ccall( (:SuspendThread, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        hThread )
end
function ResumeThread( hThread::Ptr{Cvoid} )::Culong
    ccall( (:ResumeThread, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        hThread )
end
function TlsAlloc(  )::Culong
    ccall( (:TlsAlloc, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function TlsGetValue( dwTlsIndex::Culong )::Ptr{Cvoid}
    ccall( (:TlsGetValue, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong,  ),
        dwTlsIndex )
end
function TlsSetValue( dwTlsIndex::Culong, lpTlsValue::Ptr{Cvoid} )::Cint
    ccall( (:TlsSetValue, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cvoid},  ),
        dwTlsIndex, lpTlsValue )
end
function TlsFree( dwTlsIndex::Culong )::Cint
    ccall( (:TlsFree, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        dwTlsIndex )
end
function SetProcessShutdownParameters( dwLevel::Culong, dwFlags::Culong )::Cint
    ccall( (:SetProcessShutdownParameters, "kernel32"), stdcall, Cint,
        ( Culong, Culong,  ),
        dwLevel, dwFlags )
end
function GetProcessVersion( ProcessId::Culong )::Culong
    ccall( (:GetProcessVersion, "kernel32"), stdcall, Culong,
        ( Culong,  ),
        ProcessId )
end
function GetStartupInfoW( lpStartupInfo::Ptr{STARTUPINFOW} )::Cvoid
    ccall( (:GetStartupInfoW, "kernel32"), stdcall, Cvoid,
        ( Ptr{STARTUPINFOW},  ),
        lpStartupInfo )
end
function SetPriorityClass( hProcess::Ptr{Cvoid}, dwPriorityClass::Culong )::Cint
    ccall( (:SetPriorityClass, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hProcess, dwPriorityClass )
end
function GetPriorityClass( hProcess::Ptr{Cvoid} )::Culong
    ccall( (:GetPriorityClass, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        hProcess )
end
function ProcessIdToSessionId( dwProcessId::Culong, pSessionId::Culong )::Cint
    ccall( (:ProcessIdToSessionId, "kernel32"), stdcall, Cint,
        ( Culong, Culong,  ),
        dwProcessId, pSessionId )
end
function GetProcessId( Process::Ptr{Cvoid} )::Culong
    ccall( (:GetProcessId, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        Process )
end
function GetThreadId( Thread::Ptr{Cvoid} )::Culong
    ccall( (:GetThreadId, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        Thread )
end
function FlushProcessWriteBuffers(  )::Cvoid
    ccall( (:FlushProcessWriteBuffers, "kernel32"), stdcall, Cvoid,
        (  ),
         )
end
function GetProcessIdOfThread( Thread::Ptr{Cvoid} )::Culong
    ccall( (:GetProcessIdOfThread, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        Thread )
end
function SetProcessAffinityUpdateMode( hProcess::Ptr{Cvoid}, dwFlags::Culong )::Cint
    ccall( (:SetProcessAffinityUpdateMode, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hProcess, dwFlags )
end
function QueryProcessAffinityUpdateMode( hProcess::Ptr{Cvoid}, lpdwFlags::Ptr{Culong} )::Cint
    ccall( (:QueryProcessAffinityUpdateMode, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hProcess, lpdwFlags )
end
function GetThreadTimes( hThread::Ptr{Cvoid}, lpCreationTime::Ptr{FILETIME}, lpExitTime::Ptr{FILETIME}, lpKernelTime::Ptr{FILETIME}, lpUserTime::Ptr{FILETIME} )::Cint
    ccall( (:GetThreadTimes, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{FILETIME}, Ptr{FILETIME}, Ptr{FILETIME}, Ptr{FILETIME},  ),
        hThread, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime )
end
function OpenProcess( dwDesiredAccess::Culong, bInheritHandle::Cint, dwProcessId::Culong )::Ptr{Cvoid}
    ccall( (:OpenProcess, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Culong,  ),
        dwDesiredAccess, bInheritHandle, dwProcessId )
end
function IsProcessorFeaturePresent( ProcessorFeature::Culong )::Cint
    ccall( (:IsProcessorFeaturePresent, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        ProcessorFeature )
end
function GetProcessHandleCount( hProcess::Ptr{Cvoid}, pdwHandleCount::Ptr{Culong} )::Cint
    ccall( (:GetProcessHandleCount, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hProcess, pdwHandleCount )
end
function GetCurrentProcessorNumber(  )::Culong
    ccall( (:GetCurrentProcessorNumber, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function SetProcessPriorityBoost( hProcess::Ptr{Cvoid}, bDisablePriorityBoost::Cint )::Cint
    ccall( (:SetProcessPriorityBoost, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cint,  ),
        hProcess, bDisablePriorityBoost )
end
@enum THREAD_INFORMATION_CLASS::Int32 ThreadMemoryPriority=0 ThreadAbsoluteCpuPriority=1 ThreadDynamicCodePolicy=2 ThreadPowerThrottling=3 ThreadInformationClassMax=4

mutable struct MEMORY_PRIORITY_INFORMATION
    MemoryPriority::Culong
end

const THREAD_POWER_THROTTLING_CURRENT_VERSION  = 1

mutable struct THREAD_POWER_THROTTLING_STATE
    Version::Culong
    ControlMask::Culong
    StateMask::Culong
end

function SetThreadIdealProcessor( hThread::Ptr{Cvoid}, dwIdealProcessor::Culong )::Culong
    ccall( (:SetThreadIdealProcessor, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong,  ),
        hThread, dwIdealProcessor )
end
@enum PROCESS_INFORMATION_CLASS::Int32 ProcessMemoryPriority=0 ProcessMemoryExhaustionInfo=1 ProcessAppMemoryInfo=2 ProcessInPrivateInfo=3 ProcessPowerThrottling=4 ProcessReservedValue1=5 ProcessTelemetryCoverageInfo=6 ProcessProtectionLevelInfo=7 ProcessLeapSecondInfo=8 ProcessInformationClassMax=9

mutable struct APP_MEMORY_INFORMATION
    AvailableCommit::UInt64
    PrivateCommitUsage::UInt64
    PeakPrivateCommitUsage::UInt64
    TotalCommitUsage::UInt64
end

const PME_CURRENT_VERSION  = 1
@enum PROCESS_MEMORY_EXHAUSTION_TYPE::Int32 PMETypeFailFastOnCommitFailure=0 PMETypeMax=1
const PROCESS_POWER_THROTTLING_CURRENT_VERSION  = 1

mutable struct PROCESS_POWER_THROTTLING_STATE
    Version::Culong
    ControlMask::Culong
    StateMask::Culong
end


mutable struct PROCESS_LEAP_SECOND_INFO
    Flags::Culong
    Reserved::Culong
end

function GetProcessShutdownParameters( lpdwLevel::Ptr{Culong}, lpdwFlags::Ptr{Culong} )::Cint
    ccall( (:GetProcessShutdownParameters, "kernel32"), stdcall, Cint,
        ( Ptr{Culong}, Ptr{Culong},  ),
        lpdwLevel, lpdwFlags )
end
function SetThreadDescription( hThread::Ptr{Cvoid}, lpThreadDescription::Ptr{Cwchar_t} )::Clong
    ccall( (:SetThreadDescription, "kernel32"), stdcall, Clong,
        ( Ptr{Cvoid}, Ptr{Cwchar_t},  ),
        hThread, lpThreadDescription )
end
function GetThreadDescription( hThread::Ptr{Cvoid}, ppszThreadDescription::Ptr{Cwchar_t} )::Clong
    ccall( (:GetThreadDescription, "kernel32"), stdcall, Clong,
        ( Ptr{Cvoid}, Ptr{Cwchar_t},  ),
        hThread, ppszThreadDescription )
end
const FILEOPENORD  = 1536
const MULTIFILEOPENORD  = 1537
const PRINTDLGORD  = 1538
const PRNSETUPDLGORD  = 1539
const FINDDLGORD  = 1540
const REPLACEDLGORD  = 1541
const FONTDLGORD  = 1542
const FORMATDLGORD31  = 1543
const FORMATDLGORD30  = 1544
const RUNDLGORD  = 1545
const PAGESETUPDLGORD  = 1546
const NEWFILEOPENORD  = 1547
const PRINTDLGEXORD  = 1549
const PAGESETUPDLGORDMOTIF  = 1550
const COLORMGMTDLGORD  = 1551
const NEWFILEOPENV2ORD  = 1552
const NEWFILEOPENV3ORD  = 1553
const NEWFORMATDLGWITHLINK  = 1591
const IDC_MANAGE_LINK  = 1592

mutable struct CRGB
    bRed::Cuchar
    bGreen::Cuchar
    bBlue::Cuchar
    bExtra::Cuchar
end

const VS_VERSION_INFO  = 1
const VS_USER_DEFINED  = 100

mutable struct VS_FIXEDFILEINFO
    dwSignature::Culong
    dwStrucVersion::Culong
    dwFileVersionMS::Culong
    dwFileVersionLS::Culong
    dwProductVersionMS::Culong
    dwProductVersionLS::Culong
    dwFileFlagsMask::Culong
    dwFileFlags::Culong
    dwFileOS::Culong
    dwFileType::Culong
    dwFileSubtype::Culong
    dwFileDateMS::Culong
    dwFileDateLS::Culong
end

const COLORREF = Culong

mutable struct RECT
    left::Culong
    top::Culong
    right::Culong
    bottom::Culong
end


mutable struct RECTL
    left::Culong
    top::Culong
    right::Culong
    bottom::Culong
end


mutable struct POINT
    x::Culong
    y::Culong
end


mutable struct POINTL
    x::Culong
    y::Culong
end


mutable struct SIZE
    cx::Culong
    cy::Culong
end

const SIZEL = SIZE

mutable struct POINTS
    x::Cshort
    y::Cshort
    y::Cshort
    x::Cshort
end

const APP_LOCAL_DEVICE_ID_SIZE  = 32
const DM_UPDATE  = 1
const DM_COPY  = 2
const DM_PROMPT  = 4
const DM_MODIFY  = 8
const DC_FIELDS  = 1
const DC_PAPERS  = 2
const DC_PAPERSIZE  = 3
const DC_MINEXTENT  = 4
const DC_MAXEXTENT  = 5
const DC_BINS  = 6
const DC_DUPLEX  = 7
const DC_SIZE  = 8
const DC_EXTRA  = 9
const DC_VERSION  = 10
const DC_DRIVER  = 11
const DC_BINNAMES  = 12
const DC_ENUMRESOLUTIONS  = 13
const DC_FILEDEPENDENCIES  = 14
const DC_TRUETYPE  = 15
const DC_PAPERNAMES  = 16
const DC_ORIENTATION  = 17
const DC_COPIES  = 18
function SetEnvironmentStringsW( NewEnvironment::Ptr{Cwchar_t} )::Cint
    ccall( (:SetEnvironmentStringsW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        NewEnvironment )
end
function GetStdHandle( nStdHandle::Culong )::Ptr{Cvoid}
    ccall( (:GetStdHandle, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong,  ),
        nStdHandle )
end
function SetStdHandle( nStdHandle::Culong, hHandle::Ptr{Cvoid} )::Cint
    ccall( (:SetStdHandle, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cvoid},  ),
        nStdHandle, hHandle )
end
function SetStdHandleEx( nStdHandle::Culong, hHandle::Ptr{Cvoid}, phPrevValue::Ptr{Ptr{Cvoid}} )::Cint
    ccall( (:SetStdHandleEx, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cvoid}, Ptr{Ptr{Cvoid}},  ),
        nStdHandle, hHandle, phPrevValue )
end
function GetCommandLineA(  )::Ptr{Cchar}
    ccall( (:GetCommandLineA, "kernel32"), stdcall, Ptr{Cchar},
        (  ),
         )
end
function GetCommandLineW(  )::Ptr{Cwchar_t}
    ccall( (:GetCommandLineW, "kernel32"), stdcall, Ptr{Cwchar_t},
        (  ),
         )
end
function GetEnvironmentStrings(  )::Ptr{Cchar}
    ccall( (:GetEnvironmentStrings, "kernel32"), stdcall, Ptr{Cchar},
        (  ),
         )
end
function GetEnvironmentStringsW(  )::Ptr{Cwchar_t}
    ccall( (:GetEnvironmentStringsW, "kernel32"), stdcall, Ptr{Cwchar_t},
        (  ),
         )
end
function FreeEnvironmentStringsA( penv::Ptr{Cchar} )::Cint
    ccall( (:FreeEnvironmentStringsA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        penv )
end
function FreeEnvironmentStringsW( penv::Ptr{Cwchar_t} )::Cint
    ccall( (:FreeEnvironmentStringsW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        penv )
end
function SetEnvironmentVariableA( lpName::Ptr{Cchar}, lpValue::Ptr{Cchar} )::Cint
    ccall( (:SetEnvironmentVariableA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar},  ),
        lpName, lpValue )
end
function SetEnvironmentVariableW( lpName::Ptr{Cwchar_t}, lpValue::Ptr{Cwchar_t} )::Cint
    ccall( (:SetEnvironmentVariableW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpName, lpValue )
end
function SetCurrentDirectoryA( lpPathName::Ptr{Cchar} )::Cint
    ccall( (:SetCurrentDirectoryA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpPathName )
end
function SetCurrentDirectoryW( lpPathName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetCurrentDirectoryW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpPathName )
end
function SearchPathW( lpPath::Ptr{Cwchar_t}, lpFileName::Ptr{Cwchar_t}, lpExtension::Ptr{Cwchar_t}, nBufferLength::Culong, lpBuffer::Ptr{Cwchar_t}, lpFilePart::Ptr{Cwchar_t} )::Culong
    ccall( (:SearchPathW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong, Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpPath, lpFileName, lpExtension, nBufferLength, lpBuffer, lpFilePart )
end
function SearchPathA( lpPath::Ptr{Cchar}, lpFileName::Ptr{Cchar}, lpExtension::Ptr{Cchar}, nBufferLength::Culong, lpBuffer::Ptr{Cchar}, lpFilePart::Ptr{Cchar} )::Culong
    ccall( (:SearchPathA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Culong, Ptr{Cchar}, Ptr{Cchar},  ),
        lpPath, lpFileName, lpExtension, nBufferLength, lpBuffer, lpFilePart )
end
function NeedCurrentDirectoryForExePathA( ExeName::Ptr{Cchar} )::Cint
    ccall( (:NeedCurrentDirectoryForExePathA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        ExeName )
end
function NeedCurrentDirectoryForExePathW( ExeName::Ptr{Cwchar_t} )::Cint
    ccall( (:NeedCurrentDirectoryForExePathW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        ExeName )
end
const CREATE_NEW  = 1
const CREATE_ALWAYS  = 2
const OPEN_EXISTING  = 3
const OPEN_ALWAYS  = 4
const TRUNCATE_EXISTING  = 5
function CompareFileTime( lpFileTime1::FILETIME, lpFileTime2::FILETIME )::Culong
    ccall( (:CompareFileTime, "kernel32"), stdcall, Culong,
        ( FILETIME, FILETIME,  ),
        lpFileTime1, lpFileTime2 )
end
function CreateDirectoryA( lpPathName::Ptr{Cchar}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Cint
    ccall( (:CreateDirectoryA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{SECURITY_ATTRIBUTES},  ),
        lpPathName, lpSecurityAttributes )
end
function CreateDirectoryW( lpPathName::Ptr{Cwchar_t}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Cint
    ccall( (:CreateDirectoryW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{SECURITY_ATTRIBUTES},  ),
        lpPathName, lpSecurityAttributes )
end
function CreateFileA( lpFileName::Ptr{Cchar}, dwDesiredAccess::Culong, dwShareMode::Culong, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}, dwCreationDisposition::Culong, dwFlagsAndAttributes::Culong, hTemplateFile::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:CreateFileA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Culong, Culong, Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Ptr{Cvoid},  ),
        lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile )
end
function CreateFileW( lpFileName::Ptr{Cwchar_t}, dwDesiredAccess::Culong, dwShareMode::Culong, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}, dwCreationDisposition::Culong, dwFlagsAndAttributes::Culong, hTemplateFile::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:CreateFileW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Culong, Culong, Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Ptr{Cvoid},  ),
        lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile )
end
function DefineDosDeviceW( dwFlags::Culong, lpDeviceName::Ptr{Cwchar_t}, lpTargetPath::Ptr{Cwchar_t} )::Cint
    ccall( (:DefineDosDeviceW, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        dwFlags, lpDeviceName, lpTargetPath )
end
function DeleteFileA( lpFileName::Ptr{Cchar} )::Cint
    ccall( (:DeleteFileA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpFileName )
end
function DeleteFileW( lpFileName::Ptr{Cwchar_t} )::Cint
    ccall( (:DeleteFileW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpFileName )
end
function DeleteVolumeMountPointW( lpszVolumeMountPoint::Ptr{Cwchar_t} )::Cint
    ccall( (:DeleteVolumeMountPointW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpszVolumeMountPoint )
end
function FileTimeToLocalFileTime( lpFileTime::FILETIME, lpLocalFileTime::Ptr{FILETIME} )::Cint
    ccall( (:FileTimeToLocalFileTime, "kernel32"), stdcall, Cint,
        ( FILETIME, Ptr{FILETIME},  ),
        lpFileTime, lpLocalFileTime )
end
function FindClose( hFindFile::Ptr{Cvoid} )::Cint
    ccall( (:FindClose, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFindFile )
end
function FindCloseChangeNotification( hChangeHandle::Ptr{Cvoid} )::Cint
    ccall( (:FindCloseChangeNotification, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hChangeHandle )
end
function FindFirstChangeNotificationA( lpPathName::Ptr{Cchar}, bWatchSubtree::Cint, dwNotifyFilter::Culong )::Ptr{Cvoid}
    ccall( (:FindFirstChangeNotificationA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Cint, Culong,  ),
        lpPathName, bWatchSubtree, dwNotifyFilter )
end
function FindFirstChangeNotificationW( lpPathName::Ptr{Cwchar_t}, bWatchSubtree::Cint, dwNotifyFilter::Culong )::Ptr{Cvoid}
    ccall( (:FindFirstChangeNotificationW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Cint, Culong,  ),
        lpPathName, bWatchSubtree, dwNotifyFilter )
end
function FindFirstFileA( lpFileName::Ptr{Cchar}, lpFindFileData::Ptr{WIN32_FIND_DATAA} )::Ptr{Cvoid}
    ccall( (:FindFirstFileA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Ptr{WIN32_FIND_DATAA},  ),
        lpFileName, lpFindFileData )
end
function FindFirstFileW( lpFileName::Ptr{Cwchar_t}, lpFindFileData::Ptr{WIN32_FIND_DATAW} )::Ptr{Cvoid}
    ccall( (:FindFirstFileW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Ptr{WIN32_FIND_DATAW},  ),
        lpFileName, lpFindFileData )
end
function FindNextChangeNotification( hChangeHandle::Ptr{Cvoid} )::Cint
    ccall( (:FindNextChangeNotification, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hChangeHandle )
end
function FindNextFileA( hFindFile::Ptr{Cvoid}, lpFindFileData::Ptr{WIN32_FIND_DATAA} )::Cint
    ccall( (:FindNextFileA, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{WIN32_FIND_DATAA},  ),
        hFindFile, lpFindFileData )
end
function FindNextFileW( hFindFile::Ptr{Cvoid}, lpFindFileData::Ptr{WIN32_FIND_DATAW} )::Cint
    ccall( (:FindNextFileW, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{WIN32_FIND_DATAW},  ),
        hFindFile, lpFindFileData )
end
function FindVolumeClose( hFindVolume::Ptr{Cvoid} )::Cint
    ccall( (:FindVolumeClose, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFindVolume )
end
function FlushFileBuffers( hFile::Ptr{Cvoid} )::Cint
    ccall( (:FlushFileBuffers, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFile )
end
function GetDiskFreeSpaceA( lpRootPathName::Ptr{Cchar}, lpSectorsPerCluster::Ptr{Culong}, lpBytesPerSector::Ptr{Culong}, lpNumberOfFreeClusters::Ptr{Culong}, lpTotalNumberOfClusters::Ptr{Culong} )::Cint
    ccall( (:GetDiskFreeSpaceA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong},  ),
        lpRootPathName, lpSectorsPerCluster, lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters )
end
function GetDiskFreeSpaceW( lpRootPathName::Ptr{Cwchar_t}, lpSectorsPerCluster::Ptr{Culong}, lpBytesPerSector::Ptr{Culong}, lpNumberOfFreeClusters::Ptr{Culong}, lpTotalNumberOfClusters::Ptr{Culong} )::Cint
    ccall( (:GetDiskFreeSpaceW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong},  ),
        lpRootPathName, lpSectorsPerCluster, lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters )
end
function GetDriveTypeA( lpRootPathName::Ptr{Cchar} )::UInt32
    ccall( (:GetDriveTypeA, "kernel32"), stdcall, UInt32,
        ( Ptr{Cchar},  ),
        lpRootPathName )
end
function GetDriveTypeW( lpRootPathName::Ptr{Cwchar_t} )::UInt32
    ccall( (:GetDriveTypeW, "kernel32"), stdcall, UInt32,
        ( Ptr{Cwchar_t},  ),
        lpRootPathName )
end

mutable struct WIN32_FILE_ATTRIBUTE_DATA
    dwFileAttributes::Culong
    ftCreationTime::FILETIME
    ftLastAccessTime::FILETIME
    ftLastWriteTime::FILETIME
    nFileSizeHigh::Culong
    nFileSizeLow::Culong
end

function GetFileAttributesA( lpFileName::Ptr{Cchar} )::Culong
    ccall( (:GetFileAttributesA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar},  ),
        lpFileName )
end
function GetFileAttributesW( lpFileName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetFileAttributesW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t},  ),
        lpFileName )
end

mutable struct BY_HANDLE_FILE_INFORMATION
    dwFileAttributes::Culong
    ftCreationTime::FILETIME
    ftLastAccessTime::FILETIME
    ftLastWriteTime::FILETIME
    dwVolumeSerialNumber::Culong
    nFileSizeHigh::Culong
    nFileSizeLow::Culong
    nNumberOfLinks::Culong
    nFileIndexHigh::Culong
    nFileIndexLow::Culong
end

function GetFileInformationByHandle( hFile::Ptr{Cvoid}, lpFileInformation::Ptr{BY_HANDLE_FILE_INFORMATION} )::Cint
    ccall( (:GetFileInformationByHandle, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{BY_HANDLE_FILE_INFORMATION},  ),
        hFile, lpFileInformation )
end
function GetFileSize( hFile::Ptr{Cvoid}, lpFileSizeHigh::Ptr{Culong} )::Culong
    ccall( (:GetFileSize, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hFile, lpFileSizeHigh )
end
function GetFileType( hFile::Ptr{Cvoid} )::Culong
    ccall( (:GetFileType, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        hFile )
end
function GetFileTime( hFile::Ptr{Cvoid}, lpCreationTime::Ptr{FILETIME}, lpLastAccessTime::Ptr{FILETIME}, lpLastWriteTime::Ptr{FILETIME} )::Cint
    ccall( (:GetFileTime, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{FILETIME}, Ptr{FILETIME}, Ptr{FILETIME},  ),
        hFile, lpCreationTime, lpLastAccessTime, lpLastWriteTime )
end
function GetLogicalDrives(  )::Culong
    ccall( (:GetLogicalDrives, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function GetLogicalDriveStringsW( nBufferLength::Culong, lpBuffer::Ptr{Cwchar_t} )::Culong
    ccall( (:GetLogicalDriveStringsW, "kernel32"), stdcall, Culong,
        ( Culong, Ptr{Cwchar_t},  ),
        nBufferLength, lpBuffer )
end
function LocalFileTimeToFileTime( lpLocalFileTime::FILETIME, lpFileTime::Ptr{FILETIME} )::Cint
    ccall( (:LocalFileTimeToFileTime, "kernel32"), stdcall, Cint,
        ( FILETIME, Ptr{FILETIME},  ),
        lpLocalFileTime, lpFileTime )
end
function LockFile( hFile::Ptr{Cvoid}, dwFileOffsetLow::Culong, dwFileOffsetHigh::Culong, nNumberOfBytesToLockLow::Culong, nNumberOfBytesToLockHigh::Culong )::Cint
    ccall( (:LockFile, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Culong, Culong, Culong,  ),
        hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh )
end
function QueryDosDeviceW( lpDeviceName::Ptr{Cwchar_t}, lpTargetPath::Ptr{Cwchar_t}, ucchMax::Culong )::Culong
    ccall( (:QueryDosDeviceW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong,  ),
        lpDeviceName, lpTargetPath, ucchMax )
end
function RemoveDirectoryA( lpPathName::Ptr{Cchar} )::Cint
    ccall( (:RemoveDirectoryA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpPathName )
end
function RemoveDirectoryW( lpPathName::Ptr{Cwchar_t} )::Cint
    ccall( (:RemoveDirectoryW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpPathName )
end
function SetEndOfFile( hFile::Ptr{Cvoid} )::Cint
    ccall( (:SetEndOfFile, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFile )
end
function SetFileAttributesA( lpFileName::Ptr{Cchar}, dwFileAttributes::Culong )::Cint
    ccall( (:SetFileAttributesA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Culong,  ),
        lpFileName, dwFileAttributes )
end
function SetFileAttributesW( lpFileName::Ptr{Cwchar_t}, dwFileAttributes::Culong )::Cint
    ccall( (:SetFileAttributesW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Culong,  ),
        lpFileName, dwFileAttributes )
end
function SetFileTime( hFile::Ptr{Cvoid}, lpCreationTime::FILETIME, lpLastAccessTime::FILETIME, lpLastWriteTime::FILETIME )::Cint
    ccall( (:SetFileTime, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, FILETIME, FILETIME, FILETIME,  ),
        hFile, lpCreationTime, lpLastAccessTime, lpLastWriteTime )
end
function SetFileValidData( hFile::Ptr{Cvoid}, ValidDataLength::Int64 )::Cint
    ccall( (:SetFileValidData, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Int64,  ),
        hFile, ValidDataLength )
end
function UnlockFile( hFile::Ptr{Cvoid}, dwFileOffsetLow::Culong, dwFileOffsetHigh::Culong, nNumberOfBytesToUnlockLow::Culong, nNumberOfBytesToUnlockHigh::Culong )::Cint
    ccall( (:UnlockFile, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Culong, Culong, Culong,  ),
        hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh )
end
function GetTempPathW( nBufferLength::Culong, lpBuffer::Ptr{Cwchar_t} )::Culong
    ccall( (:GetTempPathW, "kernel32"), stdcall, Culong,
        ( Culong, Ptr{Cwchar_t},  ),
        nBufferLength, lpBuffer )
end

mutable struct CREATEFILE2_EXTENDED_PARAMETERS
    dwSize::Culong
    dwFileAttributes::Culong
    dwFileFlags::Culong
    dwSecurityQosFlags::Culong
    lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}
    hTemplateFile::Ptr{Cvoid}
end

function CreateFile2( lpFileName::Ptr{Cwchar_t}, dwDesiredAccess::Culong, dwShareMode::Culong, dwCreationDisposition::Culong, pCreateExParams::Ptr{CREATEFILE2_EXTENDED_PARAMETERS} )::Ptr{Cvoid}
    ccall( (:CreateFile2, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Culong, Culong, Culong, Ptr{CREATEFILE2_EXTENDED_PARAMETERS},  ),
        lpFileName, dwDesiredAccess, dwShareMode, dwCreationDisposition, pCreateExParams )
end
function SetFileIoOverlappedRange( FileHandle::Ptr{Cvoid}, OverlappedRangeStart::Ptr{UInt8}, Length::Culong )::Cint
    ccall( (:SetFileIoOverlappedRange, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{UInt8}, Culong,  ),
        FileHandle, OverlappedRangeStart, Length )
end
function GetCompressedFileSizeA( lpFileName::Ptr{Cchar}, lpFileSizeHigh::Ptr{Culong} )::Culong
    ccall( (:GetCompressedFileSizeA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Culong},  ),
        lpFileName, lpFileSizeHigh )
end
function GetCompressedFileSizeW( lpFileName::Ptr{Cwchar_t}, lpFileSizeHigh::Ptr{Culong} )::Culong
    ccall( (:GetCompressedFileSizeW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Culong},  ),
        lpFileName, lpFileSizeHigh )
end
@enum STREAM_INFO_LEVELS::Int32 FindStreamInfoStandard=0 FindStreamInfoMaxInfoLevel=1
function AreFileApisANSI(  )::Cint
    ccall( (:AreFileApisANSI, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function GetTempPathA( nBufferLength::Culong, lpBuffer::Ptr{Cchar} )::Culong
    ccall( (:GetTempPathA, "kernel32"), stdcall, Culong,
        ( Culong, Ptr{Cchar},  ),
        nBufferLength, lpBuffer )
end
function SetFileApisToOEM(  )::Cvoid
    ccall( (:SetFileApisToOEM, "kernel32"), stdcall, Cvoid,
        (  ),
         )
end
function SetFileApisToANSI(  )::Cvoid
    ccall( (:SetFileApisToANSI, "kernel32"), stdcall, Cvoid,
        (  ),
         )
end
function IsDebuggerPresent(  )::Cint
    ccall( (:IsDebuggerPresent, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function DebugBreak(  )::Cvoid
    ccall( (:DebugBreak, "kernel32"), stdcall, Cvoid,
        (  ),
         )
end
function OutputDebugStringA( lpOutputString::Ptr{Cchar} )::Cvoid
    ccall( (:OutputDebugStringA, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cchar},  ),
        lpOutputString )
end
function OutputDebugStringW( lpOutputString::Ptr{Cwchar_t} )::Cvoid
    ccall( (:OutputDebugStringW, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cwchar_t},  ),
        lpOutputString )
end
function ContinueDebugEvent( dwProcessId::Culong, dwThreadId::Culong, dwContinueStatus::Culong )::Cint
    ccall( (:ContinueDebugEvent, "kernel32"), stdcall, Cint,
        ( Culong, Culong, Culong,  ),
        dwProcessId, dwThreadId, dwContinueStatus )
end
function DebugActiveProcess( dwProcessId::Culong )::Cint
    ccall( (:DebugActiveProcess, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        dwProcessId )
end
function DebugActiveProcessStop( dwProcessId::Culong )::Cint
    ccall( (:DebugActiveProcessStop, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        dwProcessId )
end
function EncodePointer( pPtr::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:EncodePointer, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid},  ),
        pPtr )
end
function DecodePointer( pPtr::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:DecodePointer, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid},  ),
        pPtr )
end
function EncodeSystemPointer( pPtr::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:EncodeSystemPointer, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid},  ),
        pPtr )
end
function DecodeSystemPointer( pPtr::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:DecodeSystemPointer, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid},  ),
        pPtr )
end
function EncodeRemotePointer( ProcessHandle::Ptr{Cvoid}, pPtr::Ptr{Cvoid}, EncodedpPtr::Ptr{Cvoid} )::Clong
    ccall( (:EncodeRemotePointer, "kernel32"), stdcall, Clong,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid},  ),
        ProcessHandle, pPtr, EncodedpPtr )
end
function DecodeRemotePointer( ProcessHandle::Ptr{Cvoid}, pPtr::Ptr{Cvoid}, DecodedpPtr::Ptr{Cvoid} )::Clong
    ccall( (:DecodeRemotePointer, "kernel32"), stdcall, Clong,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid},  ),
        ProcessHandle, pPtr, DecodedpPtr )
end
function Beep( dwFreq::Culong, dwDuration::Culong )::Cint
    ccall( (:Beep, "kernel32"), stdcall, Cint,
        ( Culong, Culong,  ),
        dwFreq, dwDuration )
end
function CompareObjectHandles( hFirstObjectHandle::Ptr{Cvoid}, hSecondObjectHandle::Ptr{Cvoid} )::Cint
    ccall( (:CompareObjectHandles, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid},  ),
        hFirstObjectHandle, hSecondObjectHandle )
end
function GetHandleInformation( hObject::Ptr{Cvoid}, lpdwFlags::Ptr{Culong} )::Cint
    ccall( (:GetHandleInformation, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hObject, lpdwFlags )
end
function SetHandleInformation( hObject::Ptr{Cvoid}, dwMask::Culong, dwFlags::Culong )::Cint
    ccall( (:SetHandleInformation, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Culong,  ),
        hObject, dwMask, dwFlags )
end
function GetLastError(  )::Culong
    ccall( (:GetLastError, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function SetLastError( dwErrCode::Culong )::Cvoid
    ccall( (:SetLastError, "kernel32"), stdcall, Cvoid,
        ( Culong,  ),
        dwErrCode )
end
function GetErrorMode(  )::UInt32
    ccall( (:GetErrorMode, "kernel32"), stdcall, UInt32,
        (  ),
         )
end
function SetErrorMode( uMode::UInt32 )::UInt32
    ccall( (:SetErrorMode, "kernel32"), stdcall, UInt32,
        ( UInt32,  ),
        uMode )
end
function RemoveVectoredExceptionHandler( Handle::Ptr{Cvoid} )::Culong
    ccall( (:RemoveVectoredExceptionHandler, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        Handle )
end
function RemoveVectoredContinueHandler( Handle::Ptr{Cvoid} )::Culong
    ccall( (:RemoveVectoredContinueHandler, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        Handle )
end
function RestoreLastError( dwErrCode::Culong )::Cvoid
    ccall( (:RestoreLastError, "kernel32"), stdcall, Cvoid,
        ( Culong,  ),
        dwErrCode )
end
function FatalAppExitA( uAction::UInt32, lpMessageText::Ptr{Cchar} )::Cvoid
    ccall( (:FatalAppExitA, "kernel32"), stdcall, Cvoid,
        ( UInt32, Ptr{Cchar},  ),
        uAction, lpMessageText )
end
function FatalAppExitW( uAction::UInt32, lpMessageText::Ptr{Cwchar_t} )::Cvoid
    ccall( (:FatalAppExitW, "kernel32"), stdcall, Cvoid,
        ( UInt32, Ptr{Cwchar_t},  ),
        uAction, lpMessageText )
end
function GetThreadErrorMode(  )::Culong
    ccall( (:GetThreadErrorMode, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function SetThreadErrorMode( dwNewMode::Culong, lpOldMode::Ptr{Culong} )::Cint
    ccall( (:SetThreadErrorMode, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Culong},  ),
        dwNewMode, lpOldMode )
end
function TerminateProcessOnMemoryExhaustion( FailedAllocationSize::UInt64 )::Cvoid
    ccall( (:TerminateProcessOnMemoryExhaustion, "kernel32"), stdcall, Cvoid,
        ( UInt64,  ),
        FailedAllocationSize )
end
function FlsGetValue( dwFlsIndex::Culong )::Ptr{Cvoid}
    ccall( (:FlsGetValue, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong,  ),
        dwFlsIndex )
end
function FlsSetValue( dwFlsIndex::Culong, lpFlsData::Ptr{Cvoid} )::Cint
    ccall( (:FlsSetValue, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cvoid},  ),
        dwFlsIndex, lpFlsData )
end
function FlsFree( dwFlsIndex::Culong )::Cint
    ccall( (:FlsFree, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        dwFlsIndex )
end
function IsThreadAFiber(  )::Cint
    ccall( (:IsThreadAFiber, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function CreatePipe( hReadPipe::Ptr{Ptr{Cvoid}}, hWritePipe::Ptr{Ptr{Cvoid}}, lpPipeAttributes::Ptr{SECURITY_ATTRIBUTES}, nSize::Culong )::Cint
    ccall( (:CreatePipe, "kernel32"), stdcall, Cint,
        ( Ptr{Ptr{Cvoid}}, Ptr{Ptr{Cvoid}}, Ptr{SECURITY_ATTRIBUTES}, Culong,  ),
        hReadPipe, hWritePipe, lpPipeAttributes, nSize )
end
function DisconnectNamedPipe( hNamedPipe::Ptr{Cvoid} )::Cint
    ccall( (:DisconnectNamedPipe, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hNamedPipe )
end
function SetNamedPipeHandleState( hNamedPipe::Ptr{Cvoid}, lpMode::Ptr{Culong}, lpMaxCollectionCount::Ptr{Culong}, lpCollectDataTimeout::Ptr{Culong} )::Cint
    ccall( (:SetNamedPipeHandleState, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong},  ),
        hNamedPipe, lpMode, lpMaxCollectionCount, lpCollectDataTimeout )
end
function CreateNamedPipeW( lpName::Ptr{Cwchar_t}, dwOpenMode::Culong, dwPipeMode::Culong, nMaxInstances::Culong, nOutBufferSize::Culong, nInBufferSize::Culong, nDefaultTimeOut::Culong, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Ptr{Cvoid}
    ccall( (:CreateNamedPipeW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Culong, Culong, Culong, Culong, Culong, Culong, Ptr{SECURITY_ATTRIBUTES},  ),
        lpName, dwOpenMode, dwPipeMode, nMaxInstances, nOutBufferSize, nInBufferSize, nDefaultTimeOut, lpSecurityAttributes )
end
function WaitNamedPipeW( lpNamedPipeName::Ptr{Cwchar_t}, nTimeOut::Culong )::Cint
    ccall( (:WaitNamedPipeW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Culong,  ),
        lpNamedPipeName, nTimeOut )
end
function GetNamedPipeClientComputerNameW( Pipe::Ptr{Cvoid}, ClientComputerName::Ptr{Cwchar_t}, ClientComputerNameLength::Culong )::Cint
    ccall( (:GetNamedPipeClientComputerNameW, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cwchar_t}, Culong,  ),
        Pipe, ClientComputerName, ClientComputerNameLength )
end
function GetNamedPipeInfo( hNamedPipe::Ptr{Cvoid}, lpFlags::Ptr{Culong}, lpOutBufferSize::Ptr{Culong}, lpInBufferSize::Ptr{Culong}, lpMaxInstances::Ptr{Culong} )::Cint
    ccall( (:GetNamedPipeInfo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong},  ),
        hNamedPipe, lpFlags, lpOutBufferSize, lpInBufferSize, lpMaxInstances )
end
function QueryPerformanceCounter( lpPerformanceCount::Int64 )::Cint
    ccall( (:QueryPerformanceCounter, "kernel32"), stdcall, Cint,
        ( Int64,  ),
        lpPerformanceCount )
end
function QueryPerformanceFrequency( lpFrequency::Int64 )::Cint
    ccall( (:QueryPerformanceFrequency, "kernel32"), stdcall, Cint,
        ( Int64,  ),
        lpFrequency )
end

mutable struct HEAP_SUMMARY
    cb::Culong
    cbAllocated::UInt64
    cbCommitted::UInt64
    cbReserved::UInt64
    cbMaxReserve::UInt64
end

function HeapCreate( flOptions::Culong, dwInitialSize::UInt64, dwMaximumSize::UInt64 )::Ptr{Cvoid}
    ccall( (:HeapCreate, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, UInt64, UInt64,  ),
        flOptions, dwInitialSize, dwMaximumSize )
end
function HeapDestroy( hHeap::Ptr{Cvoid} )::Cint
    ccall( (:HeapDestroy, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hHeap )
end
function HeapSize( hHeap::Ptr{Cvoid}, dwFlags::Culong, lpMem::Ptr{Cvoid} )::UInt64
    ccall( (:HeapSize, "kernel32"), stdcall, UInt64,
        ( Ptr{Cvoid}, Culong, Ptr{Cvoid},  ),
        hHeap, dwFlags, lpMem )
end
function GetProcessHeap(  )::Ptr{Cvoid}
    ccall( (:GetProcessHeap, "kernel32"), stdcall, Ptr{Cvoid},
        (  ),
         )
end
function HeapCompact( hHeap::Ptr{Cvoid}, dwFlags::Culong )::UInt64
    ccall( (:HeapCompact, "kernel32"), stdcall, UInt64,
        ( Ptr{Cvoid}, Culong,  ),
        hHeap, dwFlags )
end
function HeapValidate( hHeap::Ptr{Cvoid}, dwFlags::Culong, lpMem::Ptr{Cvoid} )::Cint
    ccall( (:HeapValidate, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Ptr{Cvoid},  ),
        hHeap, dwFlags, lpMem )
end
function HeapLock( hHeap::Ptr{Cvoid} )::Cint
    ccall( (:HeapLock, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hHeap )
end
function HeapUnlock( hHeap::Ptr{Cvoid} )::Cint
    ccall( (:HeapUnlock, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hHeap )
end
function CreateIoCompletionPort( FileHandle::Ptr{Cvoid}, ExistingCompletionPort::Ptr{Cvoid}, CompletionKey::Int, NumberOfConcurrentThreads::Culong )::Ptr{Cvoid}
    ccall( (:CreateIoCompletionPort, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{Cvoid}, Int, Culong,  ),
        FileHandle, ExistingCompletionPort, CompletionKey, NumberOfConcurrentThreads )
end
function CancelIo( hFile::Ptr{Cvoid} )::Cint
    ccall( (:CancelIo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFile )
end
function CancelSynchronousIo( hThread::Ptr{Cvoid} )::Cint
    ccall( (:CancelSynchronousIo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hThread )
end
function SetEvent( hEvent::Ptr{Cvoid} )::Cint
    ccall( (:SetEvent, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hEvent )
end
function ResetEvent( hEvent::Ptr{Cvoid} )::Cint
    ccall( (:ResetEvent, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hEvent )
end
function ReleaseSemaphore( hSemaphore::Ptr{Cvoid}, lReleaseCount::Culong, lpPreviousCount::Ptr{Culong} )::Cint
    ccall( (:ReleaseSemaphore, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Ptr{Culong},  ),
        hSemaphore, lReleaseCount, lpPreviousCount )
end
function ReleaseMutex( hMutex::Ptr{Cvoid} )::Cint
    ccall( (:ReleaseMutex, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hMutex )
end
function WaitForSingleObject( hHandle::Ptr{Cvoid}, dwMilliseconds::Culong )::Culong
    ccall( (:WaitForSingleObject, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong,  ),
        hHandle, dwMilliseconds )
end
function SleepEx( dwMilliseconds::Culong, bAlertable::Cint )::Culong
    ccall( (:SleepEx, "kernel32"), stdcall, Culong,
        ( Culong, Cint,  ),
        dwMilliseconds, bAlertable )
end
function WaitForSingleObjectEx( hHandle::Ptr{Cvoid}, dwMilliseconds::Culong, bAlertable::Cint )::Culong
    ccall( (:WaitForSingleObjectEx, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Cint,  ),
        hHandle, dwMilliseconds, bAlertable )
end
function CreateMutexA( lpMutexAttributes::Ptr{SECURITY_ATTRIBUTES}, bInitialOwner::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreateMutexA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Cint, Ptr{Cchar},  ),
        lpMutexAttributes, bInitialOwner, lpName )
end
function CreateMutexW( lpMutexAttributes::Ptr{SECURITY_ATTRIBUTES}, bInitialOwner::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreateMutexW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Cint, Ptr{Cwchar_t},  ),
        lpMutexAttributes, bInitialOwner, lpName )
end
function OpenMutexW( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenMutexW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function CreateEventA( lpEventAttributes::Ptr{SECURITY_ATTRIBUTES}, bManualReset::Cint, bInitialState::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreateEventA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Cint, Cint, Ptr{Cchar},  ),
        lpEventAttributes, bManualReset, bInitialState, lpName )
end
function CreateEventW( lpEventAttributes::Ptr{SECURITY_ATTRIBUTES}, bManualReset::Cint, bInitialState::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreateEventW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Cint, Cint, Ptr{Cwchar_t},  ),
        lpEventAttributes, bManualReset, bInitialState, lpName )
end
function OpenEventA( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenEventA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cchar},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function OpenEventW( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenEventW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function OpenSemaphoreW( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenSemaphoreW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function OpenWaitableTimerW( dwDesiredAccess::Culong, bInheritHandle::Cint, lpTimerName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenWaitableTimerW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        dwDesiredAccess, bInheritHandle, lpTimerName )
end
function CancelWaitableTimer( hTimer::Ptr{Cvoid} )::Cint
    ccall( (:CancelWaitableTimer, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hTimer )
end
function CreateMutexExA( lpMutexAttributes::Ptr{SECURITY_ATTRIBUTES}, lpName::Ptr{Cchar}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateMutexExA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cchar}, Culong, Culong,  ),
        lpMutexAttributes, lpName, dwFlags, dwDesiredAccess )
end
function CreateMutexExW( lpMutexAttributes::Ptr{SECURITY_ATTRIBUTES}, lpName::Ptr{Cwchar_t}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateMutexExW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cwchar_t}, Culong, Culong,  ),
        lpMutexAttributes, lpName, dwFlags, dwDesiredAccess )
end
function CreateEventExA( lpEventAttributes::Ptr{SECURITY_ATTRIBUTES}, lpName::Ptr{Cchar}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateEventExA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cchar}, Culong, Culong,  ),
        lpEventAttributes, lpName, dwFlags, dwDesiredAccess )
end
function CreateEventExW( lpEventAttributes::Ptr{SECURITY_ATTRIBUTES}, lpName::Ptr{Cwchar_t}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateEventExW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cwchar_t}, Culong, Culong,  ),
        lpEventAttributes, lpName, dwFlags, dwDesiredAccess )
end
function CreateSemaphoreExW( lpSemaphoreAttributes::Ptr{SECURITY_ATTRIBUTES}, lInitialCount::Culong, lMaximumCount::Culong, lpName::Ptr{Cwchar_t}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateSemaphoreExW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Ptr{Cwchar_t}, Culong, Culong,  ),
        lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName, dwFlags, dwDesiredAccess )
end
function CreateWaitableTimerExW( lpTimerAttributes::Ptr{SECURITY_ATTRIBUTES}, lpTimerName::Ptr{Cwchar_t}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateWaitableTimerExW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cwchar_t}, Culong, Culong,  ),
        lpTimerAttributes, lpTimerName, dwFlags, dwDesiredAccess )
end
function Sleep( dwMilliseconds::Culong )::Cvoid
    ccall( (:Sleep, "kernel32"), stdcall, Cvoid,
        ( Culong,  ),
        dwMilliseconds )
end
function SignalObjectAndWait( hObjectToSignal::Ptr{Cvoid}, hObjectToWaitOn::Ptr{Cvoid}, dwMilliseconds::Culong, bAlertable::Cint )::Culong
    ccall( (:SignalObjectAndWait, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Culong, Cint,  ),
        hObjectToSignal, hObjectToWaitOn, dwMilliseconds, bAlertable )
end
function CreateSemaphoreW( lpSemaphoreAttributes::Ptr{SECURITY_ATTRIBUTES}, lInitialCount::Culong, lMaximumCount::Culong, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreateSemaphoreW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Ptr{Cwchar_t},  ),
        lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName )
end
function CreateWaitableTimerW( lpTimerAttributes::Ptr{SECURITY_ATTRIBUTES}, bManualReset::Cint, lpTimerName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreateWaitableTimerW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Cint, Ptr{Cwchar_t},  ),
        lpTimerAttributes, bManualReset, lpTimerName )
end

mutable struct MEMORYSTATUSEX
    dwLength::Culong
    dwMemoryLoad::Culong
    ullTotalPhys::UInt64
    ullAvailPhys::UInt64
    ullTotalPageFile::UInt64
    ullAvailPageFile::UInt64
    ullTotalVirtual::UInt64
    ullAvailVirtual::UInt64
    ullAvailExtendedVirtual::UInt64
end

function GlobalMemoryStatusEx( lpBuffer::Ptr{MEMORYSTATUSEX} )::Cint
    ccall( (:GlobalMemoryStatusEx, "kernel32"), stdcall, Cint,
        ( Ptr{MEMORYSTATUSEX},  ),
        lpBuffer )
end
function GetSystemTime( lpSystemTime::Ptr{SYSTEMTIME} )::Cvoid
    ccall( (:GetSystemTime, "kernel32"), stdcall, Cvoid,
        ( Ptr{SYSTEMTIME},  ),
        lpSystemTime )
end
function GetSystemTimeAsFileTime( lpSystemTimeAsFileTime::Ptr{FILETIME} )::Cvoid
    ccall( (:GetSystemTimeAsFileTime, "kernel32"), stdcall, Cvoid,
        ( Ptr{FILETIME},  ),
        lpSystemTimeAsFileTime )
end
function GetLocalTime( lpSystemTime::Ptr{SYSTEMTIME} )::Cvoid
    ccall( (:GetLocalTime, "kernel32"), stdcall, Cvoid,
        ( Ptr{SYSTEMTIME},  ),
        lpSystemTime )
end
function IsUserCetAvailableInEnvironment( UserCetEnvironment::Culong )::Cint
    ccall( (:IsUserCetAvailableInEnvironment, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        UserCetEnvironment )
end
function SetLocalTime( lpSystemTime::SYSTEMTIME )::Cint
    ccall( (:SetLocalTime, "kernel32"), stdcall, Cint,
        ( SYSTEMTIME,  ),
        lpSystemTime )
end
function GetTickCount(  )::Culong
    ccall( (:GetTickCount, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function GetTickCount64(  )::UInt64
    ccall( (:GetTickCount64, "kernel32"), stdcall, UInt64,
        (  ),
         )
end
@enum COMPUTER_NAME_FORMAT::Int32 ComputerNameNetBIOS=0 ComputerNameDnsHostname=1 ComputerNameDnsDomain=2 ComputerNameDnsFullyQualified=3 ComputerNamePhysicalNetBIOS=4 ComputerNamePhysicalDnsHostname=5 ComputerNamePhysicalDnsDomain=6 ComputerNamePhysicalDnsFullyQualified=7 ComputerNameMax=8
function SetSystemTime( lpSystemTime::SYSTEMTIME )::Cint
    ccall( (:SetSystemTime, "kernel32"), stdcall, Cint,
        ( SYSTEMTIME,  ),
        lpSystemTime )
end
function GetSystemTimePreciseAsFileTime( lpSystemTimeAsFileTime::Ptr{FILETIME} )::Cvoid
    ccall( (:GetSystemTimePreciseAsFileTime, "kernel32"), stdcall, Cvoid,
        ( Ptr{FILETIME},  ),
        lpSystemTimeAsFileTime )
end
function GetProductInfo( dwOSMajorVersion::Culong, dwOSMinorVersion::Culong, dwSpMajorVersion::Culong, dwSpMinorVersion::Culong, pdwReturnedProductType::Ptr{Culong} )::Cint
    ccall( (:GetProductInfo, "kernel32"), stdcall, Cint,
        ( Culong, Culong, Culong, Culong, Ptr{Culong},  ),
        dwOSMajorVersion, dwOSMinorVersion, dwSpMajorVersion, dwSpMinorVersion, pdwReturnedProductType )
end
function GetOsSafeBootMode( Flags::Ptr{Culong} )::Cint
    ccall( (:GetOsSafeBootMode, "kernel32"), stdcall, Cint,
        ( Ptr{Culong},  ),
        Flags )
end
function InstallELAMCertificateInfo( ELAMFile::Ptr{Cvoid} )::Cint
    ccall( (:InstallELAMCertificateInfo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        ELAMFile )
end
function SetComputerNameA( lpComputerName::Ptr{Cchar} )::Cint
    ccall( (:SetComputerNameA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpComputerName )
end
function SetComputerNameW( lpComputerName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetComputerNameW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpComputerName )
end
function CreateFileMappingW( hFile::Ptr{Cvoid}, lpFileMappingAttributes::Ptr{SECURITY_ATTRIBUTES}, flProtect::Culong, dwMaximumSizeHigh::Culong, dwMaximumSizeLow::Culong, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreateFileMappingW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Culong, Ptr{Cwchar_t},  ),
        hFile, lpFileMappingAttributes, flProtect, dwMaximumSizeHigh, dwMaximumSizeLow, lpName )
end
function OpenFileMappingW( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenFileMappingW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function FlushViewOfFile( lpBaseAddress::Ptr{Cvoid}, dwNumberOfBytesToFlush::UInt64 )::Cint
    ccall( (:FlushViewOfFile, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt64,  ),
        lpBaseAddress, dwNumberOfBytesToFlush )
end
function UnmapViewOfFile( lpBaseAddress::Ptr{Cvoid} )::Cint
    ccall( (:UnmapViewOfFile, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        lpBaseAddress )
end
function GetLargePageMinimum(  )::UInt64
    ccall( (:GetLargePageMinimum, "kernel32"), stdcall, UInt64,
        (  ),
         )
end
function SetProcessWorkingSetSizeEx( hProcess::Ptr{Cvoid}, dwMinimumWorkingSetSize::UInt64, dwMaximumWorkingSetSize::UInt64, Flags::Culong )::Cint
    ccall( (:SetProcessWorkingSetSizeEx, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt64, UInt64, Culong,  ),
        hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize, Flags )
end
function VirtualLock( lpAddress::Ptr{Cvoid}, dwSize::UInt64 )::Cint
    ccall( (:VirtualLock, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt64,  ),
        lpAddress, dwSize )
end
function VirtualUnlock( lpAddress::Ptr{Cvoid}, dwSize::UInt64 )::Cint
    ccall( (:VirtualUnlock, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt64,  ),
        lpAddress, dwSize )
end
function ResetWriteWatch( lpBaseAddress::Ptr{Cvoid}, dwRegionSize::UInt64 )::UInt32
    ccall( (:ResetWriteWatch, "kernel32"), stdcall, UInt32,
        ( Ptr{Cvoid}, UInt64,  ),
        lpBaseAddress, dwRegionSize )
end
@enum MEMORY_RESOURCE_NOTIFICATION_TYPE::Int32 LowMemoryResourceNotification=0 HighMemoryResourceNotification=1
function SetSystemFileCacheSize( MinimumFileCacheSize::UInt64, MaximumFileCacheSize::UInt64, Flags::Culong )::Cint
    ccall( (:SetSystemFileCacheSize, "kernel32"), stdcall, Cint,
        ( UInt64, UInt64, Culong,  ),
        MinimumFileCacheSize, MaximumFileCacheSize, Flags )
end
function CreateFileMappingNumaW( hFile::Ptr{Cvoid}, lpFileMappingAttributes::Ptr{SECURITY_ATTRIBUTES}, flProtect::Culong, dwMaximumSizeHigh::Culong, dwMaximumSizeLow::Culong, lpName::Ptr{Cwchar_t}, nndPreferred::Culong )::Ptr{Cvoid}
    ccall( (:CreateFileMappingNumaW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Culong, Ptr{Cwchar_t}, Culong,  ),
        hFile, lpFileMappingAttributes, flProtect, dwMaximumSizeHigh, dwMaximumSizeLow, lpName, nndPreferred )
end

mutable struct WIN32_MEMORY_RANGE_ENTRY
    VirtualAddress::Ptr{Cvoid}
    NumberOfBytes::UInt64
end

function UnmapViewOfFileEx( BaseAddress::Ptr{Cvoid}, UnmapFlags::Culong )::Cint
    ccall( (:UnmapViewOfFileEx, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        BaseAddress, UnmapFlags )
end
function OpenFileMappingFromApp( DesiredAccess::Culong, InheritHandle::Cint, Name::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenFileMappingFromApp, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        DesiredAccess, InheritHandle, Name )
end
function UnmapViewOfFile2( Process::Ptr{Cvoid}, BaseAddress::Ptr{Cvoid}, UnmapFlags::Culong )::Cint
    ccall( (:UnmapViewOfFile2, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Culong,  ),
        Process, BaseAddress, UnmapFlags )
end
function VirtualUnlockEx( Process::Ptr{Cvoid}, Address::Ptr{Cvoid}, Size::UInt64 )::Cint
    ccall( (:VirtualUnlockEx, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid}, UInt64,  ),
        Process, Address, Size )
end
function UnregisterWaitEx( WaitHandle::Ptr{Cvoid}, CompletionEvent::Ptr{Cvoid} )::Cint
    ccall( (:UnregisterWaitEx, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid},  ),
        WaitHandle, CompletionEvent )
end
function CreateTimerQueue(  )::Ptr{Cvoid}
    ccall( (:CreateTimerQueue, "kernel32"), stdcall, Ptr{Cvoid},
        (  ),
         )
end
function ChangeTimerQueueTimer( TimerQueue::Ptr{Cvoid}, Timer::Ptr{Cvoid}, DueTime::Culong, Period::Culong )::Cint
    ccall( (:ChangeTimerQueueTimer, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Culong, Culong,  ),
        TimerQueue, Timer, DueTime, Period )
end
function DeleteTimerQueueTimer( TimerQueue::Ptr{Cvoid}, Timer::Ptr{Cvoid}, CompletionEvent::Ptr{Cvoid} )::Cint
    ccall( (:DeleteTimerQueueTimer, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid},  ),
        TimerQueue, Timer, CompletionEvent )
end
function DeleteTimerQueueEx( TimerQueue::Ptr{Cvoid}, CompletionEvent::Ptr{Cvoid} )::Cint
    ccall( (:DeleteTimerQueueEx, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid},  ),
        TimerQueue, CompletionEvent )
end
function CreateJobObjectW( lpJobAttributes::Ptr{SECURITY_ATTRIBUTES}, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreateJobObjectW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cwchar_t},  ),
        lpJobAttributes, lpName )
end
function OpenJobObjectW( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenJobObjectW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cwchar_t},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function AssignProcessToJobObject( hJob::Ptr{Cvoid}, hProcess::Ptr{Cvoid} )::Cint
    ccall( (:AssignProcessToJobObject, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid},  ),
        hJob, hProcess )
end
function TerminateJobObject( hJob::Ptr{Cvoid}, uExitCode::UInt32 )::Cint
    ccall( (:TerminateJobObject, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt32,  ),
        hJob, uExitCode )
end
function Wow64DisableWow64FsRedirection( OldValue::Ptr{Cvoid} )::Cint
    ccall( (:Wow64DisableWow64FsRedirection, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        OldValue )
end
function Wow64RevertWow64FsRedirection( OlValue::Ptr{Cvoid} )::Cint
    ccall( (:Wow64RevertWow64FsRedirection, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        OlValue )
end
function Wow64SetThreadDefaultGuestMachine( Machine::Cushort )::Cushort
    ccall( (:Wow64SetThreadDefaultGuestMachine, "kernel32"), stdcall, Cushort,
        ( Cushort,  ),
        Machine )
end
function IsWow64Process2( hProcess::Ptr{Cvoid}, pProcessMachine::Cushort, pNativeMachine::Cushort )::Cint
    ccall( (:IsWow64Process2, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cushort, Cushort,  ),
        hProcess, pProcessMachine, pNativeMachine )
end
function IsWow64GuestMachineSupported( WowGuestMachine::Cushort, MachineIsSupported::Cint )::Clong
    ccall( (:IsWow64GuestMachineSupported, "kernel32"), stdcall, Clong,
        ( Cushort, Cint,  ),
        WowGuestMachine, MachineIsSupported )
end
function Wow64SuspendThread( hThread::Ptr{Cvoid} )::Culong
    ccall( (:Wow64SuspendThread, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        hThread )
end
const SUPPORT_LANG_NUMBER  = 32
function FreeResource( hResData::HGLOBAL )::Cint
    ccall( (:FreeResource, "kernel32"), stdcall, Cint,
        ( HGLOBAL,  ),
        hResData )
end
const CURRENT_IMPORT_REDIRECTION_VERSION  = 1

mutable struct REDIRECTION_FUNCTION_DESCRIPTOR
    DllName::Ptr{Cchar}
    FunctionName::Ptr{Cchar}
    RedirectionTarget::Ptr{Cvoid}
end

function LockResource( hResData::HGLOBAL )::Ptr{Cvoid}
    ccall( (:LockResource, "kernel32"), stdcall, Ptr{Cvoid},
        ( HGLOBAL,  ),
        hResData )
end
function SetDefaultDllDirectories( DirectoryFlags::Culong )::Cint
    ccall( (:SetDefaultDllDirectories, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        DirectoryFlags )
end
function CreatePrivateNamespaceW( lpPrivateNamespaceAttributes::Ptr{SECURITY_ATTRIBUTES}, lpBoundaryDescriptor::Ptr{Cvoid}, lpAliasPrefix::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:CreatePrivateNamespaceW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cvoid}, Ptr{Cwchar_t},  ),
        lpPrivateNamespaceAttributes, lpBoundaryDescriptor, lpAliasPrefix )
end
function OpenPrivateNamespaceW( lpBoundaryDescriptor::Ptr{Cvoid}, lpAliasPrefix::Ptr{Cwchar_t} )::Ptr{Cvoid}
    ccall( (:OpenPrivateNamespaceW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{Cwchar_t},  ),
        lpBoundaryDescriptor, lpAliasPrefix )
end
function ClosePrivateNamespace( Handle::Ptr{Cvoid}, Flags::Culong )::Cuchar
    ccall( (:ClosePrivateNamespace, "kernel32"), stdcall, Cuchar,
        ( Ptr{Cvoid}, Culong,  ),
        Handle, Flags )
end
function CreateBoundaryDescriptorW( Name::Ptr{Cwchar_t}, Flags::Culong )::Ptr{Cvoid}
    ccall( (:CreateBoundaryDescriptorW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Culong,  ),
        Name, Flags )
end
function DeleteBoundaryDescriptor( BoundaryDescriptor::Ptr{Cvoid} )::Cvoid
    ccall( (:DeleteBoundaryDescriptor, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cvoid},  ),
        BoundaryDescriptor )
end
const FILE_BEGIN  = 0
const FILE_CURRENT  = 1
const FILE_END  = 2
const PROGRESS_CONTINUE  = 0
const PROGRESS_CANCEL  = 1
const PROGRESS_STOP  = 2
const PROGRESS_QUIET  = 3
const PIPE_UNLIMITED_INSTANCES  = 255
const LPLDT_ENTRY = Ptr{Cvoid}

mutable struct COMMPROP
    wPacketLength::Cushort
    wPacketVersion::Cushort
    dwServiceMask::Culong
    dwReserved1::Culong
    dwMaxTxQueue::Culong
    dwMaxRxQueue::Culong
    dwMaxBaud::Culong
    dwProvSubType::Culong
    dwProvCapabilities::Culong
    dwSettableParams::Culong
    dwSettableBaud::Culong
    wSettableData::Cushort
    wSettableStopParity::Cushort
    dwCurrentTxQueue::Culong
    dwCurrentRxQueue::Culong
    dwProvSpec1::Culong
    dwProvSpec2::Culong
    wcProvChar::SVector{1,Cwchar_t}
end


mutable struct COMMTIMEOUTS
    ReadIntervalTimeout::Culong
    ReadTotalTimeoutMultiplier::Culong
    ReadTotalTimeoutConstant::Culong
    WriteTotalTimeoutMultiplier::Culong
    WriteTotalTimeoutConstant::Culong
end


mutable struct MEMORYSTATUS
    dwLength::Culong
    dwMemoryLoad::Culong
    dwTotalPhys::UInt64
    dwAvailPhys::UInt64
    dwTotalPageFile::UInt64
    dwAvailPageFile::UInt64
    dwTotalVirtual::UInt64
    dwAvailVirtual::UInt64
end

const THREAD_PRIORITY_NORMAL  = 0

mutable struct JIT_DEBUG_INFO
    dwSize::Culong
    dwProcessorArchitecture::Culong
    dwThreadID::Culong
    dwReserved0::Culong
    lpExceptionAddress::UInt64
    lpExceptionRecord::UInt64
    lpContextRecord::UInt64
end

const DRIVE_UNKNOWN  = 0
const DRIVE_NO_ROOT_DIR  = 1
const DRIVE_REMOVABLE  = 2
const DRIVE_FIXED  = 3
const DRIVE_REMOTE  = 4
const DRIVE_CDROM  = 5
const DRIVE_RAMDISK  = 6
const NOPARITY  = 0
const ODDPARITY  = 1
const EVENPARITY  = 2
const MARKPARITY  = 3
const SPACEPARITY  = 4
const ONESTOPBIT  = 0
const ONE5STOPBITS  = 1
const TWOSTOPBITS  = 2
const IGNORE  = 0
const CBR_110  = 110
const CBR_300  = 300
const CBR_600  = 600
const CBR_1200  = 1200
const CBR_2400  = 2400
const CBR_4800  = 4800
const CBR_9600  = 9600
const CBR_14400  = 14400
const CBR_19200  = 19200
const CBR_38400  = 38400
const CBR_56000  = 56000
const CBR_57600  = 57600
const CBR_115200  = 115200
const CBR_128000  = 128000
const CBR_256000  = 256000
const SETXOFF  = 1
const SETXON  = 2
const SETRTS  = 3
const CLRRTS  = 4
const SETDTR  = 5
const CLRDTR  = 6
const RESETDEV  = 7
const SETBREAK  = 8
const CLRBREAK  = 9
const S_QUEUEEMPTY  = 0
const S_THRESHOLD  = 1
const S_ALLTHRESHOLD  = 2
const S_NORMAL  = 0
const S_LEGATO  = 1
const S_STACCATO  = 2
const S_PERIOD512  = 0
const S_PERIOD1024  = 1
const S_PERIOD2048  = 2
const S_PERIODVOICE  = 3
const S_WHITE512  = 4
const S_WHITE1024  = 5
const S_WHITE2048  = 6
const S_WHITEVOICE  = 7
const OFS_MAXPATHNAME  = 128
function GlobalUnlock( hMem::HGLOBAL )::Cint
    ccall( (:GlobalUnlock, "kernel32"), stdcall, Cint,
        ( HGLOBAL,  ),
        hMem )
end
function GlobalCompact( dwMinFree::Culong )::UInt64
    ccall( (:GlobalCompact, "kernel32"), stdcall, UInt64,
        ( Culong,  ),
        dwMinFree )
end
function GlobalFix( hMem::HGLOBAL )::Cvoid
    ccall( (:GlobalFix, "kernel32"), stdcall, Cvoid,
        ( HGLOBAL,  ),
        hMem )
end
function GlobalUnfix( hMem::HGLOBAL )::Cvoid
    ccall( (:GlobalUnfix, "kernel32"), stdcall, Cvoid,
        ( HGLOBAL,  ),
        hMem )
end
function GlobalWire( hMem::HGLOBAL )::Ptr{Cvoid}
    ccall( (:GlobalWire, "kernel32"), stdcall, Ptr{Cvoid},
        ( HGLOBAL,  ),
        hMem )
end
function GlobalUnWire( hMem::HGLOBAL )::Cint
    ccall( (:GlobalUnWire, "kernel32"), stdcall, Cint,
        ( HGLOBAL,  ),
        hMem )
end
function GlobalMemoryStatus( lpBuffer::Ptr{MEMORYSTATUS} )::Cvoid
    ccall( (:GlobalMemoryStatus, "kernel32"), stdcall, Cvoid,
        ( Ptr{MEMORYSTATUS},  ),
        lpBuffer )
end
function LocalLock( hMem::HLOCAL )::Ptr{Cvoid}
    ccall( (:LocalLock, "kernel32"), stdcall, Ptr{Cvoid},
        ( HLOCAL,  ),
        hMem )
end
function LocalHandle( pMem::Ptr{Cvoid} )::HLOCAL
    ccall( (:LocalHandle, "kernel32"), stdcall, HLOCAL,
        ( Ptr{Cvoid},  ),
        pMem )
end
function LocalUnlock( hMem::HLOCAL )::Cint
    ccall( (:LocalUnlock, "kernel32"), stdcall, Cint,
        ( HLOCAL,  ),
        hMem )
end
function LocalSize( hMem::HLOCAL )::UInt64
    ccall( (:LocalSize, "kernel32"), stdcall, UInt64,
        ( HLOCAL,  ),
        hMem )
end
function LocalFlags( hMem::HLOCAL )::UInt32
    ccall( (:LocalFlags, "kernel32"), stdcall, UInt32,
        ( HLOCAL,  ),
        hMem )
end
function LocalShrink( hMem::HLOCAL, cbNewSize::UInt32 )::UInt64
    ccall( (:LocalShrink, "kernel32"), stdcall, UInt64,
        ( HLOCAL, UInt32,  ),
        hMem, cbNewSize )
end
function LocalCompact( uMinFree::UInt32 )::UInt64
    ccall( (:LocalCompact, "kernel32"), stdcall, UInt64,
        ( UInt32,  ),
        uMinFree )
end
const SCS_32BIT_BINARY  = 0
const SCS_DOS_BINARY  = 1
const SCS_WOW_BINARY  = 2
const SCS_PIF_BINARY  = 3
const SCS_POSIX_BINARY  = 4
const SCS_OS216_BINARY  = 5
const SCS_64BIT_BINARY  = 6
function GetBinaryTypeA( lpApplicationName::Ptr{Cchar}, lpBinaryType::Ptr{Culong} )::Cint
    ccall( (:GetBinaryTypeA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Culong},  ),
        lpApplicationName, lpBinaryType )
end
function GetBinaryTypeW( lpApplicationName::Ptr{Cwchar_t}, lpBinaryType::Ptr{Culong} )::Cint
    ccall( (:GetBinaryTypeW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Culong},  ),
        lpApplicationName, lpBinaryType )
end
function SetProcessAffinityMask( hProcess::Ptr{Cvoid}, dwProcessAffinityMask::Int )::Cint
    ccall( (:SetProcessAffinityMask, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Int,  ),
        hProcess, dwProcessAffinityMask )
end
function SetProcessWorkingSetSize( hProcess::Ptr{Cvoid}, dwMinimumWorkingSetSize::UInt64, dwMaximumWorkingSetSize::UInt64 )::Cint
    ccall( (:SetProcessWorkingSetSize, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt64, UInt64,  ),
        hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize )
end
function SetEnvironmentStringsA( NewEnvironment::Ptr{Cchar} )::Cint
    ccall( (:SetEnvironmentStringsA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        NewEnvironment )
end
function SwitchToFiber( lpFiber::Ptr{Cvoid} )::Cvoid
    ccall( (:SwitchToFiber, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cvoid},  ),
        lpFiber )
end
function DeleteFiber( lpFiber::Ptr{Cvoid} )::Cvoid
    ccall( (:DeleteFiber, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cvoid},  ),
        lpFiber )
end
function ConvertFiberToThread(  )::Cint
    ccall( (:ConvertFiberToThread, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function ConvertThreadToFiberEx( lpParameter::Ptr{Cvoid}, dwFlags::Culong )::Ptr{Cvoid}
    ccall( (:ConvertThreadToFiberEx, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Culong,  ),
        lpParameter, dwFlags )
end
function ConvertThreadToFiber( lpParameter::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:ConvertThreadToFiber, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid},  ),
        lpParameter )
end
function UmsThreadYield( SchedulerParam::Ptr{Cvoid} )::Cint
    ccall( (:UmsThreadYield, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        SchedulerParam )
end
function SetThreadAffinityMask( hThread::Ptr{Cvoid}, dwThreadAffinityMask::Int )::Int
    ccall( (:SetThreadAffinityMask, "kernel32"), stdcall, Int,
        ( Ptr{Cvoid}, Int,  ),
        hThread, dwThreadAffinityMask )
end
function SetProcessDEPPolicy( dwFlags::Culong )::Cint
    ccall( (:SetProcessDEPPolicy, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        dwFlags )
end
function IsSystemResumeAutomatic(  )::Cint
    ccall( (:IsSystemResumeAutomatic, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function GetThreadSelectorEntry( hThread::Ptr{Cvoid}, dwSelector::Culong, lpSelectorEntry::LPLDT_ENTRY )::Cint
    ccall( (:GetThreadSelectorEntry, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, LPLDT_ENTRY,  ),
        hThread, dwSelector, lpSelectorEntry )
end
function RestoreLastError( dwErrCode::Culong )::Cvoid
    ccall( (:RestoreLastError, "kernel32"), stdcall, Cvoid,
        ( Culong,  ),
        dwErrCode )
end
function SetFileCompletionNotificationModes( FileHandle::Ptr{Cvoid}, Flags::Cuchar )::Cint
    ccall( (:SetFileCompletionNotificationModes, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cuchar,  ),
        FileHandle, Flags )
end
function DebugSetProcessKillOnExit( KillOnExit::Cint )::Cint
    ccall( (:DebugSetProcessKillOnExit, "kernel32"), stdcall, Cint,
        ( Cint,  ),
        KillOnExit )
end
function PulseEvent( hEvent::Ptr{Cvoid} )::Cint
    ccall( (:PulseEvent, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hEvent )
end
function GlobalDeleteAtom( nAtom::ATOM )::ATOM
    ccall( (:GlobalDeleteAtom, "kernel32"), stdcall, ATOM,
        ( ATOM,  ),
        nAtom )
end
function InitAtomTable( nSize::Culong )::Cint
    ccall( (:InitAtomTable, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        nSize )
end
function DeleteAtom( nAtom::ATOM )::ATOM
    ccall( (:DeleteAtom, "kernel32"), stdcall, ATOM,
        ( ATOM,  ),
        nAtom )
end
function SetHandleCount( uNumber::UInt32 )::UInt32
    ccall( (:SetHandleCount, "kernel32"), stdcall, UInt32,
        ( UInt32,  ),
        uNumber )
end
function RequestDeviceWakeup( hDevice::Ptr{Cvoid} )::Cint
    ccall( (:RequestDeviceWakeup, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hDevice )
end
function CancelDeviceWakeupRequest( hDevice::Ptr{Cvoid} )::Cint
    ccall( (:CancelDeviceWakeupRequest, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hDevice )
end
function GetDevicePowerState( hDevice::Ptr{Cvoid}, pfOn::Cint )::Cint
    ccall( (:GetDevicePowerState, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cint,  ),
        hDevice, pfOn )
end
function SetMessageWaitingIndicator( hMsgIndicator::Ptr{Cvoid}, ulMsgCount::Culong )::Cint
    ccall( (:SetMessageWaitingIndicator, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hMsgIndicator, ulMsgCount )
end
function SetFileShortNameA( hFile::Ptr{Cvoid}, lpShortName::Ptr{Cchar} )::Cint
    ccall( (:SetFileShortNameA, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cchar},  ),
        hFile, lpShortName )
end
function SetFileShortNameW( hFile::Ptr{Cvoid}, lpShortName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetFileShortNameW, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cwchar_t},  ),
        hFile, lpShortName )
end
const HINSTANCE_ERROR  = 32
function LoadModule( lpModuleName::Ptr{Cchar}, lpParameterBlock::Ptr{Cvoid} )::Culong
    ccall( (:LoadModule, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cvoid},  ),
        lpModuleName, lpParameterBlock )
end
function WinExec( lpCmdLine::Ptr{Cchar}, uCmdShow::UInt32 )::UInt32
    ccall( (:WinExec, "kernel32"), stdcall, UInt32,
        ( Ptr{Cchar}, UInt32,  ),
        lpCmdLine, uCmdShow )
end
function ClearCommBreak( hFile::Ptr{Cvoid} )::Cint
    ccall( (:ClearCommBreak, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFile )
end
function SetupComm( hFile::Ptr{Cvoid}, dwInQueue::Culong, dwOutQueue::Culong )::Cint
    ccall( (:SetupComm, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Culong,  ),
        hFile, dwInQueue, dwOutQueue )
end
function EscapeCommFunction( hFile::Ptr{Cvoid}, dwFunc::Culong )::Cint
    ccall( (:EscapeCommFunction, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hFile, dwFunc )
end
function GetCommMask( hFile::Ptr{Cvoid}, lpEvtMask::Ptr{Culong} )::Cint
    ccall( (:GetCommMask, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hFile, lpEvtMask )
end
function GetCommProperties( hFile::Ptr{Cvoid}, lpCommProp::Ptr{COMMPROP} )::Cint
    ccall( (:GetCommProperties, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{COMMPROP},  ),
        hFile, lpCommProp )
end
function GetCommModemStatus( hFile::Ptr{Cvoid}, lpModemStat::Ptr{Culong} )::Cint
    ccall( (:GetCommModemStatus, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hFile, lpModemStat )
end
function GetCommTimeouts( hFile::Ptr{Cvoid}, lpCommTimeouts::Ptr{COMMTIMEOUTS} )::Cint
    ccall( (:GetCommTimeouts, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{COMMTIMEOUTS},  ),
        hFile, lpCommTimeouts )
end
function PurgeComm( hFile::Ptr{Cvoid}, dwFlags::Culong )::Cint
    ccall( (:PurgeComm, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hFile, dwFlags )
end
function SetCommBreak( hFile::Ptr{Cvoid} )::Cint
    ccall( (:SetCommBreak, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFile )
end
function SetCommMask( hFile::Ptr{Cvoid}, dwEvtMask::Culong )::Cint
    ccall( (:SetCommMask, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hFile, dwEvtMask )
end
function SetCommTimeouts( hFile::Ptr{Cvoid}, lpCommTimeouts::Ptr{COMMTIMEOUTS} )::Cint
    ccall( (:SetCommTimeouts, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{COMMTIMEOUTS},  ),
        hFile, lpCommTimeouts )
end
function OpenCommPort( uPortNumber::Culong, dwDesiredAccess::Culong, dwFlagsAndAttributes::Culong )::Ptr{Cvoid}
    ccall( (:OpenCommPort, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Culong, Culong,  ),
        uPortNumber, dwDesiredAccess, dwFlagsAndAttributes )
end
function SetTapePosition( hDevice::Ptr{Cvoid}, dwPositionMethod::Culong, dwPartition::Culong, dwOffsetLow::Culong, dwOffsetHigh::Culong, bImmediate::Cint )::Culong
    ccall( (:SetTapePosition, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Culong, Culong, Culong, Cint,  ),
        hDevice, dwPositionMethod, dwPartition, dwOffsetLow, dwOffsetHigh, bImmediate )
end
function GetTapePosition( hDevice::Ptr{Cvoid}, dwPositionType::Culong, lpdwPartition::Ptr{Culong}, lpdwOffsetLow::Ptr{Culong}, lpdwOffsetHigh::Ptr{Culong} )::Culong
    ccall( (:GetTapePosition, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Ptr{Culong}, Ptr{Culong}, Ptr{Culong},  ),
        hDevice, dwPositionType, lpdwPartition, lpdwOffsetLow, lpdwOffsetHigh )
end
function PrepareTape( hDevice::Ptr{Cvoid}, dwOperation::Culong, bImmediate::Cint )::Culong
    ccall( (:PrepareTape, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Cint,  ),
        hDevice, dwOperation, bImmediate )
end
function EraseTape( hDevice::Ptr{Cvoid}, dwEraseType::Culong, bImmediate::Cint )::Culong
    ccall( (:EraseTape, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Cint,  ),
        hDevice, dwEraseType, bImmediate )
end
function CreateTapePartition( hDevice::Ptr{Cvoid}, dwPartitionMethod::Culong, dwCount::Culong, dwSize::Culong )::Culong
    ccall( (:CreateTapePartition, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Culong, Culong,  ),
        hDevice, dwPartitionMethod, dwCount, dwSize )
end
function WriteTapemark( hDevice::Ptr{Cvoid}, dwTapemarkType::Culong, dwTapemarkCount::Culong, bImmediate::Cint )::Culong
    ccall( (:WriteTapemark, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Culong, Cint,  ),
        hDevice, dwTapemarkType, dwTapemarkCount, bImmediate )
end
function GetTapeStatus( hDevice::Ptr{Cvoid} )::Culong
    ccall( (:GetTapeStatus, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        hDevice )
end
function GetTapeParameters( hDevice::Ptr{Cvoid}, dwOperation::Culong, lpdwSize::Ptr{Culong}, lpTapeInformation::Ptr{Cvoid} )::Culong
    ccall( (:GetTapeParameters, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Ptr{Culong}, Ptr{Cvoid},  ),
        hDevice, dwOperation, lpdwSize, lpTapeInformation )
end
const GET_TAPE_MEDIA_INFORMATION  = 0
const GET_TAPE_DRIVE_INFORMATION  = 1
function SetTapeParameters( hDevice::Ptr{Cvoid}, dwOperation::Culong, lpTapeInformation::Ptr{Cvoid} )::Culong
    ccall( (:SetTapeParameters, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, Ptr{Cvoid},  ),
        hDevice, dwOperation, lpTapeInformation )
end
const SET_TAPE_MEDIA_INFORMATION  = 0
const SET_TAPE_DRIVE_INFORMATION  = 1
@enum DEP_SYSTEM_POLICY_TYPE::Int32 DEPPolicyAlwaysOff=0 DEPPolicyAlwaysOn=1 DEPPolicyOptIn=2 DEPPolicyOptOut=3 DEPTotalPolicyCount=4
function GetSystemRegistryQuota( pdwQuotaAllowed::Ptr{Culong}, pdwQuotaUsed::Ptr{Culong} )::Cint
    ccall( (:GetSystemRegistryQuota, "kernel32"), stdcall, Cint,
        ( Ptr{Culong}, Ptr{Culong},  ),
        pdwQuotaAllowed, pdwQuotaUsed )
end
function FileTimeToDosDateTime( lpFileTime::FILETIME, lpFatDate::Ptr{Cushort}, lpFatTime::Ptr{Cushort} )::Cint
    ccall( (:FileTimeToDosDateTime, "kernel32"), stdcall, Cint,
        ( FILETIME, Ptr{Cushort}, Ptr{Cushort},  ),
        lpFileTime, lpFatDate, lpFatTime )
end
function DosDateTimeToFileTime( wFatDate::Cushort, wFatTime::Cushort, lpFileTime::Ptr{FILETIME} )::Cint
    ccall( (:DosDateTimeToFileTime, "kernel32"), stdcall, Cint,
        ( Cushort, Cushort, Ptr{FILETIME},  ),
        wFatDate, wFatTime, lpFileTime )
end
function CreateMailslotA( lpName::Ptr{Cchar}, nMaxMessageSize::Culong, lReadTimeout::Culong, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Ptr{Cvoid}
    ccall( (:CreateMailslotA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Culong, Culong, Ptr{SECURITY_ATTRIBUTES},  ),
        lpName, nMaxMessageSize, lReadTimeout, lpSecurityAttributes )
end
function CreateMailslotW( lpName::Ptr{Cwchar_t}, nMaxMessageSize::Culong, lReadTimeout::Culong, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Ptr{Cvoid}
    ccall( (:CreateMailslotW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Culong, Culong, Ptr{SECURITY_ATTRIBUTES},  ),
        lpName, nMaxMessageSize, lReadTimeout, lpSecurityAttributes )
end
function GetMailslotInfo( hMailslot::Ptr{Cvoid}, lpMaxMessageSize::Ptr{Culong}, lpNextSize::Ptr{Culong}, lpMessageCount::Ptr{Culong}, lpReadTimeout::Ptr{Culong} )::Cint
    ccall( (:GetMailslotInfo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong}, Ptr{Culong},  ),
        hMailslot, lpMaxMessageSize, lpNextSize, lpMessageCount, lpReadTimeout )
end
function SetMailslotInfo( hMailslot::Ptr{Cvoid}, lReadTimeout::Culong )::Cint
    ccall( (:SetMailslotInfo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hMailslot, lReadTimeout )
end
const FILE_ENCRYPTABLE  = 0
const FILE_IS_ENCRYPTED  = 1
const FILE_SYSTEM_ATTR  = 2
const FILE_ROOT_DIR  = 3
const FILE_SYSTEM_DIR  = 4
const FILE_UNKNOWN  = 5
const FILE_SYSTEM_NOT_SUPPORT  = 6
const FILE_USER_DISALLOWED  = 7
const FILE_READ_ONLY  = 8
const FILE_DIR_DISALLOWED  = 9
function SignalObjectAndWait( hObjectToSignal::Ptr{Cvoid}, hObjectToWaitOn::Ptr{Cvoid}, dwMilliseconds::Culong, bAlertable::Cint )::Culong
    ccall( (:SignalObjectAndWait, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Ptr{Cvoid}, Culong, Cint,  ),
        hObjectToSignal, hObjectToWaitOn, dwMilliseconds, bAlertable )
end
function BackupSeek( hFile::Ptr{Cvoid}, dwLowBytesToSeek::Culong, dwHighBytesToSeek::Culong, lpdwLowByteSeeked::Ptr{Culong}, lpdwHighByteSeeked::Ptr{Culong}, lpContext::Ptr{Cvoid} )::Cint
    ccall( (:BackupSeek, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Culong, Ptr{Culong}, Ptr{Culong}, Ptr{Cvoid},  ),
        hFile, dwLowBytesToSeek, dwHighBytesToSeek, lpdwLowByteSeeked, lpdwHighByteSeeked, lpContext )
end
function OpenMutexA( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenMutexA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cchar},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function CreateSemaphoreA( lpSemaphoreAttributes::Ptr{SECURITY_ATTRIBUTES}, lInitialCount::Culong, lMaximumCount::Culong, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreateSemaphoreA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Ptr{Cchar},  ),
        lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName )
end
function OpenSemaphoreA( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenSemaphoreA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cchar},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function CreateWaitableTimerA( lpTimerAttributes::Ptr{SECURITY_ATTRIBUTES}, bManualReset::Cint, lpTimerName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreateWaitableTimerA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Cint, Ptr{Cchar},  ),
        lpTimerAttributes, bManualReset, lpTimerName )
end
function OpenWaitableTimerA( dwDesiredAccess::Culong, bInheritHandle::Cint, lpTimerName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenWaitableTimerA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cchar},  ),
        dwDesiredAccess, bInheritHandle, lpTimerName )
end
function CreateSemaphoreExA( lpSemaphoreAttributes::Ptr{SECURITY_ATTRIBUTES}, lInitialCount::Culong, lMaximumCount::Culong, lpName::Ptr{Cchar}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateSemaphoreExA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Ptr{Cchar}, Culong, Culong,  ),
        lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName, dwFlags, dwDesiredAccess )
end
function CreateWaitableTimerExA( lpTimerAttributes::Ptr{SECURITY_ATTRIBUTES}, lpTimerName::Ptr{Cchar}, dwFlags::Culong, dwDesiredAccess::Culong )::Ptr{Cvoid}
    ccall( (:CreateWaitableTimerExA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cchar}, Culong, Culong,  ),
        lpTimerAttributes, lpTimerName, dwFlags, dwDesiredAccess )
end
function CreateFileMappingA( hFile::Ptr{Cvoid}, lpFileMappingAttributes::Ptr{SECURITY_ATTRIBUTES}, flProtect::Culong, dwMaximumSizeHigh::Culong, dwMaximumSizeLow::Culong, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreateFileMappingA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Culong, Ptr{Cchar},  ),
        hFile, lpFileMappingAttributes, flProtect, dwMaximumSizeHigh, dwMaximumSizeLow, lpName )
end
function CreateFileMappingNumaA( hFile::Ptr{Cvoid}, lpFileMappingAttributes::Ptr{SECURITY_ATTRIBUTES}, flProtect::Culong, dwMaximumSizeHigh::Culong, dwMaximumSizeLow::Culong, lpName::Ptr{Cchar}, nndPreferred::Culong )::Ptr{Cvoid}
    ccall( (:CreateFileMappingNumaA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{SECURITY_ATTRIBUTES}, Culong, Culong, Culong, Ptr{Cchar}, Culong,  ),
        hFile, lpFileMappingAttributes, flProtect, dwMaximumSizeHigh, dwMaximumSizeLow, lpName, nndPreferred )
end
function OpenFileMappingA( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenFileMappingA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cchar},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
@enum PROC_THREAD_ATTRIBUTE_NUM::Int32 ProcThreadAttributeParentProcess=0 ProcThreadAttributeHandleList=2 ProcThreadAttributeGroupAffinity=3 ProcThreadAttributePreferredNode=4 ProcThreadAttributeIdealProcessor=5 ProcThreadAttributeUmsThread=6 ProcThreadAttributeMitigationPolicy=7 ProcThreadAttributeSecurityCapabilities=9 ProcThreadAttributeProtectionLevel=11 ProcThreadAttributeJobList=13 ProcThreadAttributeChildProcessPolicy=14 ProcThreadAttributeAllApplicationPackagesPolicy=15 ProcThreadAttributeWin32kFilter=16 ProcThreadAttributeSafeOpenPromptOriginClaim=17 ProcThreadAttributeDesktopAppPolicy=18 ProcThreadAttributePseudoConsole=22 ProcThreadAttributeMitigationAuditPolicy=24
function GetStartupInfoA( lpStartupInfo::Ptr{STARTUPINFOA} )::Cvoid
    ccall( (:GetStartupInfoA, "kernel32"), stdcall, Cvoid,
        ( Ptr{STARTUPINFOA},  ),
        lpStartupInfo )
end
function BeginUpdateResourceA( pFileName::Ptr{Cchar}, bDeleteExistingResources::Cint )::Ptr{Cvoid}
    ccall( (:BeginUpdateResourceA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Cint,  ),
        pFileName, bDeleteExistingResources )
end
function BeginUpdateResourceW( pFileName::Ptr{Cwchar_t}, bDeleteExistingResources::Cint )::Ptr{Cvoid}
    ccall( (:BeginUpdateResourceW, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cwchar_t}, Cint,  ),
        pFileName, bDeleteExistingResources )
end
function EndUpdateResourceA( hUpdate::Ptr{Cvoid}, fDiscard::Cint )::Cint
    ccall( (:EndUpdateResourceA, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cint,  ),
        hUpdate, fDiscard )
end
function EndUpdateResourceW( hUpdate::Ptr{Cvoid}, fDiscard::Cint )::Cint
    ccall( (:EndUpdateResourceW, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cint,  ),
        hUpdate, fDiscard )
end
function GlobalAddAtomA( lpString::Ptr{Cchar} )::ATOM
    ccall( (:GlobalAddAtomA, "kernel32"), stdcall, ATOM,
        ( Ptr{Cchar},  ),
        lpString )
end
function GlobalAddAtomW( lpString::Ptr{Cwchar_t} )::ATOM
    ccall( (:GlobalAddAtomW, "kernel32"), stdcall, ATOM,
        ( Ptr{Cwchar_t},  ),
        lpString )
end
function GlobalAddAtomExA( lpString::Ptr{Cchar}, Flags::Culong )::ATOM
    ccall( (:GlobalAddAtomExA, "kernel32"), stdcall, ATOM,
        ( Ptr{Cchar}, Culong,  ),
        lpString, Flags )
end
function GlobalAddAtomExW( lpString::Ptr{Cwchar_t}, Flags::Culong )::ATOM
    ccall( (:GlobalAddAtomExW, "kernel32"), stdcall, ATOM,
        ( Ptr{Cwchar_t}, Culong,  ),
        lpString, Flags )
end
function GlobalFindAtomA( lpString::Ptr{Cchar} )::ATOM
    ccall( (:GlobalFindAtomA, "kernel32"), stdcall, ATOM,
        ( Ptr{Cchar},  ),
        lpString )
end
function GlobalFindAtomW( lpString::Ptr{Cwchar_t} )::ATOM
    ccall( (:GlobalFindAtomW, "kernel32"), stdcall, ATOM,
        ( Ptr{Cwchar_t},  ),
        lpString )
end
function AddAtomA( lpString::Ptr{Cchar} )::ATOM
    ccall( (:AddAtomA, "kernel32"), stdcall, ATOM,
        ( Ptr{Cchar},  ),
        lpString )
end
function AddAtomW( lpString::Ptr{Cwchar_t} )::ATOM
    ccall( (:AddAtomW, "kernel32"), stdcall, ATOM,
        ( Ptr{Cwchar_t},  ),
        lpString )
end
function FindAtomA( lpString::Ptr{Cchar} )::ATOM
    ccall( (:FindAtomA, "kernel32"), stdcall, ATOM,
        ( Ptr{Cchar},  ),
        lpString )
end
function FindAtomW( lpString::Ptr{Cwchar_t} )::ATOM
    ccall( (:FindAtomW, "kernel32"), stdcall, ATOM,
        ( Ptr{Cwchar_t},  ),
        lpString )
end
function GetProfileIntA( lpAppName::Ptr{Cchar}, lpKeyName::Ptr{Cchar}, nDefault::Int32 )::UInt32
    ccall( (:GetProfileIntA, "kernel32"), stdcall, UInt32,
        ( Ptr{Cchar}, Ptr{Cchar}, Int32,  ),
        lpAppName, lpKeyName, nDefault )
end
function GetProfileIntW( lpAppName::Ptr{Cwchar_t}, lpKeyName::Ptr{Cwchar_t}, nDefault::Int32 )::UInt32
    ccall( (:GetProfileIntW, "kernel32"), stdcall, UInt32,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Int32,  ),
        lpAppName, lpKeyName, nDefault )
end
function GetProfileStringA( lpAppName::Ptr{Cchar}, lpKeyName::Ptr{Cchar}, lpDefault::Ptr{Cchar}, lpReturnedString::Ptr{Cchar}, nSize::Culong )::Culong
    ccall( (:GetProfileStringA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Culong,  ),
        lpAppName, lpKeyName, lpDefault, lpReturnedString, nSize )
end
function GetProfileStringW( lpAppName::Ptr{Cwchar_t}, lpKeyName::Ptr{Cwchar_t}, lpDefault::Ptr{Cwchar_t}, lpReturnedString::Ptr{Cwchar_t}, nSize::Culong )::Culong
    ccall( (:GetProfileStringW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong,  ),
        lpAppName, lpKeyName, lpDefault, lpReturnedString, nSize )
end
function WriteProfileStringA( lpAppName::Ptr{Cchar}, lpKeyName::Ptr{Cchar}, lpString::Ptr{Cchar} )::Cint
    ccall( (:WriteProfileStringA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar},  ),
        lpAppName, lpKeyName, lpString )
end
function WriteProfileStringW( lpAppName::Ptr{Cwchar_t}, lpKeyName::Ptr{Cwchar_t}, lpString::Ptr{Cwchar_t} )::Cint
    ccall( (:WriteProfileStringW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpAppName, lpKeyName, lpString )
end
function GetProfileSectionA( lpAppName::Ptr{Cchar}, lpReturnedString::Ptr{Cchar}, nSize::Culong )::Culong
    ccall( (:GetProfileSectionA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cchar}, Culong,  ),
        lpAppName, lpReturnedString, nSize )
end
function GetProfileSectionW( lpAppName::Ptr{Cwchar_t}, lpReturnedString::Ptr{Cwchar_t}, nSize::Culong )::Culong
    ccall( (:GetProfileSectionW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong,  ),
        lpAppName, lpReturnedString, nSize )
end
function WriteProfileSectionA( lpAppName::Ptr{Cchar}, lpString::Ptr{Cchar} )::Cint
    ccall( (:WriteProfileSectionA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar},  ),
        lpAppName, lpString )
end
function WriteProfileSectionW( lpAppName::Ptr{Cwchar_t}, lpString::Ptr{Cwchar_t} )::Cint
    ccall( (:WriteProfileSectionW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpAppName, lpString )
end
function GetPrivateProfileIntA( lpAppName::Ptr{Cchar}, lpKeyName::Ptr{Cchar}, nDefault::Int32, lpFileName::Ptr{Cchar} )::UInt32
    ccall( (:GetPrivateProfileIntA, "kernel32"), stdcall, UInt32,
        ( Ptr{Cchar}, Ptr{Cchar}, Int32, Ptr{Cchar},  ),
        lpAppName, lpKeyName, nDefault, lpFileName )
end
function GetPrivateProfileIntW( lpAppName::Ptr{Cwchar_t}, lpKeyName::Ptr{Cwchar_t}, nDefault::Int32, lpFileName::Ptr{Cwchar_t} )::UInt32
    ccall( (:GetPrivateProfileIntW, "kernel32"), stdcall, UInt32,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Int32, Ptr{Cwchar_t},  ),
        lpAppName, lpKeyName, nDefault, lpFileName )
end
function GetPrivateProfileStringA( lpAppName::Ptr{Cchar}, lpKeyName::Ptr{Cchar}, lpDefault::Ptr{Cchar}, lpReturnedString::Ptr{Cchar}, nSize::Culong, lpFileName::Ptr{Cchar} )::Culong
    ccall( (:GetPrivateProfileStringA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Culong, Ptr{Cchar},  ),
        lpAppName, lpKeyName, lpDefault, lpReturnedString, nSize, lpFileName )
end
function GetPrivateProfileStringW( lpAppName::Ptr{Cwchar_t}, lpKeyName::Ptr{Cwchar_t}, lpDefault::Ptr{Cwchar_t}, lpReturnedString::Ptr{Cwchar_t}, nSize::Culong, lpFileName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetPrivateProfileStringW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong, Ptr{Cwchar_t},  ),
        lpAppName, lpKeyName, lpDefault, lpReturnedString, nSize, lpFileName )
end
function WritePrivateProfileStringA( lpAppName::Ptr{Cchar}, lpKeyName::Ptr{Cchar}, lpString::Ptr{Cchar}, lpFileName::Ptr{Cchar} )::Cint
    ccall( (:WritePrivateProfileStringA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar},  ),
        lpAppName, lpKeyName, lpString, lpFileName )
end
function WritePrivateProfileStringW( lpAppName::Ptr{Cwchar_t}, lpKeyName::Ptr{Cwchar_t}, lpString::Ptr{Cwchar_t}, lpFileName::Ptr{Cwchar_t} )::Cint
    ccall( (:WritePrivateProfileStringW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpAppName, lpKeyName, lpString, lpFileName )
end
function GetPrivateProfileSectionA( lpAppName::Ptr{Cchar}, lpReturnedString::Ptr{Cchar}, nSize::Culong, lpFileName::Ptr{Cchar} )::Culong
    ccall( (:GetPrivateProfileSectionA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cchar}, Culong, Ptr{Cchar},  ),
        lpAppName, lpReturnedString, nSize, lpFileName )
end
function GetPrivateProfileSectionW( lpAppName::Ptr{Cwchar_t}, lpReturnedString::Ptr{Cwchar_t}, nSize::Culong, lpFileName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetPrivateProfileSectionW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong, Ptr{Cwchar_t},  ),
        lpAppName, lpReturnedString, nSize, lpFileName )
end
function WritePrivateProfileSectionA( lpAppName::Ptr{Cchar}, lpString::Ptr{Cchar}, lpFileName::Ptr{Cchar} )::Cint
    ccall( (:WritePrivateProfileSectionA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar},  ),
        lpAppName, lpString, lpFileName )
end
function WritePrivateProfileSectionW( lpAppName::Ptr{Cwchar_t}, lpString::Ptr{Cwchar_t}, lpFileName::Ptr{Cwchar_t} )::Cint
    ccall( (:WritePrivateProfileSectionW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpAppName, lpString, lpFileName )
end
function GetPrivateProfileSectionNamesA( lpszReturnBuffer::Ptr{Cchar}, nSize::Culong, lpFileName::Ptr{Cchar} )::Culong
    ccall( (:GetPrivateProfileSectionNamesA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Culong, Ptr{Cchar},  ),
        lpszReturnBuffer, nSize, lpFileName )
end
function GetPrivateProfileSectionNamesW( lpszReturnBuffer::Ptr{Cwchar_t}, nSize::Culong, lpFileName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetPrivateProfileSectionNamesW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Culong, Ptr{Cwchar_t},  ),
        lpszReturnBuffer, nSize, lpFileName )
end
function SetDllDirectoryA( lpPathName::Ptr{Cchar} )::Cint
    ccall( (:SetDllDirectoryA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpPathName )
end
function SetDllDirectoryW( lpPathName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetDllDirectoryW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpPathName )
end
function CreateDirectoryExA( lpTemplateDirectory::Ptr{Cchar}, lpNewDirectory::Ptr{Cchar}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Cint
    ccall( (:CreateDirectoryExA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{SECURITY_ATTRIBUTES},  ),
        lpTemplateDirectory, lpNewDirectory, lpSecurityAttributes )
end
function CreateDirectoryExW( lpTemplateDirectory::Ptr{Cwchar_t}, lpNewDirectory::Ptr{Cwchar_t}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Cint
    ccall( (:CreateDirectoryExW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{SECURITY_ATTRIBUTES},  ),
        lpTemplateDirectory, lpNewDirectory, lpSecurityAttributes )
end
function CreateDirectoryTransactedA( lpTemplateDirectory::Ptr{Cchar}, lpNewDirectory::Ptr{Cchar}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:CreateDirectoryTransactedA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{SECURITY_ATTRIBUTES}, Ptr{Cvoid},  ),
        lpTemplateDirectory, lpNewDirectory, lpSecurityAttributes, hTransaction )
end
function CreateDirectoryTransactedW( lpTemplateDirectory::Ptr{Cwchar_t}, lpNewDirectory::Ptr{Cwchar_t}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:CreateDirectoryTransactedW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{SECURITY_ATTRIBUTES}, Ptr{Cvoid},  ),
        lpTemplateDirectory, lpNewDirectory, lpSecurityAttributes, hTransaction )
end
function RemoveDirectoryTransactedA( lpPathName::Ptr{Cchar}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:RemoveDirectoryTransactedA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cvoid},  ),
        lpPathName, hTransaction )
end
function RemoveDirectoryTransactedW( lpPathName::Ptr{Cwchar_t}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:RemoveDirectoryTransactedW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cvoid},  ),
        lpPathName, hTransaction )
end
function DefineDosDeviceA( dwFlags::Culong, lpDeviceName::Ptr{Cchar}, lpTargetPath::Ptr{Cchar} )::Cint
    ccall( (:DefineDosDeviceA, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cchar}, Ptr{Cchar},  ),
        dwFlags, lpDeviceName, lpTargetPath )
end
function QueryDosDeviceA( lpDeviceName::Ptr{Cchar}, lpTargetPath::Ptr{Cchar}, ucchMax::Culong )::Culong
    ccall( (:QueryDosDeviceA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Cchar}, Culong,  ),
        lpDeviceName, lpTargetPath, ucchMax )
end
function ReOpenFile( hOriginalFile::Ptr{Cvoid}, dwDesiredAccess::Culong, dwShareMode::Culong, dwFlagsAndAttributes::Culong )::Ptr{Cvoid}
    ccall( (:ReOpenFile, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Culong, Culong, Culong,  ),
        hOriginalFile, dwDesiredAccess, dwShareMode, dwFlagsAndAttributes )
end
function SetFileAttributesTransactedA( lpFileName::Ptr{Cchar}, dwFileAttributes::Culong, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:SetFileAttributesTransactedA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Culong, Ptr{Cvoid},  ),
        lpFileName, dwFileAttributes, hTransaction )
end
function SetFileAttributesTransactedW( lpFileName::Ptr{Cwchar_t}, dwFileAttributes::Culong, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:SetFileAttributesTransactedW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Culong, Ptr{Cvoid},  ),
        lpFileName, dwFileAttributes, hTransaction )
end
function GetCompressedFileSizeTransactedA( lpFileName::Ptr{Cchar}, lpFileSizeHigh::Ptr{Culong}, hTransaction::Ptr{Cvoid} )::Culong
    ccall( (:GetCompressedFileSizeTransactedA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Ptr{Culong}, Ptr{Cvoid},  ),
        lpFileName, lpFileSizeHigh, hTransaction )
end
function GetCompressedFileSizeTransactedW( lpFileName::Ptr{Cwchar_t}, lpFileSizeHigh::Ptr{Culong}, hTransaction::Ptr{Cvoid} )::Culong
    ccall( (:GetCompressedFileSizeTransactedW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Ptr{Culong}, Ptr{Cvoid},  ),
        lpFileName, lpFileSizeHigh, hTransaction )
end
function DeleteFileTransactedA( lpFileName::Ptr{Cchar}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:DeleteFileTransactedA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cvoid},  ),
        lpFileName, hTransaction )
end
function DeleteFileTransactedW( lpFileName::Ptr{Cwchar_t}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:DeleteFileTransactedW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cvoid},  ),
        lpFileName, hTransaction )
end
function CopyFileA( lpExistingFileName::Ptr{Cchar}, lpNewFileName::Ptr{Cchar}, bFailIfExists::Cint )::Cint
    ccall( (:CopyFileA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Cint,  ),
        lpExistingFileName, lpNewFileName, bFailIfExists )
end
function CopyFileW( lpExistingFileName::Ptr{Cwchar_t}, lpNewFileName::Ptr{Cwchar_t}, bFailIfExists::Cint )::Cint
    ccall( (:CopyFileW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Cint,  ),
        lpExistingFileName, lpNewFileName, bFailIfExists )
end
@enum COPYFILE2_MESSAGE_TYPE::Int32 COPYFILE2_CALLBACK_NONE=0 COPYFILE2_CALLBACK_CHUNK_STARTED=1 COPYFILE2_CALLBACK_CHUNK_FINISHED=2 COPYFILE2_CALLBACK_STREAM_STARTED=3 COPYFILE2_CALLBACK_STREAM_FINISHED=4 COPYFILE2_CALLBACK_POLL_CONTINUE=5 COPYFILE2_CALLBACK_ERROR=6 COPYFILE2_CALLBACK_MAX=7
@enum COPYFILE2_MESSAGE_ACTION::Int32 COPYFILE2_PROGRESS_CONTINUE=0 COPYFILE2_PROGRESS_CANCEL=1 COPYFILE2_PROGRESS_STOP=2 COPYFILE2_PROGRESS_QUIET=3 COPYFILE2_PROGRESS_PAUSE=4
@enum COPYFILE2_COPY_PHASE::Int32 COPYFILE2_PHASE_NONE=0 COPYFILE2_PHASE_PREPARE_SOURCE=1 COPYFILE2_PHASE_PREPARE_DEST=2 COPYFILE2_PHASE_READ_SOURCE=3 COPYFILE2_PHASE_WRITE_DESTINATION=4 COPYFILE2_PHASE_SERVER_COPY=5 COPYFILE2_PHASE_NAMEGRAFT_COPY=6 COPYFILE2_PHASE_MAX=7
function MoveFileA( lpExistingFileName::Ptr{Cchar}, lpNewFileName::Ptr{Cchar} )::Cint
    ccall( (:MoveFileA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar},  ),
        lpExistingFileName, lpNewFileName )
end
function MoveFileW( lpExistingFileName::Ptr{Cwchar_t}, lpNewFileName::Ptr{Cwchar_t} )::Cint
    ccall( (:MoveFileW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpExistingFileName, lpNewFileName )
end
function MoveFileExA( lpExistingFileName::Ptr{Cchar}, lpNewFileName::Ptr{Cchar}, dwFlags::Culong )::Cint
    ccall( (:MoveFileExA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Culong,  ),
        lpExistingFileName, lpNewFileName, dwFlags )
end
function MoveFileExW( lpExistingFileName::Ptr{Cwchar_t}, lpNewFileName::Ptr{Cwchar_t}, dwFlags::Culong )::Cint
    ccall( (:MoveFileExW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong,  ),
        lpExistingFileName, lpNewFileName, dwFlags )
end
function ReplaceFileA( lpReplacedFileName::Ptr{Cchar}, lpReplacementFileName::Ptr{Cchar}, lpBackupFileName::Ptr{Cchar}, dwReplaceFlags::Culong, lpExclude::Ptr{Cvoid}, lpReserved::Ptr{Cvoid} )::Cint
    ccall( (:ReplaceFileA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Culong, Ptr{Cvoid}, Ptr{Cvoid},  ),
        lpReplacedFileName, lpReplacementFileName, lpBackupFileName, dwReplaceFlags, lpExclude, lpReserved )
end
function ReplaceFileW( lpReplacedFileName::Ptr{Cwchar_t}, lpReplacementFileName::Ptr{Cwchar_t}, lpBackupFileName::Ptr{Cwchar_t}, dwReplaceFlags::Culong, lpExclude::Ptr{Cvoid}, lpReserved::Ptr{Cvoid} )::Cint
    ccall( (:ReplaceFileW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong, Ptr{Cvoid}, Ptr{Cvoid},  ),
        lpReplacedFileName, lpReplacementFileName, lpBackupFileName, dwReplaceFlags, lpExclude, lpReserved )
end
function CreateHardLinkA( lpFileName::Ptr{Cchar}, lpExistingFileName::Ptr{Cchar}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Cint
    ccall( (:CreateHardLinkA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{SECURITY_ATTRIBUTES},  ),
        lpFileName, lpExistingFileName, lpSecurityAttributes )
end
function CreateHardLinkW( lpFileName::Ptr{Cwchar_t}, lpExistingFileName::Ptr{Cwchar_t}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Cint
    ccall( (:CreateHardLinkW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{SECURITY_ATTRIBUTES},  ),
        lpFileName, lpExistingFileName, lpSecurityAttributes )
end
function CreateHardLinkTransactedA( lpFileName::Ptr{Cchar}, lpExistingFileName::Ptr{Cchar}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:CreateHardLinkTransactedA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{SECURITY_ATTRIBUTES}, Ptr{Cvoid},  ),
        lpFileName, lpExistingFileName, lpSecurityAttributes, hTransaction )
end
function CreateHardLinkTransactedW( lpFileName::Ptr{Cwchar_t}, lpExistingFileName::Ptr{Cwchar_t}, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES}, hTransaction::Ptr{Cvoid} )::Cint
    ccall( (:CreateHardLinkTransactedW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{SECURITY_ATTRIBUTES}, Ptr{Cvoid},  ),
        lpFileName, lpExistingFileName, lpSecurityAttributes, hTransaction )
end
function CreateNamedPipeA( lpName::Ptr{Cchar}, dwOpenMode::Culong, dwPipeMode::Culong, nMaxInstances::Culong, nOutBufferSize::Culong, nInBufferSize::Culong, nDefaultTimeOut::Culong, lpSecurityAttributes::Ptr{SECURITY_ATTRIBUTES} )::Ptr{Cvoid}
    ccall( (:CreateNamedPipeA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Culong, Culong, Culong, Culong, Culong, Culong, Ptr{SECURITY_ATTRIBUTES},  ),
        lpName, dwOpenMode, dwPipeMode, nMaxInstances, nOutBufferSize, nInBufferSize, nDefaultTimeOut, lpSecurityAttributes )
end
function WaitNamedPipeA( lpNamedPipeName::Ptr{Cchar}, nTimeOut::Culong )::Cint
    ccall( (:WaitNamedPipeA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Culong,  ),
        lpNamedPipeName, nTimeOut )
end
function GetNamedPipeClientComputerNameA( Pipe::Ptr{Cvoid}, ClientComputerName::Ptr{Cchar}, ClientComputerNameLength::Culong )::Cint
    ccall( (:GetNamedPipeClientComputerNameA, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cchar}, Culong,  ),
        Pipe, ClientComputerName, ClientComputerNameLength )
end
function SetVolumeLabelA( lpRootPathName::Ptr{Cchar}, lpVolumeName::Ptr{Cchar} )::Cint
    ccall( (:SetVolumeLabelA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar},  ),
        lpRootPathName, lpVolumeName )
end
function SetVolumeLabelW( lpRootPathName::Ptr{Cwchar_t}, lpVolumeName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetVolumeLabelW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpRootPathName, lpVolumeName )
end
function SetFileBandwidthReservation( hFile::Ptr{Cvoid}, nPeriodMilliseconds::Culong, nBytesPerPeriod::Culong, bDiscardable::Cint, lpTransferSize::Ptr{Culong}, lpNumOutstandingRequests::Ptr{Culong} )::Cint
    ccall( (:SetFileBandwidthReservation, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong, Culong, Cint, Ptr{Culong}, Ptr{Culong},  ),
        hFile, nPeriodMilliseconds, nBytesPerPeriod, bDiscardable, lpTransferSize, lpNumOutstandingRequests )
end
function GetFileBandwidthReservation( hFile::Ptr{Cvoid}, lpPeriodMilliseconds::Ptr{Culong}, lpBytesPerPeriod::Ptr{Culong}, pDiscardable::Ptr{Cint}, lpTransferSize::Ptr{Culong}, lpNumOutstandingRequests::Ptr{Culong} )::Cint
    ccall( (:GetFileBandwidthReservation, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong}, Ptr{Culong}, Ptr{Cint}, Ptr{Culong}, Ptr{Culong},  ),
        hFile, lpPeriodMilliseconds, lpBytesPerPeriod, pDiscardable, lpTransferSize, lpNumOutstandingRequests )
end
const EVENTLOG_FULL_INFO  = 0
const OPERATION_API_VERSION  = 1
const OPERATION_ID = Culong

mutable struct OPERATION_START_PARAMETERS
    Version::Culong
    OperationId::OPERATION_ID
    Flags::Culong
end


mutable struct OPERATION_END_PARAMETERS
    Version::Culong
    OperationId::OPERATION_ID
    Flags::Culong
end

function IsBadReadPtr( lp::Cvoid, ucb::UInt )::Cint
    ccall( (:IsBadReadPtr, "kernel32"), stdcall, Cint,
        ( Cvoid, UInt,  ),
        lp, ucb )
end
function IsBadWritePtr( lp::Ptr{Cvoid}, ucb::UInt )::Cint
    ccall( (:IsBadWritePtr, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt,  ),
        lp, ucb )
end
function IsBadHugeReadPtr( lp::Cvoid, ucb::UInt )::Cint
    ccall( (:IsBadHugeReadPtr, "kernel32"), stdcall, Cint,
        ( Cvoid, UInt,  ),
        lp, ucb )
end
function IsBadHugeWritePtr( lp::Ptr{Cvoid}, ucb::UInt )::Cint
    ccall( (:IsBadHugeWritePtr, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, UInt,  ),
        lp, ucb )
end
function IsBadStringPtrA( lpsz::Ptr{Cchar}, ucchMax::UInt )::Cint
    ccall( (:IsBadStringPtrA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, UInt,  ),
        lpsz, ucchMax )
end
function IsBadStringPtrW( lpsz::Ptr{Cwchar_t}, ucchMax::UInt )::Cint
    ccall( (:IsBadStringPtrW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, UInt,  ),
        lpsz, ucchMax )
end
const MAX_COMPUTERNAME_LENGTH  = 15
const MAX_COMPUTERNAME_LENGTH  = 31
const LOGON32_LOGON_INTERACTIVE  = 2
const LOGON32_LOGON_NETWORK  = 3
const LOGON32_LOGON_BATCH  = 4
const LOGON32_LOGON_SERVICE  = 5
const LOGON32_LOGON_UNLOCK  = 7
const LOGON32_LOGON_NETWORK_CLEARTEXT  = 8
const LOGON32_LOGON_NEW_CREDENTIALS  = 9
const LOGON32_PROVIDER_DEFAULT  = 0
const LOGON32_PROVIDER_WINNT35  = 1
const LOGON32_PROVIDER_WINNT40  = 2
const LOGON32_PROVIDER_WINNT50  = 3
const LOGON32_PROVIDER_VIRTUAL  = 4
function UnregisterWait( WaitHandle::Ptr{Cvoid} )::Cint
    ccall( (:UnregisterWait, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        WaitHandle )
end
function CancelTimerQueueTimer( TimerQueue::Ptr{Cvoid}, Timer::Ptr{Cvoid} )::Cint
    ccall( (:CancelTimerQueueTimer, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Cvoid},  ),
        TimerQueue, Timer )
end
function DeleteTimerQueue( TimerQueue::Ptr{Cvoid} )::Cint
    ccall( (:DeleteTimerQueue, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        TimerQueue )
end
function CreatePrivateNamespaceA( lpPrivateNamespaceAttributes::Ptr{SECURITY_ATTRIBUTES}, lpBoundaryDescriptor::Ptr{Cvoid}, lpAliasPrefix::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreatePrivateNamespaceA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cvoid}, Ptr{Cchar},  ),
        lpPrivateNamespaceAttributes, lpBoundaryDescriptor, lpAliasPrefix )
end
function OpenPrivateNamespaceA( lpBoundaryDescriptor::Ptr{Cvoid}, lpAliasPrefix::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenPrivateNamespaceA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cvoid}, Ptr{Cchar},  ),
        lpBoundaryDescriptor, lpAliasPrefix )
end
function CreateBoundaryDescriptorA( Name::Ptr{Cchar}, Flags::Culong )::Ptr{Cvoid}
    ccall( (:CreateBoundaryDescriptorA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{Cchar}, Culong,  ),
        Name, Flags )
end
const HW_PROFILE_GUIDLEN  = 39
const MAX_PROFILE_LEN  = 80
const FACILITY_NULL  = 0
const FACILITY_RPC  = 1
const FACILITY_DISPATCH  = 2
const FACILITY_STORAGE  = 3
const FACILITY_ITF  = 4
const FACILITY_WIN32  = 7
const FACILITY_WINDOWS  = 8
const FACILITY_SSPI  = 9
const FACILITY_SECURITY  = 9
const FACILITY_CONTROL  = 10
const FACILITY_CERT  = 11
const FACILITY_INTERNET  = 12
const FACILITY_MEDIASERVER  = 13
const FACILITY_MSMQ  = 14
const FACILITY_SETUPAPI  = 15
const FACILITY_SCARD  = 16
const FACILITY_COMPLUS  = 17
const FACILITY_AAF  = 18
const FACILITY_URT  = 19
const FACILITY_ACS  = 20
const FACILITY_DPLAY  = 21
const FACILITY_UMI  = 22
const FACILITY_SXS  = 23
const FACILITY_WINDOWS_CE  = 24
const FACILITY_HTTP  = 25
const FACILITY_USERMODE_COMMONLOG  = 26
const FACILITY_WER  = 27
const FACILITY_USERMODE_FILTER_MANAGER  = 31
const FACILITY_BACKGROUNDCOPY  = 32
const FACILITY_CONFIGURATION  = 33
const FACILITY_WIA  = 33
const FACILITY_STATE_MANAGEMENT  = 34
const FACILITY_METADIRECTORY  = 35
const FACILITY_WINDOWSUPDATE  = 36
const FACILITY_DIRECTORYSERVICE  = 37
const FACILITY_GRAPHICS  = 38
const FACILITY_SHELL  = 39
const FACILITY_NAP  = 39
const FACILITY_TPM_SERVICES  = 40
const FACILITY_TPM_SOFTWARE  = 41
const FACILITY_UI  = 42
const FACILITY_XAML  = 43
const FACILITY_ACTION_QUEUE  = 44
const FACILITY_PLA  = 48
const FACILITY_WINDOWS_SETUP  = 48
const FACILITY_FVE  = 49
const FACILITY_FWP  = 50
const FACILITY_WINRM  = 51
const FACILITY_NDIS  = 52
const FACILITY_USERMODE_HYPERVISOR  = 53
const FACILITY_CMI  = 54
const FACILITY_USERMODE_VIRTUALIZATION  = 55
const FACILITY_USERMODE_VOLMGR  = 56
const FACILITY_BCD  = 57
const FACILITY_USERMODE_VHD  = 58
const FACILITY_USERMODE_HNS  = 59
const FACILITY_SDIAG  = 60
const FACILITY_WEBSERVICES  = 61
const FACILITY_WINPE  = 61
const FACILITY_WPN  = 62
const FACILITY_WINDOWS_STORE  = 63
const FACILITY_INPUT  = 64
const FACILITY_QUIC  = 65
const FACILITY_EAP  = 66
const FACILITY_WINDOWS_DEFENDER  = 80
const FACILITY_OPC  = 81
const FACILITY_XPS  = 82
const FACILITY_MBN  = 84
const FACILITY_POWERSHELL  = 84
const FACILITY_RAS  = 83
const FACILITY_P2P_INT  = 98
const FACILITY_P2P  = 99
const FACILITY_DAF  = 100
const FACILITY_BLUETOOTH_ATT  = 101
const FACILITY_AUDIO  = 102
const FACILITY_STATEREPOSITORY  = 103
const FACILITY_VISUALCPP  = 109
const FACILITY_SCRIPT  = 112
const FACILITY_PARSE  = 113
const FACILITY_BLB  = 120
const FACILITY_BLB_CLI  = 121
const FACILITY_WSBAPP  = 122
const FACILITY_BLBUI  = 128
const FACILITY_USN  = 129
const FACILITY_USERMODE_VOLSNAP  = 130
const FACILITY_TIERING  = 131
const FACILITY_WSB_ONLINE  = 133
const FACILITY_ONLINE_ID  = 134
const FACILITY_DEVICE_UPDATE_AGENT  = 135
const FACILITY_DRVSERVICING  = 136
const FACILITY_DLS  = 153
const FACILITY_DELIVERY_OPTIMIZATION  = 208
const FACILITY_USERMODE_SPACES  = 231
const FACILITY_USER_MODE_SECURITY_CORE  = 232
const FACILITY_USERMODE_LICENSING  = 234
const FACILITY_SOS  = 160
const FACILITY_DEBUGGERS  = 176
const FACILITY_SPP  = 256
const FACILITY_RESTORE  = 256
const FACILITY_DMSERVER  = 256
const FACILITY_DEPLOYMENT_SERVICES_SERVER  = 257
const FACILITY_DEPLOYMENT_SERVICES_IMAGING  = 258
const FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT  = 259
const FACILITY_DEPLOYMENT_SERVICES_UTIL  = 260
const FACILITY_DEPLOYMENT_SERVICES_BINLSVC  = 261
const FACILITY_DEPLOYMENT_SERVICES_PXE  = 263
const FACILITY_DEPLOYMENT_SERVICES_TFTP  = 264
const FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT  = 272
const FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING  = 278
const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER  = 289
const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT  = 290
const FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER  = 293
const FACILITY_LINGUISTIC_SERVICES  = 305
const FACILITY_AUDIOSTREAMING  = 1094
const FACILITY_TTD  = 1490
const FACILITY_ACCELERATOR  = 1536
const FACILITY_WMAAECMA  = 1996
const FACILITY_DIRECTMUSIC  = 2168
const FACILITY_DIRECT3D10  = 2169
const FACILITY_DXGI  = 2170
const FACILITY_DXGI_DDI  = 2171
const FACILITY_DIRECT3D11  = 2172
const FACILITY_DIRECT3D11_DEBUG  = 2173
const FACILITY_DIRECT3D12  = 2174
const FACILITY_DIRECT3D12_DEBUG  = 2175
const FACILITY_DXCORE  = 2176
const FACILITY_LEAP  = 2184
const FACILITY_AUDCLNT  = 2185
const FACILITY_WINCODEC_DWRITE_DWM  = 2200
const FACILITY_WINML  = 2192
const FACILITY_DIRECT2D  = 2201
const FACILITY_DEFRAG  = 2304
const FACILITY_USERMODE_SDBUS  = 2305
const FACILITY_JSCRIPT  = 2306
const FACILITY_PIDGENX  = 2561
const FACILITY_EAS  = 85
const FACILITY_WEB  = 885
const FACILITY_WEB_SOCKET  = 886
const FACILITY_MOBILE  = 1793
const FACILITY_SQLITE  = 1967
const FACILITY_UTC  = 1989
const FACILITY_WEP  = 2049
const FACILITY_SYNCENGINE  = 2050
const FACILITY_XBOX  = 2339
const FACILITY_GAME  = 2340
const FACILITY_PIX  = 2748
const DNS_ERROR_RESPONSE_CODES_BASE  = 9000
const DNS_ERROR_DNSSEC_BASE  = 9100
const DNS_ERROR_PACKET_FMT_BASE  = 9500
const DNS_ERROR_GENERAL_API_BASE  = 9550
const DNS_ERROR_ZONE_BASE  = 9600
const DNS_ERROR_DATAFILE_BASE  = 9650
const DNS_ERROR_DATABASE_BASE  = 9700
const DNS_ERROR_OPERATION_BASE  = 9750
const DNS_ERROR_SECURE_BASE  = 9800
const DNS_ERROR_SETUP_BASE  = 9850
const DNS_ERROR_DP_BASE  = 9900
const WSABASEERR  = 10000
const SEVERITY_SUCCESS  = 0
const SEVERITY_ERROR  = 1
const NOERROR  = 0
const NTE_OP_OK  = 0

mutable struct TIME_ZONE_INFORMATION
    Bias::Culong
    StandardName::SVector{ 32 ,Cwchar_t}
    StandardDate::SYSTEMTIME
    StandardBias::Culong
    DaylightName::SVector{ 32 ,Cwchar_t}
    DaylightDate::SYSTEMTIME
    DaylightBias::Culong
end


mutable struct TIME_DYNAMIC_ZONE_INFORMATION
    Bias::Culong
    StandardName::SVector{ 32 ,Cwchar_t}
    StandardDate::SYSTEMTIME
    StandardBias::Culong
    DaylightName::SVector{ 32 ,Cwchar_t}
    DaylightDate::SYSTEMTIME
    DaylightBias::Culong
    TimeZoneKeyName::SVector{ 128 ,Cwchar_t}
    DynamicDaylightTimeDisabled::Cuchar
end

function SetTimeZoneInformation( lpTimeZoneInformation::TIME_ZONE_INFORMATION )::Cint
    ccall( (:SetTimeZoneInformation, "kernel32"), stdcall, Cint,
        ( TIME_ZONE_INFORMATION,  ),
        lpTimeZoneInformation )
end
const TC_NORMAL  = 0
const TC_HARDERR  = 1
const TC_GP_TRAP  = 2
const TC_SIGNAL  = 3
function SetSystemPowerState( fSuspend::Cint, fForce::Cint )::Cint
    ccall( (:SetSystemPowerState, "kernel32"), stdcall, Cint,
        ( Cint, Cint,  ),
        fSuspend, fForce )
end

mutable struct SYSTEM_POWER_STATUS
    ACLineStatus::Cuchar
    BatteryFlag::Cuchar
    BatteryLifePercent::Cuchar
    SystemStatusFlag::Cuchar
    BatteryLifeTime::Culong
    BatteryFullLifeTime::Culong
end

function GetSystemPowerStatus( lpSystemPowerStatus::Ptr{SYSTEM_POWER_STATUS} )::Cint
    ccall( (:GetSystemPowerStatus, "kernel32"), stdcall, Cint,
        ( Ptr{SYSTEM_POWER_STATUS},  ),
        lpSystemPowerStatus )
end
function CreateJobObjectA( lpJobAttributes::Ptr{SECURITY_ATTRIBUTES}, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:CreateJobObjectA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Ptr{SECURITY_ATTRIBUTES}, Ptr{Cchar},  ),
        lpJobAttributes, lpName )
end
function OpenJobObjectA( dwDesiredAccess::Culong, bInheritHandle::Cint, lpName::Ptr{Cchar} )::Ptr{Cvoid}
    ccall( (:OpenJobObjectA, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Cint, Ptr{Cchar},  ),
        dwDesiredAccess, bInheritHandle, lpName )
end
function FindVolumeMountPointClose( hFindVolumeMountPoint::Ptr{Cvoid} )::Cint
    ccall( (:FindVolumeMountPointClose, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hFindVolumeMountPoint )
end
function SetVolumeMountPointA( lpszVolumeMountPoint::Ptr{Cchar}, lpszVolumeName::Ptr{Cchar} )::Cint
    ccall( (:SetVolumeMountPointA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar},  ),
        lpszVolumeMountPoint, lpszVolumeName )
end
function SetVolumeMountPointW( lpszVolumeMountPoint::Ptr{Cwchar_t}, lpszVolumeName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetVolumeMountPointW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        lpszVolumeMountPoint, lpszVolumeName )
end
function DeleteVolumeMountPointA( lpszVolumeMountPoint::Ptr{Cchar} )::Cint
    ccall( (:DeleteVolumeMountPointA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpszVolumeMountPoint )
end
function AddRefActCtx( hActCtx::Ptr{Cvoid} )::Cvoid
    ccall( (:AddRefActCtx, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cvoid},  ),
        hActCtx )
end
function ReleaseActCtx( hActCtx::Ptr{Cvoid} )::Cvoid
    ccall( (:ReleaseActCtx, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cvoid},  ),
        hActCtx )
end
function ZombifyActCtx( hActCtx::Ptr{Cvoid} )::Cint
    ccall( (:ZombifyActCtx, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hActCtx )
end
function DeactivateActCtx( dwFlags::Culong, ulCookie::Int )::Cint
    ccall( (:DeactivateActCtx, "kernel32"), stdcall, Cint,
        ( Culong, Int,  ),
        dwFlags, ulCookie )
end

mutable struct ACTCTX_SECTION_KEYED_DATA_2600
    cbSize::Culong
    ulDataFormatVersion::Culong
    lpData::Ptr{Cvoid}
    ulLength::Culong
    lpSectionGlobalData::Ptr{Cvoid}
    ulSectionGlobalDataLength::Culong
    lpSectionBase::Ptr{Cvoid}
    ulSectionTotalLength::Culong
    hActCtx::Ptr{Cvoid}
    ulAssemblyRosterIndex::Culong
end


mutable struct ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA
    lpInformation::Ptr{Cvoid}
    lpSectionBase::Ptr{Cvoid}
    ulSectionLength::Culong
    lpSectionGlobalDataBase::Ptr{Cvoid}
    ulSectionGlobalDataLength::Culong
end


mutable struct ACTCTX_SECTION_KEYED_DATA
    cbSize::Culong
    ulDataFormatVersion::Culong
    lpData::Ptr{Cvoid}
    ulLength::Culong
    lpSectionGlobalData::Ptr{Cvoid}
    ulSectionGlobalDataLength::Culong
    lpSectionBase::Ptr{Cvoid}
    ulSectionTotalLength::Culong
    hActCtx::Ptr{Cvoid}
    ulAssemblyRosterIndex::Culong
    ulFlags::Culong
    AssemblyMetadata::ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA
end


mutable struct ACTIVATION_CONTEXT_BASIC_INFORMATION
    hActCtx::Ptr{Cvoid}
    dwFlags::Culong
end

const ACTIVATION_CONTEXT_BASIC_INFORMATION_DEFINED  = 1
function WTSGetActiveConsoleSessionId(  )::Culong
    ccall( (:WTSGetActiveConsoleSessionId, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function WTSGetServiceSessionId(  )::Culong
    ccall( (:WTSGetServiceSessionId, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function WTSIsServerContainer(  )::Cuchar
    ccall( (:WTSIsServerContainer, "kernel32"), stdcall, Cuchar,
        (  ),
         )
end
function GetActiveProcessorGroupCount(  )::Cushort
    ccall( (:GetActiveProcessorGroupCount, "kernel32"), stdcall, Cushort,
        (  ),
         )
end
function GetMaximumProcessorGroupCount(  )::Cushort
    ccall( (:GetMaximumProcessorGroupCount, "kernel32"), stdcall, Cushort,
        (  ),
         )
end
function GetActiveProcessorCount( GroupNumber::Cushort )::Culong
    ccall( (:GetActiveProcessorCount, "kernel32"), stdcall, Culong,
        ( Cushort,  ),
        GroupNumber )
end
function GetMaximumProcessorCount( GroupNumber::Cushort )::Culong
    ccall( (:GetMaximumProcessorCount, "kernel32"), stdcall, Culong,
        ( Cushort,  ),
        GroupNumber )
end
function GetNumaProcessorNode( Processor::Cuchar, NodeNumber::Ptr{UInt8} )::Cint
    ccall( (:GetNumaProcessorNode, "kernel32"), stdcall, Cint,
        ( Cuchar, Ptr{UInt8},  ),
        Processor, NodeNumber )
end
function GetNumaProximityNode( ProximityId::Culong, NodeNumber::Ptr{UInt8} )::Cint
    ccall( (:GetNumaProximityNode, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{UInt8},  ),
        ProximityId, NodeNumber )
end
const RESTART_MAX_CMD_LINE  = 1024
const RESTART_NO_CRASH  = 1
const RESTART_NO_HANG  = 2
const RESTART_NO_PATCH  = 4
const RESTART_NO_REBOOT  = 8
const RECOVERY_DEFAULT_PING_INTERVAL  = 5000
function ApplicationRecoveryFinished( bSuccess::Cint )::Cvoid
    ccall( (:ApplicationRecoveryFinished, "kernel32"), stdcall, Cvoid,
        ( Cint,  ),
        bSuccess )
end

mutable struct FILE_BASIC_INFO
    CreationTime::Int64
    LastAccessTime::Int64
    LastWriteTime::Int64
    ChangeTime::Int64
    FileAttributes::Culong
end


mutable struct FILE_STANDARD_INFO
    AllocationSize::Int64
    EndOfFile::Int64
    NumberOfLinks::Culong
    DeletePending::Cuchar
    Directory::Cuchar
end


mutable struct FILE_NAME_INFO
    FileNameLength::Culong
    FileName::SVector{1,Cwchar_t}
end


mutable struct FILE_CASE_SENSITIVE_INFO
    Flags::Culong
end


mutable struct FILE_ALLOCATION_INFO
    AllocationSize::Int64
end


mutable struct FILE_END_OF_FILE_INFO
    EndOfFile::Int64
end


mutable struct FILE_STREAM_INFO
    NextEntryOffset::Culong
    StreamNameLength::Culong
    StreamSize::Int64
    StreamAllocationSize::Int64
    StreamName::SVector{1,Cwchar_t}
end


mutable struct FILE_COMPRESSION_INFO
    CompressedFileSize::Int64
    CompressionFormat::Cushort
    CompressionUnitShift::Cuchar
    ChunkShift::Cuchar
    ClusterShift::Cuchar
    Reserved::SVector{3,Cuchar}
end


mutable struct FILE_ATTRIBUTE_TAG_INFO
    FileAttributes::Culong
    ReparseTag::Culong
end


mutable struct FILE_DISPOSITION_INFO
    DeleteFile::Cuchar
end


mutable struct FILE_DISPOSITION_INFO_EX
    Flags::Culong
end


mutable struct FILE_ID_BOTH_DIR_INFO
    NextEntryOffset::Culong
    FileIndex::Culong
    CreationTime::Int64
    LastAccessTime::Int64
    LastWriteTime::Int64
    ChangeTime::Int64
    EndOfFile::Int64
    AllocationSize::Int64
    FileAttributes::Culong
    FileNameLength::Culong
    EaSize::Culong
    ShortNameLength::Cchar
    ShortName::SVector{12,Cwchar_t}
    FileId::Int64
    FileName::SVector{1,Cwchar_t}
end


mutable struct FILE_FULL_DIR_INFO
    NextEntryOffset::Culong
    FileIndex::Culong
    CreationTime::Int64
    LastAccessTime::Int64
    LastWriteTime::Int64
    ChangeTime::Int64
    EndOfFile::Int64
    AllocationSize::Int64
    FileAttributes::Culong
    FileNameLength::Culong
    EaSize::Culong
    FileName::SVector{1,Cwchar_t}
end

@enum PRIORITY_HINT::Int32 IoPriorityHintVeryLow=0 IoPriorityHintLow=1 IoPriorityHintNormal=2 MaximumIoPriorityHintType=3

mutable struct FILE_ALIGNMENT_INFO
    AlignmentRequirement::Culong
end


mutable struct FILE_STORAGE_INFO
    LogicalBytesPerSector::Culong
    PhysicalBytesPerSectorForAtomicity::Culong
    PhysicalBytesPerSectorForPerformance::Culong
    FileSystemEffectivePhysicalBytesPerSectorForAtomicity::Culong
    Flags::Culong
    ByteOffsetForSectorAlignment::Culong
    ByteOffsetForPartitionAlignment::Culong
end

@enum FILE_ID_TYPE::Int32 FileIdType=0 ObjectIdType=1 ExtendedFileIdType=2 MaximumFileIdType=3
function GetEnabledXStateFeatures(  )::UInt64
    ccall( (:GetEnabledXStateFeatures, "kernel32"), stdcall, UInt64,
        (  ),
         )
end
function EnableThreadProfiling( ThreadHandle::Ptr{Cvoid}, Flags::Culong, HardwareCounters::UInt64, PerformanceDataHandle::Ptr{Cvoid} )::Culong
    ccall( (:EnableThreadProfiling, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid}, Culong, UInt64, Ptr{Cvoid},  ),
        ThreadHandle, Flags, HardwareCounters, PerformanceDataHandle )
end
function DisableThreadProfiling( PerformanceDataHandle::Ptr{Cvoid} )::Culong
    ccall( (:DisableThreadProfiling, "kernel32"), stdcall, Culong,
        ( Ptr{Cvoid},  ),
        PerformanceDataHandle )
end
const MICROSOFT_WINBASE_H_DEFINE_INTERLOCKED_CPLUSPLUS_OVERLOADS  = 0
const R2_BLACK  = 1
const R2_NOTMERGEPEN  = 2
const R2_MASKNOTPEN  = 3
const R2_NOTCOPYPEN  = 4
const R2_MASKPENNOT  = 5
const R2_NOT  = 6
const R2_XORPEN  = 7
const R2_NOTMASKPEN  = 8
const R2_MASKPEN  = 9
const R2_NOTXORPEN  = 10
const R2_NOP  = 11
const R2_MERGENOTPEN  = 12
const R2_COPYPEN  = 13
const R2_MERGEPENNOT  = 14
const R2_MERGEPEN  = 15
const R2_WHITE  = 16
const R2_LAST  = 16
const ERROR  = 0
const NULLREGION  = 1
const SIMPLEREGION  = 2
const COMPLEXREGION  = 3
const RGN_AND  = 1
const RGN_OR  = 2
const RGN_XOR  = 3
const RGN_DIFF  = 4
const RGN_COPY  = 5
const BLACKONWHITE  = 1
const WHITEONBLACK  = 2
const COLORONCOLOR  = 3
const HALFTONE  = 4
const MAXSTRETCHBLTMODE  = 4
const ALTERNATE  = 1
const WINDING  = 2
const POLYFILL_LAST  = 2
const TA_NOUPDATECP  = 0
const TA_UPDATECP  = 1
const TA_LEFT  = 0
const TA_RIGHT  = 2
const TA_CENTER  = 6
const TA_TOP  = 0
const TA_BOTTOM  = 8
const TA_BASELINE  = 24
const TA_RTLREADING  = 256

mutable struct DRAWPATRECT
    ptPosition::POINT
    ptSize::POINT
    wStyle::Cushort
    wPattern::Cushort
end

const NEWFRAME  = 1
const ABORTDOC  = 2
const NEXTBAND  = 3
const SETCOLORTABLE  = 4
const GETCOLORTABLE  = 5
const FLUSHOUTPUT  = 6
const DRAFTMODE  = 7
const QUERYESCSUPPORT  = 8
const SETABORTPROC  = 9
const STARTDOC  = 10
const ENDDOC  = 11
const GETPHYSPAGESIZE  = 12
const GETPRINTINGOFFSET  = 13
const GETSCALINGFACTOR  = 14
const MFCOMMENT  = 15
const GETPENWIDTH  = 16
const SETCOPYCOUNT  = 17
const SELECTPAPERSOURCE  = 18
const DEVICEDATA  = 19
const PASSTHROUGH  = 19
const GETTECHNOLGY  = 20
const GETTECHNOLOGY  = 20
const SETLINECAP  = 21
const SETLINEJOIN  = 22
const SETMITERLIMIT  = 23
const BANDINFO  = 24
const DRAWPATTERNRECT  = 25
const GETVECTORPENSIZE  = 26
const GETVECTORBRUSHSIZE  = 27
const ENABLEDUPLEX  = 28
const GETSETPAPERBINS  = 29
const GETSETPRINTORIENT  = 30
const ENUMPAPERBINS  = 31
const SETDIBSCALING  = 32
const EPSPRINTING  = 33
const ENUMPAPERMETRICS  = 34
const GETSETPAPERMETRICS  = 35
const POSTSCRIPT_DATA  = 37
const POSTSCRIPT_IGNORE  = 38
const MOUSETRAILS  = 39
const GETDEVICEUNITS  = 42
const GETEXTENDEDTEXTMETRICS  = 256
const GETEXTENTTABLE  = 257
const GETPAIRKERNTABLE  = 258
const GETTRACKKERNTABLE  = 259
const EXTTEXTOUT  = 512
const GETFACENAME  = 513
const DOWNLOADFACE  = 514
const ENABLERELATIVEWIDTHS  = 768
const ENABLEPAIRKERNING  = 769
const SETKERNTRACK  = 770
const SETALLJUSTVALUES  = 771
const SETCHARSET  = 772
const STRETCHBLT  = 2048
const METAFILE_DRIVER  = 2049
const GETSETSCREENPARAMS  = 3072
const QUERYDIBSUPPORT  = 3073
const BEGIN_PATH  = 4096
const CLIP_TO_PATH  = 4097
const END_PATH  = 4098
const EXT_DEVICE_CAPS  = 4099
const RESTORE_CTM  = 4100
const SAVE_CTM  = 4101
const SET_ARC_DIRECTION  = 4102
const SET_BACKGROUND_COLOR  = 4103
const SET_POLY_MODE  = 4104
const SET_SCREEN_ANGLE  = 4105
const SET_SPREAD  = 4106
const TRANSFORM_CTM  = 4107
const SET_CLIP_BOX  = 4108
const SET_BOUNDS  = 4109
const SET_MIRROR_MODE  = 4110
const OPENCHANNEL  = 4110
const DOWNLOADHEADER  = 4111
const CLOSECHANNEL  = 4112
const POSTSCRIPT_PASSTHROUGH  = 4115
const ENCAPSULATED_POSTSCRIPT  = 4116
const POSTSCRIPT_IDENTIFY  = 4117
const POSTSCRIPT_INJECTION  = 4118
const CHECKJPEGFORMAT  = 4119
const CHECKPNGFORMAT  = 4120
const GET_PS_FEATURESETTING  = 4121
const GDIPLUS_TS_QUERYVER  = 4122
const GDIPLUS_TS_RECORD  = 4123
const SPCLPASSTHROUGH2  = 4568
const PSIDENT_GDICENTRIC  = 0
const PSIDENT_PSCENTRIC  = 1

mutable struct PSINJECTDATA
    DataBytes::Culong
    InjectionPoint::Cushort
    PageNumber::Cushort
end

const PSINJECT_BEGINSTREAM  = 1
const PSINJECT_PSADOBE  = 2
const PSINJECT_PAGESATEND  = 3
const PSINJECT_PAGES  = 4
const PSINJECT_DOCNEEDEDRES  = 5
const PSINJECT_DOCSUPPLIEDRES  = 6
const PSINJECT_PAGEORDER  = 7
const PSINJECT_ORIENTATION  = 8
const PSINJECT_BOUNDINGBOX  = 9
const PSINJECT_DOCUMENTPROCESSCOLORS  = 10
const PSINJECT_COMMENTS  = 11
const PSINJECT_BEGINDEFAULTS  = 12
const PSINJECT_ENDDEFAULTS  = 13
const PSINJECT_BEGINPROLOG  = 14
const PSINJECT_ENDPROLOG  = 15
const PSINJECT_BEGINSETUP  = 16
const PSINJECT_ENDSETUP  = 17
const PSINJECT_TRAILER  = 18
const PSINJECT_EOF  = 19
const PSINJECT_ENDSTREAM  = 20
const PSINJECT_DOCUMENTPROCESSCOLORSATEND  = 21
const PSINJECT_PAGENUMBER  = 100
const PSINJECT_BEGINPAGESETUP  = 101
const PSINJECT_ENDPAGESETUP  = 102
const PSINJECT_PAGETRAILER  = 103
const PSINJECT_PLATECOLOR  = 104
const PSINJECT_SHOWPAGE  = 105
const PSINJECT_PAGEBBOX  = 106
const PSINJECT_ENDPAGECOMMENTS  = 107
const PSINJECT_VMSAVE  = 200
const PSINJECT_VMRESTORE  = 201
const FEATURESETTING_NUP  = 0
const FEATURESETTING_OUTPUT  = 1
const FEATURESETTING_PSLEVEL  = 2
const FEATURESETTING_CUSTPAPER  = 3
const FEATURESETTING_MIRROR  = 4
const FEATURESETTING_NEGATIVE  = 5
const FEATURESETTING_PROTOCOL  = 6

mutable struct PSFEATURE_OUTPUT
    bPageIndependent::Cint
    bSetPageDevice::Cint
end


mutable struct PSFEATURE_CUSTPAPER
    lOrientation::Culong
    lWidth::Culong
    lHeight::Culong
    lWidthOffset::Culong
    lHeightOffset::Culong
end

const PSPROTOCOL_ASCII  = 0
const PSPROTOCOL_BCP  = 1
const PSPROTOCOL_TBCP  = 2
const PSPROTOCOL_BINARY  = 3
const QDI_SETDIBITS  = 1
const QDI_GETDIBITS  = 2
const QDI_DIBTOSCREEN  = 4
const QDI_STRETCHDIB  = 8
const OBJ_PEN  = 1
const OBJ_BRUSH  = 2
const OBJ_DC  = 3
const OBJ_METADC  = 4
const OBJ_PAL  = 5
const OBJ_FONT  = 6
const OBJ_BITMAP  = 7
const OBJ_REGION  = 8
const OBJ_METAFILE  = 9
const OBJ_MEMDC  = 10
const OBJ_EXTPEN  = 11
const OBJ_ENHMETADC  = 12
const OBJ_ENHMETAFILE  = 13
const OBJ_COLORSPACE  = 14
const MWT_IDENTITY  = 1
const MWT_LEFTMULTIPLY  = 2
const MWT_RIGHTMULTIPLY  = 3

mutable struct RGBTRIPLE
    rgbtBlue::Cuchar
    rgbtGreen::Cuchar
    rgbtRed::Cuchar
end


mutable struct RGBQUAD
    rgbBlue::Cuchar
    rgbGreen::Cuchar
    rgbRed::Cuchar
    rgbReserved::Cuchar
end

const LCSCSTYPE = Culong
const LCSGAMUTMATCH = Culong
const CM_OUT_OF_GAMUT  = 255
const CM_IN_GAMUT  = 0
const ICM_ADDPROFILE  = 1
const ICM_DELETEPROFILE  = 2
const ICM_QUERYPROFILE  = 3
const ICM_SETDEFAULTPROFILE  = 4
const ICM_REGISTERICMATCHER  = 5
const ICM_UNREGISTERICMATCHER  = 6
const ICM_QUERYMATCH  = 7

mutable struct BITMAPCOREHEADER
    bcSize::Culong
    bcWidth::Cushort
    bcHeight::Cushort
    bcPlanes::Cushort
    bcBitCount::Cushort
end


mutable struct BITMAPINFOHEADER
    biSize::Culong
    biWidth::Culong
    biHeight::Culong
    biPlanes::Cushort
    biBitCount::Cushort
    biCompression::Culong
    biSizeImage::Culong
    biXPelsPerMeter::Culong
    biYPelsPerMeter::Culong
    biClrUsed::Culong
    biClrImportant::Culong
end


mutable struct BITMAPINFO
    bmiHeader::BITMAPINFOHEADER
    bmiColors::SVector{1,RGBQUAD}
end


mutable struct BITMAPCOREINFO
    bmciHeader::BITMAPCOREHEADER
    bmciColors::SVector{1,RGBTRIPLE}
end


mutable struct BITMAPFILEHEADER
    bfType::Cushort
    bfSize::Culong
    bfReserved1::Cushort
    bfReserved2::Cushort
    bfOffBits::Culong
end


mutable struct FONTSIGNATURE
    fsUsb::SVector{4,Culong}
    fsCsb::SVector{2,Culong}
end


mutable struct CHARSETINFO
    ciCharset::UInt32
    ciACP::UInt32
    fs::FONTSIGNATURE
end

const TCI_SRCCHARSET  = 1
const TCI_SRCCODEPAGE  = 2
const TCI_SRCFONTSIG  = 3

mutable struct LOCALESIGNATURE
    lsUsb::SVector{4,Culong}
    lsCsbDefault::SVector{2,Culong}
    lsCsbSupported::SVector{2,Culong}
end


mutable struct METAHEADER
    mtType::Cushort
    mtHeaderSize::Cushort
    mtVersion::Cushort
    mtSize::Culong
    mtNoObjects::Cushort
    mtMaxRecord::Culong
    mtNoParameters::Cushort
end


mutable struct ENHMETARECORD
    iType::Culong
    nSize::Culong
    dParm::SVector{1,Culong}
end


mutable struct ENHMETAHEADER
    iType::Culong
    nSize::Culong
    rclBounds::RECTL
    rclFrame::RECTL
    dSignature::Culong
    nVersion::Culong
    nBytes::Culong
    nRecords::Culong
    nHandles::Cushort
    sReserved::Cushort
    nDescription::Culong
    offDescription::Culong
    nPalEntries::Culong
    szlDevice::SIZEL
    szlMillimeters::SIZEL
    cbPixelFormat::Culong
    offPixelFormat::Culong
    bOpenGL::Culong
    szlMicrometers::SIZEL
end

const BCHAR = Cwchar_t

mutable struct TEXTMETRICA
    tmHeight::Culong
    tmAscent::Culong
    tmDescent::Culong
    tmInternalLeading::Culong
    tmExternalLeading::Culong
    tmAveCharWidth::Culong
    tmMaxCharWidth::Culong
    tmWeight::Culong
    tmOverhang::Culong
    tmDigitizedAspectX::Culong
    tmDigitizedAspectY::Culong
    tmFirstChar::Cuchar
    tmLastChar::Cuchar
    tmDefaultChar::Cuchar
    tmBreakChar::Cuchar
    tmItalic::Cuchar
    tmUnderlined::Cuchar
    tmStruckOut::Cuchar
    tmPitchAndFamily::Cuchar
    tmCharSet::Cuchar
end


mutable struct TEXTMETRICW
    tmHeight::Culong
    tmAscent::Culong
    tmDescent::Culong
    tmInternalLeading::Culong
    tmExternalLeading::Culong
    tmAveCharWidth::Culong
    tmMaxCharWidth::Culong
    tmWeight::Culong
    tmOverhang::Culong
    tmDigitizedAspectX::Culong
    tmDigitizedAspectY::Culong
    tmFirstChar::Cwchar_t
    tmLastChar::Cwchar_t
    tmDefaultChar::Cwchar_t
    tmBreakChar::Cwchar_t
    tmItalic::Cuchar
    tmUnderlined::Cuchar
    tmStruckOut::Cuchar
    tmPitchAndFamily::Cuchar
    tmCharSet::Cuchar
end

const TEXTMETRIC = TEXTMETRICW
const LPTEXTMETRIC = Ptr{TEXTMETRICW}

mutable struct NEWTEXTMETRICA
    tmHeight::Culong
    tmAscent::Culong
    tmDescent::Culong
    tmInternalLeading::Culong
    tmExternalLeading::Culong
    tmAveCharWidth::Culong
    tmMaxCharWidth::Culong
    tmWeight::Culong
    tmOverhang::Culong
    tmDigitizedAspectX::Culong
    tmDigitizedAspectY::Culong
    tmFirstChar::Cuchar
    tmLastChar::Cuchar
    tmDefaultChar::Cuchar
    tmBreakChar::Cuchar
    tmItalic::Cuchar
    tmUnderlined::Cuchar
    tmStruckOut::Cuchar
    tmPitchAndFamily::Cuchar
    tmCharSet::Cuchar
    ntmFlags::Culong
    ntmSizeEM::UInt32
    ntmCellHeight::UInt32
    ntmAvgWidth::UInt32
end


mutable struct NEWTEXTMETRICW
    tmHeight::Culong
    tmAscent::Culong
    tmDescent::Culong
    tmInternalLeading::Culong
    tmExternalLeading::Culong
    tmAveCharWidth::Culong
    tmMaxCharWidth::Culong
    tmWeight::Culong
    tmOverhang::Culong
    tmDigitizedAspectX::Culong
    tmDigitizedAspectY::Culong
    tmFirstChar::Cwchar_t
    tmLastChar::Cwchar_t
    tmDefaultChar::Cwchar_t
    tmBreakChar::Cwchar_t
    tmItalic::Cuchar
    tmUnderlined::Cuchar
    tmStruckOut::Cuchar
    tmPitchAndFamily::Cuchar
    tmCharSet::Cuchar
    ntmFlags::Culong
    ntmSizeEM::UInt32
    ntmCellHeight::UInt32
    ntmAvgWidth::UInt32
end

const NEWTEXTMETRIC = NEWTEXTMETRICW
const LPNEWTEXTMETRIC = Ptr{NEWTEXTMETRICW}

mutable struct NEWTEXTMETRICEXA
    ntmTm::NEWTEXTMETRICA
    ntmFontSig::FONTSIGNATURE
end


mutable struct NEWTEXTMETRICEXW
    ntmTm::NEWTEXTMETRICW
    ntmFontSig::FONTSIGNATURE
end

const NEWTEXTMETRICEX = NEWTEXTMETRICEXW

mutable struct EXTLOGPEN
    elpPenStyle::Culong
    elpWidth::Culong
    elpBrushStyle::UInt32
    elpColor::COLORREF
    elpHatch::Int
    elpNumEntries::Culong
    elpStyleEntry::SVector{1,Culong}
end


mutable struct EXTLOGPEN32
    elpPenStyle::Culong
    elpWidth::Culong
    elpBrushStyle::UInt32
    elpColor::COLORREF
    elpHatch::Culong
    elpNumEntries::Culong
    elpStyleEntry::SVector{1,Culong}
end


mutable struct PALETTEENTRY
    peRed::Cuchar
    peGreen::Cuchar
    peBlue::Cuchar
    peFlags::Cuchar
end


mutable struct LOGPALETTE
    palVersion::Cushort
    palNumEntries::Cushort
    palPalEntry::SVector{1,PALETTEENTRY}
end

const LF_FACESIZE  = 32
const LF_FULLFACESIZE  = 64
const OUT_DEFAULT_PRECIS  = 0
const OUT_STRING_PRECIS  = 1
const OUT_CHARACTER_PRECIS  = 2
const OUT_STROKE_PRECIS  = 3
const OUT_TT_PRECIS  = 4
const OUT_DEVICE_PRECIS  = 5
const OUT_RASTER_PRECIS  = 6
const OUT_TT_ONLY_PRECIS  = 7
const OUT_OUTLINE_PRECIS  = 8
const OUT_SCREEN_OUTLINE_PRECIS  = 9
const OUT_PS_ONLY_PRECIS  = 10
const CLIP_DEFAULT_PRECIS  = 0
const CLIP_CHARACTER_PRECIS  = 1
const CLIP_STROKE_PRECIS  = 2
const DEFAULT_QUALITY  = 0
const DRAFT_QUALITY  = 1
const PROOF_QUALITY  = 2
const NONANTIALIASED_QUALITY  = 3
const ANTIALIASED_QUALITY  = 4
const CLEARTYPE_QUALITY  = 5
const CLEARTYPE_NATURAL_QUALITY  = 6
const DEFAULT_PITCH  = 0
const FIXED_PITCH  = 1
const VARIABLE_PITCH  = 2
const MONO_FONT  = 8
const ANSI_CHARSET  = 0
const DEFAULT_CHARSET  = 1
const SYMBOL_CHARSET  = 2
const SHIFTJIS_CHARSET  = 128
const HANGEUL_CHARSET  = 129
const HANGUL_CHARSET  = 129
const GB2312_CHARSET  = 134
const CHINESEBIG5_CHARSET  = 136
const OEM_CHARSET  = 255
const JOHAB_CHARSET  = 130
const HEBREW_CHARSET  = 177
const ARABIC_CHARSET  = 178
const GREEK_CHARSET  = 161
const TURKISH_CHARSET  = 162
const VIETNAMESE_CHARSET  = 163
const THAI_CHARSET  = 222
const EASTEUROPE_CHARSET  = 238
const RUSSIAN_CHARSET  = 204
const MAC_CHARSET  = 77
const BALTIC_CHARSET  = 186
const FW_DONTCARE  = 0
const FW_THIN  = 100
const FW_EXTRALIGHT  = 200
const FW_LIGHT  = 300
const FW_NORMAL  = 400
const FW_MEDIUM  = 500
const FW_SEMIBOLD  = 600
const FW_BOLD  = 700
const FW_EXTRABOLD  = 800
const FW_HEAVY  = 900
const PANOSE_COUNT  = 10
const PAN_FAMILYTYPE_INDEX  = 0
const PAN_SERIFSTYLE_INDEX  = 1
const PAN_WEIGHT_INDEX  = 2
const PAN_PROPORTION_INDEX  = 3
const PAN_CONTRAST_INDEX  = 4
const PAN_STROKEVARIATION_INDEX  = 5
const PAN_ARMSTYLE_INDEX  = 6
const PAN_LETTERFORM_INDEX  = 7
const PAN_MIDLINE_INDEX  = 8
const PAN_XHEIGHT_INDEX  = 9
const PAN_CULTURE_LATIN  = 0

mutable struct PANOSE
    bFamilyType::Cuchar
    bSerifStyle::Cuchar
    bWeight::Cuchar
    bProportion::Cuchar
    bContrast::Cuchar
    bStrokeVariation::Cuchar
    bArmStyle::Cuchar
    bLetterform::Cuchar
    bMidline::Cuchar
    bXHeight::Cuchar
end

const PAN_ANY  = 0
const PAN_NO_FIT  = 1
const PAN_FAMILY_TEXT_DISPLAY  = 2
const PAN_FAMILY_SCRIPT  = 3
const PAN_FAMILY_DECORATIVE  = 4
const PAN_FAMILY_PICTORIAL  = 5
const PAN_SERIF_COVE  = 2
const PAN_SERIF_OBTUSE_COVE  = 3
const PAN_SERIF_SQUARE_COVE  = 4
const PAN_SERIF_OBTUSE_SQUARE_COVE  = 5
const PAN_SERIF_SQUARE  = 6
const PAN_SERIF_THIN  = 7
const PAN_SERIF_BONE  = 8
const PAN_SERIF_EXAGGERATED  = 9
const PAN_SERIF_TRIANGLE  = 10
const PAN_SERIF_NORMAL_SANS  = 11
const PAN_SERIF_OBTUSE_SANS  = 12
const PAN_SERIF_PERP_SANS  = 13
const PAN_SERIF_FLARED  = 14
const PAN_SERIF_ROUNDED  = 15
const PAN_WEIGHT_VERY_LIGHT  = 2
const PAN_WEIGHT_LIGHT  = 3
const PAN_WEIGHT_THIN  = 4
const PAN_WEIGHT_BOOK  = 5
const PAN_WEIGHT_MEDIUM  = 6
const PAN_WEIGHT_DEMI  = 7
const PAN_WEIGHT_BOLD  = 8
const PAN_WEIGHT_HEAVY  = 9
const PAN_WEIGHT_BLACK  = 10
const PAN_WEIGHT_NORD  = 11
const PAN_PROP_OLD_STYLE  = 2
const PAN_PROP_MODERN  = 3
const PAN_PROP_EVEN_WIDTH  = 4
const PAN_PROP_EXPANDED  = 5
const PAN_PROP_CONDENSED  = 6
const PAN_PROP_VERY_EXPANDED  = 7
const PAN_PROP_VERY_CONDENSED  = 8
const PAN_PROP_MONOSPACED  = 9
const PAN_CONTRAST_NONE  = 2
const PAN_CONTRAST_VERY_LOW  = 3
const PAN_CONTRAST_LOW  = 4
const PAN_CONTRAST_MEDIUM_LOW  = 5
const PAN_CONTRAST_MEDIUM  = 6
const PAN_CONTRAST_MEDIUM_HIGH  = 7
const PAN_CONTRAST_HIGH  = 8
const PAN_CONTRAST_VERY_HIGH  = 9
const PAN_STROKE_GRADUAL_DIAG  = 2
const PAN_STROKE_GRADUAL_TRAN  = 3
const PAN_STROKE_GRADUAL_VERT  = 4
const PAN_STROKE_GRADUAL_HORZ  = 5
const PAN_STROKE_RAPID_VERT  = 6
const PAN_STROKE_RAPID_HORZ  = 7
const PAN_STROKE_INSTANT_VERT  = 8
const PAN_STRAIGHT_ARMS_HORZ  = 2
const PAN_STRAIGHT_ARMS_WEDGE  = 3
const PAN_STRAIGHT_ARMS_VERT  = 4
const PAN_STRAIGHT_ARMS_SINGLE_SERIF  = 5
const PAN_STRAIGHT_ARMS_DOUBLE_SERIF  = 6
const PAN_BENT_ARMS_HORZ  = 7
const PAN_BENT_ARMS_WEDGE  = 8
const PAN_BENT_ARMS_VERT  = 9
const PAN_BENT_ARMS_SINGLE_SERIF  = 10
const PAN_BENT_ARMS_DOUBLE_SERIF  = 11
const PAN_LETT_NORMAL_CONTACT  = 2
const PAN_LETT_NORMAL_WEIGHTED  = 3
const PAN_LETT_NORMAL_BOXED  = 4
const PAN_LETT_NORMAL_FLATTENED  = 5
const PAN_LETT_NORMAL_ROUNDED  = 6
const PAN_LETT_NORMAL_OFF_CENTER  = 7
const PAN_LETT_NORMAL_SQUARE  = 8
const PAN_LETT_OBLIQUE_CONTACT  = 9
const PAN_LETT_OBLIQUE_WEIGHTED  = 10
const PAN_LETT_OBLIQUE_BOXED  = 11
const PAN_LETT_OBLIQUE_FLATTENED  = 12
const PAN_LETT_OBLIQUE_ROUNDED  = 13
const PAN_LETT_OBLIQUE_OFF_CENTER  = 14
const PAN_LETT_OBLIQUE_SQUARE  = 15
const PAN_MIDLINE_STANDARD_TRIMMED  = 2
const PAN_MIDLINE_STANDARD_POINTED  = 3
const PAN_MIDLINE_STANDARD_SERIFED  = 4
const PAN_MIDLINE_HIGH_TRIMMED  = 5
const PAN_MIDLINE_HIGH_POINTED  = 6
const PAN_MIDLINE_HIGH_SERIFED  = 7
const PAN_MIDLINE_CONSTANT_TRIMMED  = 8
const PAN_MIDLINE_CONSTANT_POINTED  = 9
const PAN_MIDLINE_CONSTANT_SERIFED  = 10
const PAN_MIDLINE_LOW_TRIMMED  = 11
const PAN_MIDLINE_LOW_POINTED  = 12
const PAN_MIDLINE_LOW_SERIFED  = 13
const PAN_XHEIGHT_CONSTANT_SMALL  = 2
const PAN_XHEIGHT_CONSTANT_STD  = 3
const PAN_XHEIGHT_CONSTANT_LARGE  = 4
const PAN_XHEIGHT_DUCKING_SMALL  = 5
const PAN_XHEIGHT_DUCKING_STD  = 6
const PAN_XHEIGHT_DUCKING_LARGE  = 7
const ELF_VENDOR_SIZE  = 4
const ELF_VERSION  = 0
const ELF_CULTURE_LATIN  = 0
const TRANSPARENT  = 1
const OPAQUE  = 2
const BKMODE_LAST  = 2
const GM_COMPATIBLE  = 1
const GM_ADVANCED  = 2
const GM_LAST  = 2
const MM_TEXT  = 1
const MM_LOMETRIC  = 2
const MM_HIMETRIC  = 3
const MM_LOENGLISH  = 4
const MM_HIENGLISH  = 5
const MM_TWIPS  = 6
const MM_ISOTROPIC  = 7
const MM_ANISOTROPIC  = 8
const ABSOLUTE  = 1
const RELATIVE  = 2
const WHITE_BRUSH  = 0
const LTGRAY_BRUSH  = 1
const GRAY_BRUSH  = 2
const DKGRAY_BRUSH  = 3
const BLACK_BRUSH  = 4
const NULL_BRUSH  = 5
const WHITE_PEN  = 6
const BLACK_PEN  = 7
const NULL_PEN  = 8
const OEM_FIXED_FONT  = 10
const ANSI_FIXED_FONT  = 11
const ANSI_VAR_FONT  = 12
const SYSTEM_FONT  = 13
const DEVICE_DEFAULT_FONT  = 14
const DEFAULT_PALETTE  = 15
const SYSTEM_FIXED_FONT  = 16
const DEFAULT_GUI_FONT  = 17
const DC_BRUSH  = 18
const DC_PEN  = 19
const STOCK_LAST  = 19
const STOCK_LAST  = 17
const STOCK_LAST  = 16
const BS_SOLID  = 0
const BS_NULL  = 1
const BS_HATCHED  = 2
const BS_PATTERN  = 3
const BS_INDEXED  = 4
const BS_DIBPATTERN  = 5
const BS_DIBPATTERNPT  = 6
const BS_PATTERN8X8  = 7
const BS_DIBPATTERN8X8  = 8
const BS_MONOPATTERN  = 9
const HS_HORIZONTAL  = 0
const HS_VERTICAL  = 1
const HS_FDIAGONAL  = 2
const HS_BDIAGONAL  = 3
const HS_CROSS  = 4
const HS_DIAGCROSS  = 5
const HS_API_MAX  = 12
const PS_SOLID  = 0
const PS_DASH  = 1
const PS_DOT  = 2
const PS_DASHDOT  = 3
const PS_DASHDOTDOT  = 4
const PS_NULL  = 5
const PS_INSIDEFRAME  = 6
const PS_USERSTYLE  = 7
const PS_ALTERNATE  = 8
const AD_COUNTERCLOCKWISE  = 1
const AD_CLOCKWISE  = 2
const DRIVERVERSION  = 0
const TECHNOLOGY  = 2
const HORZSIZE  = 4
const VERTSIZE  = 6
const HORZRES  = 8
const VERTRES  = 10
const BITSPIXEL  = 12
const PLANES  = 14
const NUMBRUSHES  = 16
const NUMPENS  = 18
const NUMMARKERS  = 20
const NUMFONTS  = 22
const NUMCOLORS  = 24
const PDEVICESIZE  = 26
const CURVECAPS  = 28
const LINECAPS  = 30
const POLYGONALCAPS  = 32
const TEXTCAPS  = 34
const CLIPCAPS  = 36
const RASTERCAPS  = 38
const ASPECTX  = 40
const ASPECTY  = 42
const ASPECTXY  = 44
const LOGPIXELSX  = 88
const LOGPIXELSY  = 90
const SIZEPALETTE  = 104
const NUMRESERVED  = 106
const COLORRES  = 108
const PHYSICALWIDTH  = 110
const PHYSICALHEIGHT  = 111
const PHYSICALOFFSETX  = 112
const PHYSICALOFFSETY  = 113
const SCALINGFACTORX  = 114
const SCALINGFACTORY  = 115
const VREFRESH  = 116
const DESKTOPVERTRES  = 117
const DESKTOPHORZRES  = 118
const BLTALIGNMENT  = 119
const SHADEBLENDCAPS  = 120
const COLORMGMTCAPS  = 121
const DT_PLOTTER  = 0
const DT_RASDISPLAY  = 1
const DT_RASPRINTER  = 2
const DT_RASCAMERA  = 3
const DT_CHARSTREAM  = 4
const DT_METAFILE  = 5
const DT_DISPFILE  = 6
const CC_NONE  = 0
const CC_CIRCLES  = 1
const CC_PIE  = 2
const CC_CHORD  = 4
const CC_ELLIPSES  = 8
const CC_WIDE  = 16
const CC_STYLED  = 32
const CC_WIDESTYLED  = 64
const CC_INTERIORS  = 128
const CC_ROUNDRECT  = 256
const LC_NONE  = 0
const LC_POLYLINE  = 2
const LC_MARKER  = 4
const LC_POLYMARKER  = 8
const LC_WIDE  = 16
const LC_STYLED  = 32
const LC_WIDESTYLED  = 64
const LC_INTERIORS  = 128
const PC_NONE  = 0
const PC_POLYGON  = 1
const PC_RECTANGLE  = 2
const PC_WINDPOLYGON  = 4
const PC_TRAPEZOID  = 4
const PC_SCANLINE  = 8
const PC_WIDE  = 16
const PC_STYLED  = 32
const PC_WIDESTYLED  = 64
const PC_INTERIORS  = 128
const PC_POLYPOLYGON  = 256
const PC_PATHS  = 512
const CP_NONE  = 0
const CP_RECTANGLE  = 1
const CP_REGION  = 2
const RC_BITBLT  = 1
const RC_BANDING  = 2
const RC_SCALING  = 4
const RC_BITMAP64  = 8
const DIB_RGB_COLORS  = 0
const DIB_PAL_COLORS  = 1
const SYSPAL_ERROR  = 0
const SYSPAL_STATIC  = 1
const SYSPAL_NOSTATIC  = 2
const SYSPAL_NOSTATIC256  = 3
const CCHDEVICENAME  = 32
const CCHFORMNAME  = 32
const DMORIENT_PORTRAIT  = 1
const DMORIENT_LANDSCAPE  = 2
const DMPAPER_LETTER  = 1
const DMPAPER_LETTERSMALL  = 2
const DMPAPER_TABLOID  = 3
const DMPAPER_LEDGER  = 4
const DMPAPER_LEGAL  = 5
const DMPAPER_STATEMENT  = 6
const DMPAPER_EXECUTIVE  = 7
const DMPAPER_A3  = 8
const DMPAPER_A4  = 9
const DMPAPER_A4SMALL  = 10
const DMPAPER_A5  = 11
const DMPAPER_B4  = 12
const DMPAPER_B5  = 13
const DMPAPER_FOLIO  = 14
const DMPAPER_QUARTO  = 15
const DMPAPER_10X14  = 16
const DMPAPER_11X17  = 17
const DMPAPER_NOTE  = 18
const DMPAPER_ENV_9  = 19
const DMPAPER_ENV_10  = 20
const DMPAPER_ENV_11  = 21
const DMPAPER_ENV_12  = 22
const DMPAPER_ENV_14  = 23
const DMPAPER_CSHEET  = 24
const DMPAPER_DSHEET  = 25
const DMPAPER_ESHEET  = 26
const DMPAPER_ENV_DL  = 27
const DMPAPER_ENV_C5  = 28
const DMPAPER_ENV_C3  = 29
const DMPAPER_ENV_C4  = 30
const DMPAPER_ENV_C6  = 31
const DMPAPER_ENV_C65  = 32
const DMPAPER_ENV_B4  = 33
const DMPAPER_ENV_B5  = 34
const DMPAPER_ENV_B6  = 35
const DMPAPER_ENV_ITALY  = 36
const DMPAPER_ENV_MONARCH  = 37
const DMPAPER_ENV_PERSONAL  = 38
const DMPAPER_FANFOLD_US  = 39
const DMPAPER_FANFOLD_STD_GERMAN  = 40
const DMPAPER_FANFOLD_LGL_GERMAN  = 41
const DMPAPER_ISO_B4  = 42
const DMPAPER_JAPANESE_POSTCARD  = 43
const DMPAPER_9X11  = 44
const DMPAPER_10X11  = 45
const DMPAPER_15X11  = 46
const DMPAPER_ENV_INVITE  = 47
const DMPAPER_RESERVED_48  = 48
const DMPAPER_RESERVED_49  = 49
const DMPAPER_LETTER_EXTRA  = 50
const DMPAPER_LEGAL_EXTRA  = 51
const DMPAPER_TABLOID_EXTRA  = 52
const DMPAPER_A4_EXTRA  = 53
const DMPAPER_LETTER_TRANSVERSE  = 54
const DMPAPER_A4_TRANSVERSE  = 55
const DMPAPER_LETTER_EXTRA_TRANSVERSE  = 56
const DMPAPER_A_PLUS  = 57
const DMPAPER_B_PLUS  = 58
const DMPAPER_LETTER_PLUS  = 59
const DMPAPER_A4_PLUS  = 60
const DMPAPER_A5_TRANSVERSE  = 61
const DMPAPER_B5_TRANSVERSE  = 62
const DMPAPER_A3_EXTRA  = 63
const DMPAPER_A5_EXTRA  = 64
const DMPAPER_B5_EXTRA  = 65
const DMPAPER_A2  = 66
const DMPAPER_A3_TRANSVERSE  = 67
const DMPAPER_A3_EXTRA_TRANSVERSE  = 68
const DMPAPER_DBL_JAPANESE_POSTCARD  = 69
const DMPAPER_A6  = 70
const DMPAPER_JENV_KAKU2  = 71
const DMPAPER_JENV_KAKU3  = 72
const DMPAPER_JENV_CHOU3  = 73
const DMPAPER_JENV_CHOU4  = 74
const DMPAPER_LETTER_ROTATED  = 75
const DMPAPER_A3_ROTATED  = 76
const DMPAPER_A4_ROTATED  = 77
const DMPAPER_A5_ROTATED  = 78
const DMPAPER_B4_JIS_ROTATED  = 79
const DMPAPER_B5_JIS_ROTATED  = 80
const DMPAPER_JAPANESE_POSTCARD_ROTATED  = 81
const DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED  = 82
const DMPAPER_A6_ROTATED  = 83
const DMPAPER_JENV_KAKU2_ROTATED  = 84
const DMPAPER_JENV_KAKU3_ROTATED  = 85
const DMPAPER_JENV_CHOU3_ROTATED  = 86
const DMPAPER_JENV_CHOU4_ROTATED  = 87
const DMPAPER_B6_JIS  = 88
const DMPAPER_B6_JIS_ROTATED  = 89
const DMPAPER_12X11  = 90
const DMPAPER_JENV_YOU4  = 91
const DMPAPER_JENV_YOU4_ROTATED  = 92
const DMPAPER_P16K  = 93
const DMPAPER_P32K  = 94
const DMPAPER_P32KBIG  = 95
const DMPAPER_PENV_1  = 96
const DMPAPER_PENV_2  = 97
const DMPAPER_PENV_3  = 98
const DMPAPER_PENV_4  = 99
const DMPAPER_PENV_5  = 100
const DMPAPER_PENV_6  = 101
const DMPAPER_PENV_7  = 102
const DMPAPER_PENV_8  = 103
const DMPAPER_PENV_9  = 104
const DMPAPER_PENV_10  = 105
const DMPAPER_P16K_ROTATED  = 106
const DMPAPER_P32K_ROTATED  = 107
const DMPAPER_P32KBIG_ROTATED  = 108
const DMPAPER_PENV_1_ROTATED  = 109
const DMPAPER_PENV_2_ROTATED  = 110
const DMPAPER_PENV_3_ROTATED  = 111
const DMPAPER_PENV_4_ROTATED  = 112
const DMPAPER_PENV_5_ROTATED  = 113
const DMPAPER_PENV_6_ROTATED  = 114
const DMPAPER_PENV_7_ROTATED  = 115
const DMPAPER_PENV_8_ROTATED  = 116
const DMPAPER_PENV_9_ROTATED  = 117
const DMPAPER_PENV_10_ROTATED  = 118
const DMPAPER_USER  = 256
const DMBIN_UPPER  = 1
const DMBIN_ONLYONE  = 1
const DMBIN_LOWER  = 2
const DMBIN_MIDDLE  = 3
const DMBIN_MANUAL  = 4
const DMBIN_ENVELOPE  = 5
const DMBIN_ENVMANUAL  = 6
const DMBIN_AUTO  = 7
const DMBIN_TRACTOR  = 8
const DMBIN_SMALLFMT  = 9
const DMBIN_LARGEFMT  = 10
const DMBIN_LARGECAPACITY  = 11
const DMBIN_CASSETTE  = 14
const DMBIN_FORMSOURCE  = 15
const DMBIN_USER  = 256
const DMCOLOR_MONOCHROME  = 1
const DMCOLOR_COLOR  = 2
const DMDUP_SIMPLEX  = 1
const DMDUP_VERTICAL  = 2
const DMDUP_HORIZONTAL  = 3
const DMTT_BITMAP  = 1
const DMTT_DOWNLOAD  = 2
const DMTT_SUBDEV  = 3
const DMTT_DOWNLOAD_OUTLINE  = 4
const DMCOLLATE_FALSE  = 0
const DMCOLLATE_TRUE  = 1
const DMDO_DEFAULT  = 0
const DMDO_90  = 1
const DMDO_180  = 2
const DMDO_270  = 3
const DMDFO_DEFAULT  = 0
const DMDFO_STRETCH  = 1
const DMDFO_CENTER  = 2
const DMNUP_SYSTEM  = 1
const DMNUP_ONEUP  = 2
const DMICMMETHOD_NONE  = 1
const DMICMMETHOD_SYSTEM  = 2
const DMICMMETHOD_DRIVER  = 3
const DMICMMETHOD_DEVICE  = 4
const DMICMMETHOD_USER  = 256
const DMICM_SATURATE  = 1
const DMICM_CONTRAST  = 2
const DMICM_COLORIMETRIC  = 3
const DMICM_ABS_COLORIMETRIC  = 4
const DMICM_USER  = 256
const DMMEDIA_STANDARD  = 1
const DMMEDIA_TRANSPARENCY  = 2
const DMMEDIA_GLOSSY  = 3
const DMMEDIA_USER  = 256
const DMDITHER_NONE  = 1
const DMDITHER_COARSE  = 2
const DMDITHER_FINE  = 3
const DMDITHER_LINEART  = 4
const DMDITHER_ERRORDIFFUSION  = 5
const DMDITHER_RESERVED6  = 6
const DMDITHER_RESERVED7  = 7
const DMDITHER_RESERVED8  = 8
const DMDITHER_RESERVED9  = 9
const DMDITHER_GRAYSCALE  = 10
const DMDITHER_USER  = 256

mutable struct DISPLAY_DEVICEA
    cb::Culong
    DeviceName::SVector{32,Cchar}
    DeviceString::SVector{128,Cchar}
    StateFlags::Culong
    DeviceID::SVector{128,Cchar}
    DeviceKey::SVector{128,Cchar}
end


mutable struct DISPLAY_DEVICEW
    cb::Culong
    DeviceName::SVector{32,Cwchar_t}
    DeviceString::SVector{128,Cwchar_t}
    StateFlags::Culong
    DeviceID::SVector{128,Cwchar_t}
    DeviceKey::SVector{128,Cwchar_t}
end

const DISPLAY_DEVICE = DISPLAY_DEVICEW
const LPDISPLAY_DEVICE = Ptr{DISPLAY_DEVICEW}
const DISPLAYCONFIG_MAXPATH  = 1024
const RDH_RECTANGLES  = 1

mutable struct RGNDATAHEADER
    dwSize::Culong
    iType::Culong
    nCount::Culong
    nRgnSize::Culong
    rcBound::RECT
end


mutable struct RGNDATA
    rdh::RGNDATAHEADER
    Buffer::SVector{1,Cchar}
end

const SYSRGN  = 4

mutable struct ABC
    abcA::Cint
    abcB::UInt32
    abcC::Cint
end


mutable struct ABCFLOAT
    abcfA::Cfloat
    abcfB::Cfloat
    abcfC::Cfloat
end


mutable struct OUTLINETEXTMETRICA
    otmSize::UInt32
    otmTextMetrics::TEXTMETRICA
    otmFiller::Cuchar
    otmPanoseNumber::PANOSE
    otmfsSelection::UInt32
    otmfsType::UInt32
    otmsCharSlopeRise::Cint
    otmsCharSlopeRun::Cint
    otmItalicAngle::Cint
    otmEMSquare::UInt32
    otmAscent::Cint
    otmDescent::Cint
    otmLineGap::UInt32
    otmsCapEmHeight::UInt32
    otmsXHeight::UInt32
    otmrcFontBox::RECT
    otmMacAscent::Cint
    otmMacDescent::Cint
    otmMacLineGap::UInt32
    otmusMinimumPPEM::UInt32
    otmptSubscriptSize::POINT
    otmptSubscriptOffset::POINT
    otmptSuperscriptSize::POINT
    otmptSuperscriptOffset::POINT
    otmsStrikeoutSize::UInt32
    otmsStrikeoutPosition::Cint
    otmsUnderscoreSize::Cint
    otmsUnderscorePosition::Cint
    otmpFamilyName::Ptr{Cchar}
    otmpFaceName::Ptr{Cchar}
    otmpStyleName::Ptr{Cchar}
    otmpFullName::Ptr{Cchar}
end


mutable struct OUTLINETEXTMETRICW
    otmSize::UInt32
    otmTextMetrics::TEXTMETRICW
    otmFiller::Cuchar
    otmPanoseNumber::PANOSE
    otmfsSelection::UInt32
    otmfsType::UInt32
    otmsCharSlopeRise::Cint
    otmsCharSlopeRun::Cint
    otmItalicAngle::Cint
    otmEMSquare::UInt32
    otmAscent::Cint
    otmDescent::Cint
    otmLineGap::UInt32
    otmsCapEmHeight::UInt32
    otmsXHeight::UInt32
    otmrcFontBox::RECT
    otmMacAscent::Cint
    otmMacDescent::Cint
    otmMacLineGap::UInt32
    otmusMinimumPPEM::UInt32
    otmptSubscriptSize::POINT
    otmptSubscriptOffset::POINT
    otmptSuperscriptSize::POINT
    otmptSuperscriptOffset::POINT
    otmsStrikeoutSize::UInt32
    otmsStrikeoutPosition::Cint
    otmsUnderscoreSize::Cint
    otmsUnderscorePosition::Cint
    otmpFamilyName::Ptr{Cchar}
    otmpFaceName::Ptr{Cchar}
    otmpStyleName::Ptr{Cchar}
    otmpFullName::Ptr{Cchar}
end

const OUTLINETEXTMETRIC = OUTLINETEXTMETRICW
const LPOUTLINETEXTMETRIC = Ptr{OUTLINETEXTMETRICW}

mutable struct POLYTEXTA
    x::Cint
    y::Cint
    n::UInt32
    lpstr::Ptr{Cchar}
    uiFlags::UInt32
    rcl::RECT
    pdx::Ptr{Cint}
end


mutable struct POLYTEXTW
    x::Cint
    y::Cint
    n::UInt32
    lpstr::Ptr{Cwchar_t}
    uiFlags::UInt32
    rcl::RECT
    pdx::Ptr{Cint}
end

const POLYTEXT = POLYTEXTW
const LPPOLYTEXT = Ptr{POLYTEXTW}
const GGO_METRICS  = 0
const GGO_BITMAP  = 1
const GGO_NATIVE  = 2
const GGO_BEZIER  = 3
const TT_POLYGON_TYPE  = 24
const TT_PRIM_LINE  = 1
const TT_PRIM_QSPLINE  = 2
const TT_PRIM_CSPLINE  = 3
const GCPCLASS_LATIN  = 1
const GCPCLASS_HEBREW  = 2
const GCPCLASS_ARABIC  = 2
const GCPCLASS_NEUTRAL  = 3
const GCPCLASS_LOCALNUMBER  = 4
const GCPCLASS_LATINNUMBER  = 5
const GCPCLASS_LATINNUMERICTERMINATOR  = 6
const GCPCLASS_LATINNUMERICSEPARATOR  = 7
const GCPCLASS_NUMERICSEPARATOR  = 8

mutable struct PIXELFORMATDESCRIPTOR
    nSize::Cushort
    nVersion::Cushort
    dwFlags::Culong
    iPixelType::Cuchar
    cColorBits::Cuchar
    cRedBits::Cuchar
    cRedShift::Cuchar
    cGreenBits::Cuchar
    cGreenShift::Cuchar
    cBlueBits::Cuchar
    cBlueShift::Cuchar
    cAlphaBits::Cuchar
    cAlphaShift::Cuchar
    cAccumBits::Cuchar
    cAccumRedBits::Cuchar
    cAccumGreenBits::Cuchar
    cAccumBlueBits::Cuchar
    cAccumAlphaBits::Cuchar
    cDepthBits::Cuchar
    cStencilBits::Cuchar
    cAuxBuffers::Cuchar
    iLayerType::Cuchar
    bReserved::Cuchar
    dwLayerMask::Culong
    dwVisibleMask::Culong
    dwDamageMask::Culong
end

const PFD_TYPE_RGBA  = 0
const PFD_TYPE_COLORINDEX  = 1
const PFD_MAIN_PLANE  = 0
const PFD_OVERLAY_PLANE  = 1
const DM_UPDATE  = 1
const DM_COPY  = 2
const DM_PROMPT  = 4
const DM_MODIFY  = 8
const DC_FIELDS  = 1
const DC_PAPERS  = 2
const DC_PAPERSIZE  = 3
const DC_MINEXTENT  = 4
const DC_MAXEXTENT  = 5
const DC_BINS  = 6
const DC_DUPLEX  = 7
const DC_SIZE  = 8
const DC_EXTRA  = 9
const DC_VERSION  = 10
const DC_DRIVER  = 11
const DC_BINNAMES  = 12
const DC_ENUMRESOLUTIONS  = 13
const DC_FILEDEPENDENCIES  = 14
const DC_TRUETYPE  = 15
const DC_PAPERNAMES  = 16
const DC_ORIENTATION  = 17
const DC_COPIES  = 18
const DC_BINADJUST  = 19
const DC_EMF_COMPLIANT  = 20
const DC_DATATYPE_PRODUCED  = 21
const DC_COLLATE  = 22
const DC_MANUFACTURER  = 23
const DC_MODEL  = 24
const DC_PERSONALITY  = 25
const DC_PRINTRATE  = 26
const DC_PRINTRATEUNIT  = 27
const DC_PRINTERMEM  = 28
const DC_MEDIAREADY  = 29
const DC_STAPLE  = 30
const DC_PRINTRATEPPM  = 31
const DC_COLORDEVICE  = 32
const DC_NUP  = 33
const DC_MEDIATYPENAMES  = 34
const DC_MEDIATYPES  = 35

mutable struct WCRANGE
    wcLow::Cwchar_t
    cGlyphs::Cushort
end


mutable struct GLYPHSET
    cbThis::Culong
    flAccel::Culong
    cGlyphsSupported::Culong
    cRanges::Culong
    ranges::SVector{1,WCRANGE}
end

const MM_MAX_NUMAXES  = 16
const MM_MAX_AXES_NAMELEN  = 16
const COLOR16 = Cushort

mutable struct TRIVERTEX
    x::Culong
    y::Culong
    Red::COLOR16
    Green::COLOR16
    Blue::COLOR16
    Alpha::COLOR16
end


mutable struct GRADIENT_TRIANGLE
    Vertex1::Culong
    Vertex2::Culong
    Vertex3::Culong
end


mutable struct GRADIENT_RECT
    UpperLeft::Culong
    LowerRight::Culong
end


mutable struct BLENDFUNCTION
    BlendOp::Cuchar
    BlendFlags::Cuchar
    SourceConstantAlpha::Cuchar
    AlphaFormat::Cuchar
end

const ILLUMINANT_DEVICE_DEFAULT  = 0
const ILLUMINANT_A  = 1
const ILLUMINANT_B  = 2
const ILLUMINANT_C  = 3
const ILLUMINANT_D50  = 4
const ILLUMINANT_D55  = 5
const ILLUMINANT_D65  = 6
const ILLUMINANT_D75  = 7
const ILLUMINANT_F2  = 8

mutable struct DOCINFOA
    cbSize::Cint
    lpszDocName::Ptr{Cchar}
    lpszOutput::Ptr{Cchar}
    lpszDatatype::Ptr{Cchar}
    fwType::Culong
end


mutable struct DOCINFOW
    cbSize::Cint
    lpszDocName::Ptr{Cwchar_t}
    lpszOutput::Ptr{Cwchar_t}
    lpszDatatype::Ptr{Cwchar_t}
    fwType::Culong
end

const DOCINFO = DOCINFOW
const LPDOCINFO = Ptr{DOCINFOW}
const FONTMAPPER_MAX  = 10

mutable struct KERNINGPAIR
    wFirst::Cushort
    wSecond::Cushort
    iKernAmount::Cint
end

const ICM_OFF  = 1
const ICM_ON  = 2
const ICM_QUERY  = 3
const ICM_DONE_OUTSIDEDC  = 4
const EMR_HEADER  = 1
const EMR_POLYBEZIER  = 2
const EMR_POLYGON  = 3
const EMR_POLYLINE  = 4
const EMR_POLYBEZIERTO  = 5
const EMR_POLYLINETO  = 6
const EMR_POLYPOLYLINE  = 7
const EMR_POLYPOLYGON  = 8
const EMR_SETWINDOWEXTEX  = 9
const EMR_SETWINDOWORGEX  = 10
const EMR_SETVIEWPORTEXTEX  = 11
const EMR_SETVIEWPORTORGEX  = 12
const EMR_SETBRUSHORGEX  = 13
const EMR_EOF  = 14
const EMR_SETPIXELV  = 15
const EMR_SETMAPPERFLAGS  = 16
const EMR_SETMAPMODE  = 17
const EMR_SETBKMODE  = 18
const EMR_SETPOLYFILLMODE  = 19
const EMR_SETROP2  = 20
const EMR_SETSTRETCHBLTMODE  = 21
const EMR_SETTEXTALIGN  = 22
const EMR_SETCOLORADJUSTMENT  = 23
const EMR_SETTEXTCOLOR  = 24
const EMR_SETBKCOLOR  = 25
const EMR_OFFSETCLIPRGN  = 26
const EMR_MOVETOEX  = 27
const EMR_SETMETARGN  = 28
const EMR_EXCLUDECLIPRECT  = 29
const EMR_INTERSECTCLIPRECT  = 30
const EMR_SCALEVIEWPORTEXTEX  = 31
const EMR_SCALEWINDOWEXTEX  = 32
const EMR_SAVEDC  = 33
const EMR_RESTOREDC  = 34
const EMR_SETWORLDTRANSFORM  = 35
const EMR_MODIFYWORLDTRANSFORM  = 36
const EMR_SELECTOBJECT  = 37
const EMR_CREATEPEN  = 38
const EMR_CREATEBRUSHINDIRECT  = 39
const EMR_DELETEOBJECT  = 40
const EMR_ANGLEARC  = 41
const EMR_ELLIPSE  = 42
const EMR_RECTANGLE  = 43
const EMR_ROUNDRECT  = 44
const EMR_ARC  = 45
const EMR_CHORD  = 46
const EMR_PIE  = 47
const EMR_SELECTPALETTE  = 48
const EMR_CREATEPALETTE  = 49
const EMR_SETPALETTEENTRIES  = 50
const EMR_RESIZEPALETTE  = 51
const EMR_REALIZEPALETTE  = 52
const EMR_EXTFLOODFILL  = 53
const EMR_LINETO  = 54
const EMR_ARCTO  = 55
const EMR_POLYDRAW  = 56
const EMR_SETARCDIRECTION  = 57
const EMR_SETMITERLIMIT  = 58
const EMR_BEGINPATH  = 59
const EMR_ENDPATH  = 60
const EMR_CLOSEFIGURE  = 61
const EMR_FILLPATH  = 62
const EMR_STROKEANDFILLPATH  = 63
const EMR_STROKEPATH  = 64
const EMR_FLATTENPATH  = 65
const EMR_WIDENPATH  = 66
const EMR_SELECTCLIPPATH  = 67
const EMR_ABORTPATH  = 68
const EMR_GDICOMMENT  = 70
const EMR_FILLRGN  = 71
const EMR_FRAMERGN  = 72
const EMR_INVERTRGN  = 73
const EMR_PAINTRGN  = 74
const EMR_EXTSELECTCLIPRGN  = 75
const EMR_BITBLT  = 76
const EMR_STRETCHBLT  = 77
const EMR_MASKBLT  = 78
const EMR_PLGBLT  = 79
const EMR_SETDIBITSTODEVICE  = 80
const EMR_STRETCHDIBITS  = 81
const EMR_EXTCREATEFONTINDIRECTW  = 82
const EMR_EXTTEXTOUTA  = 83
const EMR_EXTTEXTOUTW  = 84
const EMR_POLYBEZIER16  = 85
const EMR_POLYGON16  = 86
const EMR_POLYLINE16  = 87
const EMR_POLYBEZIERTO16  = 88
const EMR_POLYLINETO16  = 89
const EMR_POLYPOLYLINE16  = 90
const EMR_POLYPOLYGON16  = 91
const EMR_POLYDRAW16  = 92
const EMR_CREATEMONOBRUSH  = 93
const EMR_CREATEDIBPATTERNBRUSHPT  = 94
const EMR_EXTCREATEPEN  = 95
const EMR_POLYTEXTOUTA  = 96
const EMR_POLYTEXTOUTW  = 97
const EMR_SETICMMODE  = 98
const EMR_CREATECOLORSPACE  = 99
const EMR_SETCOLORSPACE  = 100
const EMR_DELETECOLORSPACE  = 101
const EMR_GLSRECORD  = 102
const EMR_GLSBOUNDEDRECORD  = 103
const EMR_PIXELFORMAT  = 104
const EMR_RESERVED_105  = 105
const EMR_RESERVED_106  = 106
const EMR_RESERVED_107  = 107
const EMR_RESERVED_108  = 108
const EMR_RESERVED_109  = 109
const EMR_RESERVED_110  = 110
const EMR_COLORCORRECTPALETTE  = 111
const EMR_SETICMPROFILEA  = 112
const EMR_SETICMPROFILEW  = 113
const EMR_ALPHABLEND  = 114
const EMR_SETLAYOUT  = 115
const EMR_TRANSPARENTBLT  = 116
const EMR_RESERVED_117  = 117
const EMR_GRADIENTFILL  = 118
const EMR_RESERVED_119  = 119
const EMR_RESERVED_120  = 120
const EMR_COLORMATCHTOTARGETW  = 121
const EMR_CREATECOLORSPACEW  = 122
const EMR_MIN  = 1
const EMR_MAX  = 122
const EMR_MAX  = 104
const EMR_MAX  = 97

mutable struct EMR
    iType::Culong
    nSize::Culong
end


mutable struct EMRTEXT
    ptlReference::POINTL
    nChars::Culong
    offString::Culong
    fOptions::Culong
    rcl::RECTL
    offDx::Culong
end


mutable struct EMRSETMITERLIMIT
    emr::EMR
    eMiterLimit::Cfloat
end


mutable struct EMRRESTOREDC
    emr::EMR
    iRelative::Culong
end


mutable struct EMRSETARCDIRECTION
    emr::EMR
    iArcDirection::Culong
end


mutable struct EMRSETMAPPERFLAGS
    emr::EMR
    dwFlags::Culong
end


mutable struct EMRSELECTPALETTE
    emr::EMR
    ihPal::Culong
end


mutable struct EMRRESIZEPALETTE
    emr::EMR
    ihPal::Culong
    cEntries::Culong
end


mutable struct EMRSETPALETTEENTRIES
    emr::EMR
    ihPal::Culong
    iStart::Culong
    cEntries::Culong
    aPalEntries::SVector{1,PALETTEENTRY}
end


mutable struct EMRGDICOMMENT
    emr::EMR
    cbData::Culong
    Data::SVector{1,Cuchar}
end


mutable struct EMREOF
    emr::EMR
    nPalEntries::Culong
    offPalEntries::Culong
    nSizeLast::Culong
end


mutable struct EMROFFSETCLIPRGN
    emr::EMR
    ptlOffset::POINTL
end


mutable struct EMRSETPIXELV
    emr::EMR
    ptlPixel::POINTL
    crColor::COLORREF
end


mutable struct EMREXTFLOODFILL
    emr::EMR
    ptlStart::POINTL
    crColor::COLORREF
    iMode::Culong
end


mutable struct EMRROUNDRECT
    emr::EMR
    rclBox::RECTL
    szlCorner::SIZEL
end


mutable struct EMRANGLEARC
    emr::EMR
    ptlCenter::POINTL
    nRadius::Culong
    eStartAngle::Cfloat
    eSweepAngle::Cfloat
end


mutable struct EMRPOLYDRAW
    emr::EMR
    rclBounds::RECTL
    cptl::Culong
    aptl::SVector{1,POINTL}
    abTypes::SVector{1,Cuchar}
end


mutable struct EMRPOLYDRAW16
    emr::EMR
    rclBounds::RECTL
    cpts::Culong
    apts::SVector{1,POINTS}
    abTypes::SVector{1,Cuchar}
end


mutable struct EMRFILLRGN
    emr::EMR
    rclBounds::RECTL
    cbRgnData::Culong
    ihBrush::Culong
    RgnData::SVector{1,Cuchar}
end


mutable struct EMRFRAMERGN
    emr::EMR
    rclBounds::RECTL
    cbRgnData::Culong
    ihBrush::Culong
    szlStroke::SIZEL
    RgnData::SVector{1,Cuchar}
end


mutable struct EMREXTSELECTCLIPRGN
    emr::EMR
    cbRgnData::Culong
    iMode::Culong
    RgnData::SVector{1,Cuchar}
end


mutable struct EMRSETDIBITSTODEVICE
    emr::EMR
    rclBounds::RECTL
    xDest::Culong
    yDest::Culong
    xSrc::Culong
    ySrc::Culong
    cxSrc::Culong
    cySrc::Culong
    offBmiSrc::Culong
    cbBmiSrc::Culong
    offBitsSrc::Culong
    cbBitsSrc::Culong
    iUsageSrc::Culong
    iStartScan::Culong
    cScans::Culong
end


mutable struct EMRSTRETCHDIBITS
    emr::EMR
    rclBounds::RECTL
    xDest::Culong
    yDest::Culong
    xSrc::Culong
    ySrc::Culong
    cxSrc::Culong
    cySrc::Culong
    offBmiSrc::Culong
    cbBmiSrc::Culong
    offBitsSrc::Culong
    cbBitsSrc::Culong
    iUsageSrc::Culong
    dwRop::Culong
    cxDest::Culong
    cyDest::Culong
end


mutable struct EMRCREATEPALETTE
    emr::EMR
    ihPal::Culong
    lgpl::LOGPALETTE
end


mutable struct EMREXTCREATEPEN
    emr::EMR
    ihPen::Culong
    offBmi::Culong
    cbBmi::Culong
    offBits::Culong
    cbBits::Culong
    elp::EXTLOGPEN32
end


mutable struct EMRCREATEMONOBRUSH
    emr::EMR
    ihBrush::Culong
    iUsage::Culong
    offBmi::Culong
    cbBmi::Culong
    offBits::Culong
    cbBits::Culong
end


mutable struct EMRCREATEDIBPATTERNBRUSHPT
    emr::EMR
    ihBrush::Culong
    iUsage::Culong
    offBmi::Culong
    cbBmi::Culong
    offBits::Culong
    cbBits::Culong
end


mutable struct EMRFORMAT
    dSignature::Culong
    nVersion::Culong
    cbData::Culong
    offData::Culong
end


mutable struct EMRGLSRECORD
    emr::EMR
    cbData::Culong
    Data::SVector{1,Cuchar}
end


mutable struct EMRGLSBOUNDEDRECORD
    emr::EMR
    rclBounds::RECTL
    cbData::Culong
    Data::SVector{1,Cuchar}
end


mutable struct EMRPIXELFORMAT
    emr::EMR
    pfd::PIXELFORMATDESCRIPTOR
end


mutable struct EMRNAMEDESCAPE
    emr::EMR
    iEscape::Int32
    cbDriver::Int32
    cbEscData::Int32
    EscData::SVector{1,Cuchar}
end


mutable struct COLORMATCHTOTARGET
    emr::EMR
    dwAction::Culong
    dwFlags::Culong
    cbName::Culong
    cbData::Culong
    Data::SVector{1,Cuchar}
end


mutable struct COLORCORRECTPALETTE
    emr::EMR
    ihPalette::Culong
    nFirstEntry::Culong
    nPalEntries::Culong
    nReserved::Culong
end


mutable struct EMRGRADIENTFILL
    emr::EMR
    rclBounds::RECTL
    nVer::Culong
    nTri::Culong
    ulMode::Culong
    Ver::SVector{1,TRIVERTEX}
end


mutable struct POINTFLOAT
    x::Cfloat
    y::Cfloat
end


mutable struct GLYPHMETRICSFLOAT
    gmfBlackBoxX::Cfloat
    gmfBlackBoxY::Cfloat
    gmfptGlyphOrigin::POINTFLOAT
    gmfCellIncX::Cfloat
    gmfCellIncY::Cfloat
end

const WGL_FONT_LINES  = 0
const WGL_FONT_POLYGONS  = 1

mutable struct LAYERPLANEDESCRIPTOR
    nSize::Cushort
    nVersion::Cushort
    dwFlags::Culong
    iPixelType::Cuchar
    cColorBits::Cuchar
    cRedBits::Cuchar
    cRedShift::Cuchar
    cGreenBits::Cuchar
    cGreenShift::Cuchar
    cBlueBits::Cuchar
    cBlueShift::Cuchar
    cAlphaBits::Cuchar
    cAlphaShift::Cuchar
    cAccumBits::Cuchar
    cAccumRedBits::Cuchar
    cAccumGreenBits::Cuchar
    cAccumBlueBits::Cuchar
    cAccumAlphaBits::Cuchar
    cDepthBits::Cuchar
    cStencilBits::Cuchar
    cAuxBuffers::Cuchar
    iLayerPlane::Cuchar
    bReserved::Cuchar
    crTransparent::COLORREF
end

const LPD_TYPE_RGBA  = 0
const LPD_TYPE_COLORINDEX  = 1
const WGL_SWAPMULTIPLE_MAX  = 16
const HDWP = Ptr{Cvoid}
const MENUTEMPLATEA = Cvoid
const MENUTEMPLATEW = Cvoid
const MENUTEMPLATE = MENUTEMPLATEW
const LPMENUTEMPLATEA = Ptr{Cvoid}
const LPMENUTEMPLATEW = Ptr{Cvoid}
const LPMENUTEMPLATE = LPMENUTEMPLATEW
const DIFFERENCE  = 11
const RT_MANIFEST  = 24
const CREATEPROCESS_MANIFEST_RESOURCE_ID  = 1
const ISOLATIONAWARE_MANIFEST_RESOURCE_ID  = 2
const ISOLATIONAWARE_NOSTATICIMPORT_MANIFEST_RESOURCE_ID  = 3
const ISOLATIONPOLICY_MANIFEST_RESOURCE_ID  = 4
const ISOLATIONPOLICY_BROWSER_MANIFEST_RESOURCE_ID  = 5
const MINIMUM_RESERVED_MANIFEST_RESOURCE_ID  = 1
const MAXIMUM_RESERVED_MANIFEST_RESOURCE_ID  = 16
const SB_HORZ  = 0
const SB_VERT  = 1
const SB_CTL  = 2
const SB_BOTH  = 3
const SB_LINEUP  = 0
const SB_LINELEFT  = 0
const SB_LINEDOWN  = 1
const SB_LINERIGHT  = 1
const SB_PAGEUP  = 2
const SB_PAGELEFT  = 2
const SB_PAGEDOWN  = 3
const SB_PAGERIGHT  = 3
const SB_THUMBPOSITION  = 4
const SB_THUMBTRACK  = 5
const SB_TOP  = 6
const SB_LEFT  = 6
const SB_BOTTOM  = 7
const SB_RIGHT  = 7
const SB_ENDSCROLL  = 8
const SW_HIDE  = 0
const SW_SHOWNORMAL  = 1
const SW_NORMAL  = 1
const SW_SHOWMINIMIZED  = 2
const SW_SHOWMAXIMIZED  = 3
const SW_MAXIMIZE  = 3
const SW_SHOWNOACTIVATE  = 4
const SW_SHOW  = 5
const SW_MINIMIZE  = 6
const SW_SHOWMINNOACTIVE  = 7
const SW_SHOWNA  = 8
const SW_RESTORE  = 9
const SW_SHOWDEFAULT  = 10
const SW_FORCEMINIMIZE  = 11
const SW_MAX  = 11
const HIDE_WINDOW  = 0
const SHOW_OPENWINDOW  = 1
const SHOW_ICONWINDOW  = 2
const SHOW_FULLSCREEN  = 3
const SHOW_OPENNOACTIVATE  = 4
const SW_PARENTCLOSING  = 1
const SW_OTHERZOOM  = 2
const SW_PARENTOPENING  = 3
const SW_OTHERUNZOOM  = 4
const WH_JOURNALRECORD  = 0
const WH_JOURNALPLAYBACK  = 1
const WH_KEYBOARD  = 2
const WH_GETMESSAGE  = 3
const WH_CALLWNDPROC  = 4
const WH_CBT  = 5
const WH_SYSMSGFILTER  = 6
const WH_MOUSE  = 7
const WH_HARDWARE  = 8
const WH_DEBUG  = 9
const WH_SHELL  = 10
const WH_FOREGROUNDIDLE  = 11
const WH_CALLWNDPROCRET  = 12
const WH_KEYBOARD_LL  = 13
const WH_MOUSE_LL  = 14
const WH_MAX  = 14
const WH_MAX  = 12
const WH_MAX  = 11
const HC_ACTION  = 0
const HC_GETNEXT  = 1
const HC_SKIP  = 2
const HC_NOREMOVE  = 3
const HC_SYSMODALON  = 4
const HC_SYSMODALOFF  = 5
const HCBT_MOVESIZE  = 0
const HCBT_MINMAX  = 1
const HCBT_QS  = 2
const HCBT_CREATEWND  = 3
const HCBT_DESTROYWND  = 4
const HCBT_ACTIVATE  = 5
const HCBT_CLICKSKIPPED  = 6
const HCBT_KEYSKIPPED  = 7
const HCBT_SYSCOMMAND  = 8
const HCBT_SETFOCUS  = 9

mutable struct WTSSESSION_NOTIFICATION
    cbSize::Culong
    dwSessionId::Culong
end

const MSGF_DIALOGBOX  = 0
const MSGF_MESSAGEBOX  = 1
const MSGF_MENU  = 2
const MSGF_SCROLLBAR  = 5
const MSGF_NEXTWINDOW  = 6
const MSGF_MAX  = 8
const MSGF_USER  = 4096
const HSHELL_WINDOWCREATED  = 1
const HSHELL_WINDOWDESTROYED  = 2
const HSHELL_ACTIVATESHELLWINDOW  = 3
const HSHELL_WINDOWACTIVATED  = 4
const HSHELL_GETMINRECT  = 5
const HSHELL_REDRAW  = 6
const HSHELL_TASKMAN  = 7
const HSHELL_LANGUAGE  = 8
const HSHELL_SYSMENU  = 9
const HSHELL_ENDTASK  = 10
const HSHELL_ACCESSIBILITYSTATE  = 11
const HSHELL_APPCOMMAND  = 12
const HSHELL_WINDOWREPLACED  = 13
const HSHELL_WINDOWREPLACING  = 14
const HSHELL_MONITORCHANGED  = 16
const APPCOMMAND_BROWSER_BACKWARD  = 1
const APPCOMMAND_BROWSER_FORWARD  = 2
const APPCOMMAND_BROWSER_REFRESH  = 3
const APPCOMMAND_BROWSER_STOP  = 4
const APPCOMMAND_BROWSER_SEARCH  = 5
const APPCOMMAND_BROWSER_FAVORITES  = 6
const APPCOMMAND_BROWSER_HOME  = 7
const APPCOMMAND_VOLUME_MUTE  = 8
const APPCOMMAND_VOLUME_DOWN  = 9
const APPCOMMAND_VOLUME_UP  = 10
const APPCOMMAND_MEDIA_NEXTTRACK  = 11
const APPCOMMAND_MEDIA_PREVIOUSTRACK  = 12
const APPCOMMAND_MEDIA_STOP  = 13
const APPCOMMAND_MEDIA_PLAY_PAUSE  = 14
const APPCOMMAND_LAUNCH_MAIL  = 15
const APPCOMMAND_LAUNCH_MEDIA_SELECT  = 16
const APPCOMMAND_LAUNCH_APP1  = 17
const APPCOMMAND_LAUNCH_APP2  = 18
const APPCOMMAND_BASS_DOWN  = 19
const APPCOMMAND_BASS_BOOST  = 20
const APPCOMMAND_BASS_UP  = 21
const APPCOMMAND_TREBLE_DOWN  = 22
const APPCOMMAND_TREBLE_UP  = 23
const APPCOMMAND_MICROPHONE_VOLUME_MUTE  = 24
const APPCOMMAND_MICROPHONE_VOLUME_DOWN  = 25
const APPCOMMAND_MICROPHONE_VOLUME_UP  = 26
const APPCOMMAND_HELP  = 27
const APPCOMMAND_FIND  = 28
const APPCOMMAND_NEW  = 29
const APPCOMMAND_OPEN  = 30
const APPCOMMAND_CLOSE  = 31
const APPCOMMAND_SAVE  = 32
const APPCOMMAND_PRINT  = 33
const APPCOMMAND_UNDO  = 34
const APPCOMMAND_REDO  = 35
const APPCOMMAND_COPY  = 36
const APPCOMMAND_CUT  = 37
const APPCOMMAND_PASTE  = 38
const APPCOMMAND_REPLY_TO_MAIL  = 39
const APPCOMMAND_FORWARD_MAIL  = 40
const APPCOMMAND_SEND_MAIL  = 41
const APPCOMMAND_SPELL_CHECK  = 42
const APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE  = 43
const APPCOMMAND_MIC_ON_OFF_TOGGLE  = 44
const APPCOMMAND_CORRECTION_LIST  = 45
const APPCOMMAND_MEDIA_PLAY  = 46
const APPCOMMAND_MEDIA_PAUSE  = 47
const APPCOMMAND_MEDIA_RECORD  = 48
const APPCOMMAND_MEDIA_FAST_FORWARD  = 49
const APPCOMMAND_MEDIA_REWIND  = 50
const APPCOMMAND_MEDIA_CHANNEL_UP  = 51
const APPCOMMAND_MEDIA_CHANNEL_DOWN  = 52
const APPCOMMAND_DELETE  = 53
const APPCOMMAND_DWM_FLIP3D  = 54
const FAPPCOMMAND_KEY  = 0

mutable struct KBDLLHOOKSTRUCT
    vkCode::Culong
    scanCode::Culong
    flags::Culong
    time::Culong
    dwExtraInfo::Int
end


mutable struct MSLLHOOKSTRUCT
    pt::POINT
    mouseData::Culong
    flags::Culong
    time::Culong
    dwExtraInfo::Int
end


mutable struct DEBUGHOOKINFO
    idThread::Culong
    idThreadInstaller::Culong
    lParam::LPARAM
    wParam::WPARAM
    code::Cint
end


mutable struct MOUSEHOOKSTRUCTEX
    mouseData::Culong
end

const HKL_PREV  = 0
const HKL_NEXT  = 1
const KL_NAMELENGTH  = 9

mutable struct MOUSEMOVEPOINT
    x::Cint
    y::Cint
    time::Culong
    dwExtraInfo::Int
end

const GMMP_USE_DISPLAY_POINTS  = 1
const GMMP_USE_HIGH_RESOLUTION_POINTS  = 2
const UOI_FLAGS  = 1
const UOI_NAME  = 2
const UOI_TYPE  = 3
const UOI_USER_SID  = 4
const UOI_HEAPSIZE  = 5
const UOI_IO  = 6
const UOI_TIMERPROC_EXCEPTION_SUPPRESSION  = 7

mutable struct USEROBJECTFLAGS
    fInherit::Cint
    fReserved::Cint
    dwFlags::Culong
end


mutable struct MINMAXINFO
    ptReserved::POINT
    ptMaxSize::POINT
    ptMaxPosition::POINT
    ptMinTrackSize::POINT
    ptMaxTrackSize::POINT
end

const PWR_OK  = 1
const PWR_SUSPENDREQUEST  = 1
const PWR_SUSPENDRESUME  = 2
const PWR_CRITICALRESUME  = 3

mutable struct COPYDATASTRUCT
    dwData::Int
    cbData::Culong
    lpData::Ptr{Cvoid}
end

const NFR_ANSI  = 1
const NFR_UNICODE  = 2
const NF_QUERY  = 3
const NF_REQUERY  = 4
const UIS_SET  = 1
const UIS_CLEAR  = 2
const UIS_INITIALIZE  = 3
const WHEEL_DELTA  = 120
const WMSZ_LEFT  = 1
const WMSZ_RIGHT  = 2
const WMSZ_TOP  = 3
const WMSZ_TOPLEFT  = 4
const WMSZ_TOPRIGHT  = 5
const WMSZ_BOTTOM  = 6
const WMSZ_BOTTOMLEFT  = 7
const WMSZ_BOTTOMRIGHT  = 8
const HTNOWHERE  = 0
const HTCLIENT  = 1
const HTCAPTION  = 2
const HTSYSMENU  = 3
const HTGROWBOX  = 4
const HTMENU  = 5
const HTHSCROLL  = 6
const HTVSCROLL  = 7
const HTMINBUTTON  = 8
const HTMAXBUTTON  = 9
const HTLEFT  = 10
const HTRIGHT  = 11
const HTTOP  = 12
const HTTOPLEFT  = 13
const HTTOPRIGHT  = 14
const HTBOTTOM  = 15
const HTBOTTOMLEFT  = 16
const HTBOTTOMRIGHT  = 17
const HTBORDER  = 18
const HTOBJECT  = 19
const HTCLOSE  = 20
const HTHELP  = 21
const MA_ACTIVATE  = 1
const MA_ACTIVATEANDEAT  = 2
const MA_NOACTIVATE  = 3
const MA_NOACTIVATEANDEAT  = 4
const ICON_SMALL  = 0
const ICON_BIG  = 1
const ICON_SMALL2  = 2
const SIZE_RESTORED  = 0
const SIZE_MINIMIZED  = 1
const SIZE_MAXIMIZED  = 2
const SIZE_MAXSHOW  = 3
const SIZE_MAXHIDE  = 4
const DFC_CAPTION  = 1
const DFC_MENU  = 2
const DFC_SCROLL  = 3
const DFC_BUTTON  = 4
const DFC_POPUPMENU  = 5
const IDANI_OPEN  = 1
const IDANI_CAPTION  = 3
const CF_TEXT  = 1
const CF_BITMAP  = 2
const CF_METAFILEPICT  = 3
const CF_SYLK  = 4
const CF_DIF  = 5
const CF_TIFF  = 6
const CF_OEMTEXT  = 7
const CF_DIB  = 8
const CF_PALETTE  = 9
const CF_PENDATA  = 10
const CF_RIFF  = 11
const CF_WAVE  = 12
const CF_UNICODETEXT  = 13
const CF_ENHMETAFILE  = 14
const CF_HDROP  = 15
const CF_LOCALE  = 16
const CF_DIBV5  = 17
const CF_MAX  = 18
const CF_MAX  = 17
const CF_MAX  = 15

mutable struct ACCEL
    fVirt::Cuchar
    key::Cushort
    cmd::Cushort
    fVirt::Cushort
    key::Cushort
    cmd::Culong
end


mutable struct WINDOWPLACEMENT
    length::UInt32
    flags::UInt32
    showCmd::UInt32
    ptMinPosition::POINT
    ptMaxPosition::POINT
    rcNormalPosition::RECT
    rcDevice::RECT
end


mutable struct STYLESTRUCT
    styleOld::Culong
    styleNew::Culong
end

const ODT_MENU  = 1
const ODT_LISTBOX  = 2
const ODT_COMBOBOX  = 3
const ODT_BUTTON  = 4
const ODT_STATIC  = 5

mutable struct MEASUREITEMSTRUCT
    CtlType::UInt32
    CtlID::UInt32
    itemID::UInt32
    itemWidth::UInt32
    itemHeight::UInt32
    itemData::Int
end

const HDEVNOTIFY = Ptr{Cvoid}
const HPOWERNOTIFY = Ptr{Cvoid}
const FLASHW_STOP  = 0
const DLGWINDOWEXTRA  = 30
const DLGWINDOWEXTRA  = 48

mutable struct MOUSEINPUT
    dx::Culong
    dy::Culong
    mouseData::Culong
    dwFlags::Culong
    time::Culong
    dwExtraInfo::Int
end


mutable struct HARDWAREINPUT
    uMsg::Culong
    wParamL::Cushort
    wParamH::Cushort
end

const INPUT_MOUSE  = 0
const INPUT_KEYBOARD  = 1
const INPUT_HARDWARE  = 2

mutable struct TOUCHINPUT
    x::Culong
    y::Culong
    hSource::Ptr{Cvoid}
    dwID::Culong
    dwFlags::Culong
    dwMask::Culong
    dwTime::Culong
    dwExtraInfo::Int
    cxContact::Culong
    cyContact::Culong
end

const POINTER_INPUT_TYPE = Culong
const POINTER_FLAGS = UInt32
const TOUCH_FLAGS = UInt32
const TOUCH_MASK = UInt32
const PEN_FLAGS = UInt32
const PEN_MASK = UInt32
const MAX_TOUCH_COUNT  = 256

mutable struct USAGE_PROPERTIES
    level::Cushort
    page::Cushort
    usage::Cushort
    logicalMinimum::Int32
    logicalMaximum::Int32
    unit::Cushort
    exponent::Cushort
    count::Cuchar
    physicalMinimum::Int32
    physicalMaximum::Int32
end


mutable struct INPUT_INJECTION_VALUE
    page::Cushort
    usage::Cushort
    value::Int32
    index::Cushort
end


mutable struct TOUCH_HIT_TESTING_INPUT
    pointerId::UInt32
    point::POINT
    boundingBox::RECT
    nonOccludedBoundingBox::RECT
    orientation::UInt32
end


mutable struct LASTINPUTINFO
    cbSize::UInt32
    dwTime::Culong
end

const SM_CXSCREEN  = 0
const SM_CYSCREEN  = 1
const SM_CXVSCROLL  = 2
const SM_CYHSCROLL  = 3
const SM_CYCAPTION  = 4
const SM_CXBORDER  = 5
const SM_CYBORDER  = 6
const SM_CXDLGFRAME  = 7
const SM_CYDLGFRAME  = 8
const SM_CYVTHUMB  = 9
const SM_CXHTHUMB  = 10
const SM_CXICON  = 11
const SM_CYICON  = 12
const SM_CXCURSOR  = 13
const SM_CYCURSOR  = 14
const SM_CYMENU  = 15
const SM_CXFULLSCREEN  = 16
const SM_CYFULLSCREEN  = 17
const SM_CYKANJIWINDOW  = 18
const SM_MOUSEPRESENT  = 19
const SM_CYVSCROLL  = 20
const SM_CXHSCROLL  = 21
const SM_DEBUG  = 22
const SM_SWAPBUTTON  = 23
const SM_RESERVED1  = 24
const SM_RESERVED2  = 25
const SM_RESERVED3  = 26
const SM_RESERVED4  = 27
const SM_CXMIN  = 28
const SM_CYMIN  = 29
const SM_CXSIZE  = 30
const SM_CYSIZE  = 31
const SM_CXFRAME  = 32
const SM_CYFRAME  = 33
const SM_CXMINTRACK  = 34
const SM_CYMINTRACK  = 35
const SM_CXDOUBLECLK  = 36
const SM_CYDOUBLECLK  = 37
const SM_CXICONSPACING  = 38
const SM_CYICONSPACING  = 39
const SM_MENUDROPALIGNMENT  = 40
const SM_PENWINDOWS  = 41
const SM_DBCSENABLED  = 42
const SM_CMOUSEBUTTONS  = 43
const SM_SECURE  = 44
const SM_CXEDGE  = 45
const SM_CYEDGE  = 46
const SM_CXMINSPACING  = 47
const SM_CYMINSPACING  = 48
const SM_CXSMICON  = 49
const SM_CYSMICON  = 50
const SM_CYSMCAPTION  = 51
const SM_CXSMSIZE  = 52
const SM_CYSMSIZE  = 53
const SM_CXMENUSIZE  = 54
const SM_CYMENUSIZE  = 55
const SM_ARRANGE  = 56
const SM_CXMINIMIZED  = 57
const SM_CYMINIMIZED  = 58
const SM_CXMAXTRACK  = 59
const SM_CYMAXTRACK  = 60
const SM_CXMAXIMIZED  = 61
const SM_CYMAXIMIZED  = 62
const SM_NETWORK  = 63
const SM_CLEANBOOT  = 67
const SM_CXDRAG  = 68
const SM_CYDRAG  = 69
const SM_SHOWSOUNDS  = 70
const SM_CXMENUCHECK  = 71
const SM_CYMENUCHECK  = 72
const SM_SLOWMACHINE  = 73
const SM_MIDEASTENABLED  = 74
const SM_MOUSEWHEELPRESENT  = 75
const SM_XVIRTUALSCREEN  = 76
const SM_YVIRTUALSCREEN  = 77
const SM_CXVIRTUALSCREEN  = 78
const SM_CYVIRTUALSCREEN  = 79
const SM_CMONITORS  = 80
const SM_SAMEDISPLAYFORMAT  = 81
const SM_IMMENABLED  = 82
const SM_CXFOCUSBORDER  = 83
const SM_CYFOCUSBORDER  = 84
const SM_TABLETPC  = 86
const SM_MEDIACENTER  = 87
const SM_STARTER  = 88
const SM_SERVERR2  = 89
const SM_MOUSEHORIZONTALWHEELPRESENT  = 91
const SM_CXPADDEDBORDER  = 92
const SM_DIGITIZER  = 94
const SM_MAXIMUMTOUCHES  = 95
const SM_CMETRICS  = 76
const SM_CMETRICS  = 83
const SM_CMETRICS  = 91
const SM_CMETRICS  = 93
const SM_CMETRICS  = 97
const MNC_IGNORE  = 0
const MNC_CLOSE  = 1
const MNC_EXECUTE  = 2
const MNC_SELECT  = 3

mutable struct TPMPARAMS
    cbSize::UInt32
    rcExclude::RECT
end

const MND_CONTINUE  = 0
const MND_ENDMENU  = 1

mutable struct DRAWTEXTPARAMS
    cbSize::UInt32
    iTabLength::Cint
    iLeftMargin::Cint
    iRightMargin::Cint
    uiLengthDrawn::UInt32
end

const LSFW_LOCK  = 1
const LSFW_UNLOCK  = 2

mutable struct HELPINFO
    cbSize::UInt32
    iContextType::Cint
    iCtrlId::Cint
    hItemHandle::Ptr{Cvoid}
    dwContextId::Int
    MousePos::POINT
end

const CTLCOLOR_MSGBOX  = 0
const CTLCOLOR_EDIT  = 1
const CTLCOLOR_LISTBOX  = 2
const CTLCOLOR_BTN  = 3
const CTLCOLOR_DLG  = 4
const CTLCOLOR_SCROLLBAR  = 5
const CTLCOLOR_STATIC  = 6
const CTLCOLOR_MAX  = 7
const COLOR_SCROLLBAR  = 0
const COLOR_BACKGROUND  = 1
const COLOR_ACTIVECAPTION  = 2
const COLOR_INACTIVECAPTION  = 3
const COLOR_MENU  = 4
const COLOR_WINDOW  = 5
const COLOR_WINDOWFRAME  = 6
const COLOR_MENUTEXT  = 7
const COLOR_WINDOWTEXT  = 8
const COLOR_CAPTIONTEXT  = 9
const COLOR_ACTIVEBORDER  = 10
const COLOR_INACTIVEBORDER  = 11
const COLOR_APPWORKSPACE  = 12
const COLOR_HIGHLIGHT  = 13
const COLOR_HIGHLIGHTTEXT  = 14
const COLOR_BTNFACE  = 15
const COLOR_BTNSHADOW  = 16
const COLOR_GRAYTEXT  = 17
const COLOR_BTNTEXT  = 18
const COLOR_INACTIVECAPTIONTEXT  = 19
const COLOR_BTNHIGHLIGHT  = 20
const COLOR_3DDKSHADOW  = 21
const COLOR_3DLIGHT  = 22
const COLOR_INFOTEXT  = 23
const COLOR_INFOBK  = 24
const COLOR_HOTLIGHT  = 26
const COLOR_GRADIENTACTIVECAPTION  = 27
const COLOR_GRADIENTINACTIVECAPTION  = 28
const COLOR_MENUHILIGHT  = 29
const COLOR_MENUBAR  = 30
const GW_HWNDFIRST  = 0
const GW_HWNDLAST  = 1
const GW_HWNDNEXT  = 2
const GW_HWNDPREV  = 3
const GW_OWNER  = 4
const GW_CHILD  = 5
const GW_MAX  = 5
const GW_ENABLEDPOPUP  = 6
const GW_MAX  = 6

mutable struct CURSORSHAPE
    xHotSpot::Cint
    yHotSpot::Cint
    cx::Cint
    cy::Cint
    cbWidth::Cint
    Planes::Cuchar
    BitsPixel::Cuchar
end

const IMAGE_BITMAP  = 0
const IMAGE_ICON  = 1
const IMAGE_CURSOR  = 2
const IMAGE_ENHMETAFILE  = 3
const RES_ICON  = 1
const RES_CURSOR  = 2
const OBM_CLOSE  = 32754
const OBM_UPARROW  = 32753
const OBM_DNARROW  = 32752
const OBM_RGARROW  = 32751
const OBM_LFARROW  = 32750
const OBM_REDUCE  = 32749
const OBM_ZOOM  = 32748
const OBM_RESTORE  = 32747
const OBM_REDUCED  = 32746
const OBM_ZOOMD  = 32745
const OBM_RESTORED  = 32744
const OBM_UPARROWD  = 32743
const OBM_DNARROWD  = 32742
const OBM_RGARROWD  = 32741
const OBM_LFARROWD  = 32740
const OBM_MNARROW  = 32739
const OBM_COMBO  = 32738
const OBM_UPARROWI  = 32737
const OBM_DNARROWI  = 32736
const OBM_RGARROWI  = 32735
const OBM_LFARROWI  = 32734
const OBM_OLD_CLOSE  = 32767
const OBM_SIZE  = 32766
const OBM_OLD_UPARROW  = 32765
const OBM_OLD_DNARROW  = 32764
const OBM_OLD_RGARROW  = 32763
const OBM_OLD_LFARROW  = 32762
const OBM_BTSIZE  = 32761
const OBM_CHECK  = 32760
const OBM_CHECKBOXES  = 32759
const OBM_BTNCORNERS  = 32758
const OBM_OLD_REDUCE  = 32757
const OBM_OLD_ZOOM  = 32756
const OBM_OLD_RESTORE  = 32755
const OCR_NORMAL  = 32512
const OCR_IBEAM  = 32513
const OCR_WAIT  = 32514
const OCR_CROSS  = 32515
const OCR_UP  = 32516
const OCR_SIZE  = 32640
const OCR_ICON  = 32641
const OCR_SIZENWSE  = 32642
const OCR_SIZENESW  = 32643
const OCR_SIZEWE  = 32644
const OCR_SIZENS  = 32645
const OCR_SIZEALL  = 32646
const OCR_ICOCUR  = 32647
const OCR_NO  = 32648
const OCR_HAND  = 32649
const OCR_APPSTARTING  = 32650
const OIC_SAMPLE  = 32512
const OIC_HAND  = 32513
const OIC_QUES  = 32514
const OIC_BANG  = 32515
const OIC_NOTE  = 32516
const OIC_WINLOGO  = 32517
const OIC_SHIELD  = 32518
const IDI_APPLICATION  = 32512
const IDI_HAND  = 32513
const IDI_QUESTION  = 32514
const IDI_EXCLAMATION  = 32515
const IDI_ASTERISK  = 32516
const IDI_WINLOGO  = 32517
const IDI_SHIELD  = 32518
const IDOK  = 1
const IDCANCEL  = 2
const IDABORT  = 3
const IDRETRY  = 4
const IDIGNORE  = 5
const IDYES  = 6
const IDNO  = 7
const IDCLOSE  = 8
const IDHELP  = 9
const IDTRYAGAIN  = 10
const IDCONTINUE  = 11
const IDTIMEOUT  = 32000
const WB_LEFT  = 0
const WB_RIGHT  = 1
const WB_ISDELIMITER  = 2
const BN_CLICKED  = 0
const BN_PAINT  = 1
const BN_HILITE  = 2
const BN_UNHILITE  = 3
const BN_DISABLE  = 4
const BN_DOUBLECLICKED  = 5
const BN_SETFOCUS  = 6
const BN_KILLFOCUS  = 7
const STN_CLICKED  = 0
const STN_DBLCLK  = 1
const STN_ENABLE  = 2
const STN_DISABLE  = 3
const DWL_MSGRESULT  = 0
const DWL_DLGPROC  = 4
const DWL_USER  = 8
const DWLP_MSGRESULT  = 0
const LB_OKAY  = 0
const LBN_SELCHANGE  = 1
const LBN_DBLCLK  = 2
const LBN_SELCANCEL  = 3
const LBN_SETFOCUS  = 4
const LBN_KILLFOCUS  = 5
const CB_OKAY  = 0
const CBN_SELCHANGE  = 1
const CBN_DBLCLK  = 2
const CBN_SETFOCUS  = 3
const CBN_KILLFOCUS  = 4
const CBN_EDITCHANGE  = 5
const CBN_EDITUPDATE  = 6
const CBN_DROPDOWN  = 7
const CBN_CLOSEUP  = 8
const CBN_SELENDOK  = 9
const CBN_SELENDCANCEL  = 10

mutable struct SCROLLINFO
    cbSize::UInt32
    fMask::UInt32
    nMin::Cint
    nMax::Cint
    nPage::UInt32
    nPos::Cint
    nTrackPos::Cint
end


mutable struct MDICREATESTRUCTA
    szClass::Ptr{Cchar}
    szTitle::Ptr{Cchar}
    hOwner::Ptr{Cvoid}
    x::Cint
    y::Cint
    cx::Cint
    cy::Cint
    style::Culong
    lParam::LPARAM
end


mutable struct MDICREATESTRUCTW
    szClass::Ptr{Cwchar_t}
    szTitle::Ptr{Cwchar_t}
    hOwner::Ptr{Cvoid}
    x::Cint
    y::Cint
    cx::Cint
    cy::Cint
    style::Culong
    lParam::LPARAM
end

const MDICREATESTRUCT = MDICREATESTRUCTW
const LPMDICREATESTRUCT = Ptr{MDICREATESTRUCTW}

mutable struct CLIENTCREATESTRUCT
    hWindowMenu::Ptr{Cvoid}
    idFirstChild::UInt32
end

const HELPPOLY = Culong

mutable struct MULTIKEYHELPA
    mkSize::Culong
    mkSize::Cushort
    mkKeylist::Cchar
    szKeyphrase::SVector{1,Cchar}
end


mutable struct MULTIKEYHELPW
    mkSize::Culong
    mkSize::Cushort
    mkKeylist::Cwchar_t
    szKeyphrase::SVector{1,Cwchar_t}
end

const MULTIKEYHELP = MULTIKEYHELPW
const LPMULTIKEYHELP = Ptr{MULTIKEYHELPW}

mutable struct HELPWININFOA
    wStructSize::Cint
    x::Cint
    y::Cint
    dx::Cint
    dy::Cint
    wMax::Cint
    rgchMember::SVector{2,Cchar}
end


mutable struct HELPWININFOW
    wStructSize::Cint
    x::Cint
    y::Cint
    dx::Cint
    dy::Cint
    wMax::Cint
    rgchMember::SVector{2,Cwchar_t}
end

const HELPWININFO = HELPWININFOW
const LPHELPWININFO = Ptr{HELPWININFOW}
const IDH_NO_HELP  = 28440
const IDH_MISSING_CONTEXT  = 28441
const IDH_GENERIC_HELP_BUTTON  = 28442
const IDH_OK  = 28443
const IDH_CANCEL  = 28444
const IDH_HELP  = 28445
const GR_GDIOBJECTS  = 0
const GR_USEROBJECTS  = 1
const GR_GDIOBJECTS_PEAK  = 2
const GR_USEROBJECTS_PEAK  = 4
const MAX_TOUCH_PREDICTION_FILTER_TAPS  = 3

mutable struct TouchPredictionParameters
    cbSize::UInt32
    dwLatency::UInt32
    dwSampleTime::UInt32
    bUseHWTimeStamp::UInt32
end

const TOUCHPREDICTIONPARAMETERS_DEFAULT_LATENCY  = 8
const TOUCHPREDICTIONPARAMETERS_DEFAULT_SAMPLETIME  = 8
const TOUCHPREDICTIONPARAMETERS_DEFAULT_USE_HW_TIMESTAMP  = 1
const MAX_LOGICALDPIOVERRIDE  = 2
const MOUSEWHEEL_ROUTING_FOCUS  = 0
const MOUSEWHEEL_ROUTING_HYBRID  = 1
const MOUSEWHEEL_ROUTING_MOUSE_POS  = 2

mutable struct MINIMIZEDMETRICS
    cbSize::UInt32
    iWidth::Cint
    iHorzGap::Cint
    iVertGap::Cint
    iArrange::Cint
end


mutable struct ANIMATIONINFO
    cbSize::UInt32
    iMinAnimate::Cint
end


mutable struct SERIALKEYSA
    cbSize::UInt32
    dwFlags::Culong
    lpszActivePort::Ptr{Cchar}
    lpszPort::Ptr{Cchar}
    iBaudRate::UInt32
    iPortState::UInt32
    iActive::UInt32
end


mutable struct SERIALKEYSW
    cbSize::UInt32
    dwFlags::Culong
    lpszActivePort::Ptr{Cwchar_t}
    lpszPort::Ptr{Cwchar_t}
    iBaudRate::UInt32
    iPortState::UInt32
    iActive::UInt32
end

const SERIALKEYS = SERIALKEYSW
const LPSERIALKEYS = Ptr{SERIALKEYSW}

mutable struct HIGHCONTRASTA
    cbSize::UInt32
    dwFlags::Culong
    lpszDefaultScheme::Ptr{Cchar}
end


mutable struct HIGHCONTRASTW
    cbSize::UInt32
    dwFlags::Culong
    lpszDefaultScheme::Ptr{Cwchar_t}
end

const HIGHCONTRAST = HIGHCONTRASTW
const LPHIGHCONTRAST = Ptr{HIGHCONTRASTW}
const DISP_CHANGE_SUCCESSFUL  = 0
const DISP_CHANGE_RESTART  = 1

mutable struct FILTERKEYS
    cbSize::UInt32
    dwFlags::Culong
    iWaitMSec::Culong
    iDelayMSec::Culong
    iRepeatMSec::Culong
    iBounceMSec::Culong
end


mutable struct STICKYKEYS
    cbSize::UInt32
    dwFlags::Culong
end


mutable struct MOUSEKEYS
    cbSize::UInt32
    dwFlags::Culong
    iMaxSpeed::Culong
    iTimeToMaxSpeed::Culong
    iCtrlSpeed::Culong
    dwReserved1::Culong
    dwReserved2::Culong
end


mutable struct ACCESSTIMEOUT
    cbSize::UInt32
    dwFlags::Culong
    iTimeOutMSec::Culong
end

const SSGF_NONE  = 0
const SSGF_DISPLAY  = 3
const SSTF_NONE  = 0
const SSTF_CHARS  = 1
const SSTF_BORDER  = 2
const SSTF_DISPLAY  = 3
const SSWF_NONE  = 0
const SSWF_TITLE  = 1
const SSWF_WINDOW  = 2
const SSWF_DISPLAY  = 3
const SSWF_CUSTOM  = 4

mutable struct SOUNDSENTRYA
    cbSize::UInt32
    dwFlags::Culong
    iFSTextEffect::Culong
    iFSTextEffectMSec::Culong
    iFSTextEffectColorBits::Culong
    iFSGrafEffect::Culong
    iFSGrafEffectMSec::Culong
    iFSGrafEffectColor::Culong
    iWindowsEffect::Culong
    iWindowsEffectMSec::Culong
    lpszWindowsEffectDLL::Ptr{Cchar}
    iWindowsEffectOrdinal::Culong
end


mutable struct SOUNDSENTRYW
    cbSize::UInt32
    dwFlags::Culong
    iFSTextEffect::Culong
    iFSTextEffectMSec::Culong
    iFSTextEffectColorBits::Culong
    iFSGrafEffect::Culong
    iFSGrafEffectMSec::Culong
    iFSGrafEffectColor::Culong
    iWindowsEffect::Culong
    iWindowsEffectMSec::Culong
    lpszWindowsEffectDLL::Ptr{Cwchar_t}
    iWindowsEffectOrdinal::Culong
end

const SOUNDSENTRY = SOUNDSENTRYW
const LPSOUNDSENTRY = Ptr{SOUNDSENTRYW}

mutable struct TOGGLEKEYS
    cbSize::UInt32
    dwFlags::Culong
end

const CCHDEVICENAME  = 32

mutable struct MONITORINFO
    cbSize::Culong
    rcMonitor::RECT
    rcWork::RECT
    dwFlags::Culong
end

const SOUND_SYSTEM_STARTUP  = 1
const SOUND_SYSTEM_SHUTDOWN  = 2
const SOUND_SYSTEM_BEEP  = 3
const SOUND_SYSTEM_ERROR  = 4
const SOUND_SYSTEM_QUESTION  = 5
const SOUND_SYSTEM_WARNING  = 6
const SOUND_SYSTEM_INFORMATION  = 7
const SOUND_SYSTEM_MAXIMIZE  = 8
const SOUND_SYSTEM_MINIMIZE  = 9
const SOUND_SYSTEM_RESTOREUP  = 10
const SOUND_SYSTEM_RESTOREDOWN  = 11
const SOUND_SYSTEM_APPSTART  = 12
const SOUND_SYSTEM_FAULT  = 13
const SOUND_SYSTEM_APPEND  = 14
const SOUND_SYSTEM_MENUCOMMAND  = 15
const SOUND_SYSTEM_MENUPOPUP  = 16
const CSOUND_SYSTEM  = 16
const ALERT_SYSTEM_INFORMATIONAL  = 1
const ALERT_SYSTEM_WARNING  = 2
const ALERT_SYSTEM_ERROR  = 3
const ALERT_SYSTEM_QUERY  = 4
const ALERT_SYSTEM_CRITICAL  = 5
const CALERT_SYSTEM  = 6
const USER_DEFAULT_SCREEN_DPI  = 96
const CCHILDREN_TITLEBAR  = 5
const CCHILDREN_SCROLLBAR  = 5

mutable struct WINDOWINFO
    cbSize::Culong
    rcWindow::RECT
    rcClient::RECT
    dwStyle::Culong
    dwExStyle::Culong
    dwWindowStatus::Culong
    cxWindowBorders::UInt32
    cyWindowBorders::UInt32
    atomWindowType::ATOM
    wCreatorVersion::Cushort
end


mutable struct ALTTABINFO
    cbSize::Culong
    cItems::Cint
    cColumns::Cint
    cRows::Cint
    iColFocus::Cint
    iRowFocus::Cint
    cxItem::Cint
    cyItem::Cint
    ptStart::POINT
end

const RIM_INPUT  = 0
const RIM_INPUTSINK  = 1

mutable struct RAWINPUTHEADER
    dwType::Culong
    dwSize::Culong
    hDevice::Ptr{Cvoid}
    wParam::WPARAM
end

const RIM_TYPEMOUSE  = 0
const RIM_TYPEKEYBOARD  = 1
const RIM_TYPEHID  = 2
const RIM_TYPEMAX  = 2
const MOUSE_MOVE_RELATIVE  = 0
const MOUSE_MOVE_ABSOLUTE  = 1
const RI_KEY_MAKE  = 0
const RI_KEY_BREAK  = 1
const RI_KEY_E0  = 2
const RI_KEY_E1  = 4
const RI_KEY_TERMSRV_SET_LED  = 8

mutable struct RAWHID
    dwSizeHid::Culong
    dwCount::Culong
    bRawData::SVector{1,Cuchar}
end


mutable struct RID_DEVICE_INFO_MOUSE
    dwId::Culong
    dwNumberOfButtons::Culong
    dwSampleRate::Culong
    fHasHorizontalWheel::Cint
end


mutable struct RID_DEVICE_INFO_KEYBOARD
    dwType::Culong
    dwSubType::Culong
    dwKeyboardMode::Culong
    dwNumberOfFunctionKeys::Culong
    dwNumberOfIndicators::Culong
    dwNumberOfKeysTotal::Culong
end

const GIDC_ARRIVAL  = 1
const GIDC_REMOVAL  = 2

mutable struct RAWINPUTDEVICELIST
    hDevice::Ptr{Cvoid}
    dwType::Culong
end

const POINTER_DEVICE_PRODUCT_STRING_MAX  = 520

mutable struct POINTER_DEVICE_PROPERTY
    logicalMin::Int32
    logicalMax::Int32
    physicalMin::Int32
    physicalMax::Int32
    unit::UInt32
    unitExponent::UInt32
    usagePageId::Cushort
    usageId::Cushort
end

const MSGFLT_ADD  = 1
const MSGFLT_REMOVE  = 2

mutable struct CHANGEFILTERSTRUCT
    cbSize::Culong
    ExtStatus::Culong
end

const GID_BEGIN  = 1
const GID_END  = 2
const GID_ZOOM  = 3
const GID_PAN  = 4
const GID_ROTATE  = 5
const GID_TWOFINGERTAP  = 6
const GID_PRESSANDTAP  = 7

mutable struct GESTURECONFIG
    dwID::Culong
    dwWant::Culong
    dwBlock::Culong
end

const GESTURECONFIGMAXCOUNT  = 256
const MAX_STR_BLOCKREASON  = 256
const MAX_LEADBYTES  = 12
const MAX_DEFAULTCHAR  = 2
const LOCALE_ALL  = 0
const CSTR_LESS_THAN  = 1
const CSTR_EQUAL  = 2
const CSTR_GREATER_THAN  = 3
const CP_ACP  = 0
const CP_OEMCP  = 1
const CP_MACCP  = 2
const CP_THREAD_ACP  = 3
const CP_SYMBOL  = 42
const CP_UTF7  = 65000
const CP_UTF8  = 65001
const CTRY_DEFAULT  = 0
const CTRY_ALBANIA  = 355
const CTRY_ALGERIA  = 213
const CTRY_ARGENTINA  = 54
const CTRY_ARMENIA  = 374
const CTRY_AUSTRALIA  = 61
const CTRY_AUSTRIA  = 43
const CTRY_AZERBAIJAN  = 994
const CTRY_BAHRAIN  = 973
const CTRY_BELARUS  = 375
const CTRY_BELGIUM  = 32
const CTRY_BELIZE  = 501
const CTRY_BOLIVIA  = 591
const CTRY_BRAZIL  = 55
const CTRY_BRUNEI_DARUSSALAM  = 673
const CTRY_BULGARIA  = 359
const CTRY_CANADA  = 2
const CTRY_CARIBBEAN  = 1
const CTRY_CHILE  = 56
const CTRY_COLOMBIA  = 57
const CTRY_COSTA_RICA  = 506
const CTRY_CROATIA  = 385
const CTRY_CZECH  = 420
const CTRY_DENMARK  = 45
const CTRY_DOMINICAN_REPUBLIC  = 1
const CTRY_ECUADOR  = 593
const CTRY_EGYPT  = 20
const CTRY_EL_SALVADOR  = 503
const CTRY_ESTONIA  = 372
const CTRY_FAEROE_ISLANDS  = 298
const CTRY_FINLAND  = 358
const CTRY_FRANCE  = 33
const CTRY_GEORGIA  = 995
const CTRY_GERMANY  = 49
const CTRY_GREECE  = 30
const CTRY_GUATEMALA  = 502
const CTRY_HONDURAS  = 504
const CTRY_HONG_KONG  = 852
const CTRY_HUNGARY  = 36
const CTRY_ICELAND  = 354
const CTRY_INDIA  = 91
const CTRY_INDONESIA  = 62
const CTRY_IRAN  = 981
const CTRY_IRAQ  = 964
const CTRY_IRELAND  = 353
const CTRY_ISRAEL  = 972
const CTRY_ITALY  = 39
const CTRY_JAMAICA  = 1
const CTRY_JAPAN  = 81
const CTRY_JORDAN  = 962
const CTRY_KAZAKSTAN  = 7
const CTRY_KENYA  = 254
const CTRY_KUWAIT  = 965
const CTRY_KYRGYZSTAN  = 996
const CTRY_LATVIA  = 371
const CTRY_LEBANON  = 961
const CTRY_LIBYA  = 218
const CTRY_LIECHTENSTEIN  = 41
const CTRY_LITHUANIA  = 370
const CTRY_LUXEMBOURG  = 352
const CTRY_MACAU  = 853
const CTRY_MACEDONIA  = 389
const CTRY_MALAYSIA  = 60
const CTRY_MALDIVES  = 960
const CTRY_MEXICO  = 52
const CTRY_MONACO  = 33
const CTRY_MONGOLIA  = 976
const CTRY_MOROCCO  = 212
const CTRY_NETHERLANDS  = 31
const CTRY_NEW_ZEALAND  = 64
const CTRY_NICARAGUA  = 505
const CTRY_NORWAY  = 47
const CTRY_OMAN  = 968
const CTRY_PAKISTAN  = 92
const CTRY_PANAMA  = 507
const CTRY_PARAGUAY  = 595
const CTRY_PERU  = 51
const CTRY_PHILIPPINES  = 63
const CTRY_POLAND  = 48
const CTRY_PORTUGAL  = 351
const CTRY_PRCHINA  = 86
const CTRY_PUERTO_RICO  = 1
const CTRY_QATAR  = 974
const CTRY_ROMANIA  = 40
const CTRY_RUSSIA  = 7
const CTRY_SAUDI_ARABIA  = 966
const CTRY_SERBIA  = 381
const CTRY_SINGAPORE  = 65
const CTRY_SLOVAK  = 421
const CTRY_SLOVENIA  = 386
const CTRY_SOUTH_AFRICA  = 27
const CTRY_SOUTH_KOREA  = 82
const CTRY_SPAIN  = 34
const CTRY_SWEDEN  = 46
const CTRY_SWITZERLAND  = 41
const CTRY_SYRIA  = 963
const CTRY_TAIWAN  = 886
const CTRY_TATARSTAN  = 7
const CTRY_THAILAND  = 66
const CTRY_TRINIDAD_Y_TOBAGO  = 1
const CTRY_TUNISIA  = 216
const CTRY_TURKEY  = 90
const CTRY_UAE  = 971
const CTRY_UKRAINE  = 380
const CTRY_UNITED_KINGDOM  = 44
const CTRY_UNITED_STATES  = 1
const CTRY_URUGUAY  = 598
const CTRY_UZBEKISTAN  = 7
const CTRY_VENEZUELA  = 58
const CTRY_VIET_NAM  = 84
const CTRY_YEMEN  = 967
const CTRY_ZIMBABWE  = 263
const CAL_GREGORIAN  = 1
const CAL_GREGORIAN_US  = 2
const CAL_JAPAN  = 3
const CAL_TAIWAN  = 4
const CAL_KOREA  = 5
const CAL_HIJRI  = 6
const CAL_THAI  = 7
const CAL_HEBREW  = 8
const CAL_GREGORIAN_ME_FRENCH  = 9
const CAL_GREGORIAN_ARABIC  = 10
const CAL_GREGORIAN_XLIT_ENGLISH  = 11
const CAL_GREGORIAN_XLIT_FRENCH  = 12
const CAL_PERSIAN  = 22
const CAL_UMALQURA  = 23
const LGRPID = Culong
const LCTYPE = Culong
const CALTYPE = Culong
const CALID = Culong
const GEOTYPE = Culong
const GEOCLASS = Culong
const GEOID = Culong

mutable struct numberfmtA
    NumDigits::UInt32
    LeadingZero::UInt32
    Grouping::UInt32
    lpDecimalSep::Ptr{Cchar}
    lpThousandSep::Ptr{Cchar}
    NegativeOrder::UInt32
end


mutable struct numberfmtW
    NumDigits::UInt32
    LeadingZero::UInt32
    Grouping::UInt32
    lpDecimalSep::Ptr{Cwchar_t}
    lpThousandSep::Ptr{Cwchar_t}
    NegativeOrder::UInt32
end


mutable struct currencyfmtA
    NumDigits::UInt32
    LeadingZero::UInt32
    Grouping::UInt32
    lpDecimalSep::Ptr{Cchar}
    lpThousandSep::Ptr{Cchar}
    NegativeOrder::UInt32
    PositiveOrder::UInt32
    lpCurrencySymbol::Ptr{Cchar}
end


mutable struct currencyfmtW
    NumDigits::UInt32
    LeadingZero::UInt32
    Grouping::UInt32
    lpDecimalSep::Ptr{Cwchar_t}
    lpThousandSep::Ptr{Cwchar_t}
    NegativeOrder::UInt32
    PositiveOrder::UInt32
    lpCurrencySymbol::Ptr{Cwchar_t}
end

const NLS_FUNCTION = Culong

mutable struct nlsversioninfo
    dwNLSVersionInfoSize::Culong
    dwNLSVersion::Culong
    dwDefinedVersion::Culong
end

@enum NORM_FORM::Int32 NormalizationOther=0 NormalizationC=1 NormalizationD=2 NormalizationKC=5 NormalizationKD=6

mutable struct FILEMUIINFO
    dwSize::Culong
    dwVersion::Culong
    dwFileType::Culong
    pChecksum::SVector{16,Cuchar}
    pServiceChecksum::SVector{16,Cuchar}
    dwLanguageNameOffset::Culong
    dwTypeIDMainSize::Culong
    dwTypeIDMainOffset::Culong
    dwTypeNameMainOffset::Culong
    dwTypeIDMUISize::Culong
    dwTypeIDMUIOffset::Culong
    dwTypeNameMUIOffset::Culong
    abBuffer::SVector{8,Cuchar}
end

function IsDBCSLeadByte( TestChar::Cuchar )::Cint
    ccall( (:IsDBCSLeadByte, "kernel32"), stdcall, Cint,
        ( Cuchar,  ),
        TestChar )
end
function IsDBCSLeadByteEx( CodePage::UInt32, TestChar::Cuchar )::Cint
    ccall( (:IsDBCSLeadByteEx, "kernel32"), stdcall, Cint,
        ( UInt32, Cuchar,  ),
        CodePage, TestChar )
end
function NotifyUILanguageChange( dwFlags::Culong, pcwstrNewLanguage::Ptr{Cwchar_t}, pcwstrPreviousLanguage::Ptr{Cwchar_t}, dwReserved::Culong, pdwStatusRtrn::Ptr{Culong} )::Cint
    ccall( (:NotifyUILanguageChange, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cwchar_t}, Ptr{Cwchar_t}, Culong, Ptr{Culong},  ),
        dwFlags, pcwstrNewLanguage, pcwstrPreviousLanguage, dwReserved, pdwStatusRtrn )
end
function IsValidLocaleName( lpLocaleName::Ptr{Cwchar_t} )::Cint
    ccall( (:IsValidLocaleName, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpLocaleName )
end

mutable struct COORD
    X::Cshort
    Y::Cshort
end


mutable struct SMALL_RECT
    Left::Cshort
    Top::Cshort
    Right::Cshort
    Bottom::Cshort
end


mutable struct MOUSE_EVENT_RECORD
    dwMousePosition::COORD
    dwButtonState::Culong
    dwControlKeyState::Culong
    dwEventFlags::Culong
end


mutable struct WINDOW_BUFFER_SIZE_RECORD
    dwSize::COORD
end


mutable struct MENU_EVENT_RECORD
    dwCommandId::UInt32
end


mutable struct FOCUS_EVENT_RECORD
    bSetFocus::Cint
end


mutable struct CONSOLE_FONT_INFO
    nFont::Culong
    dwFontSize::COORD
end

function AllocConsole(  )::Cint
    ccall( (:AllocConsole, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function FreeConsole(  )::Cint
    ccall( (:FreeConsole, "kernel32"), stdcall, Cint,
        (  ),
         )
end
function AttachConsole( dwProcessId::Culong )::Cint
    ccall( (:AttachConsole, "kernel32"), stdcall, Cint,
        ( Culong,  ),
        dwProcessId )
end
function GetConsoleCP(  )::UInt32
    ccall( (:GetConsoleCP, "kernel32"), stdcall, UInt32,
        (  ),
         )
end
function GetConsoleOutputCP(  )::UInt32
    ccall( (:GetConsoleOutputCP, "kernel32"), stdcall, UInt32,
        (  ),
         )
end
function GetConsoleMode( hConsoleHandle::Ptr{Cvoid}, lpMode::Ptr{Culong} )::Cint
    ccall( (:GetConsoleMode, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hConsoleHandle, lpMode )
end
function SetConsoleMode( hConsoleHandle::Ptr{Cvoid}, dwMode::Culong )::Cint
    ccall( (:SetConsoleMode, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Culong,  ),
        hConsoleHandle, dwMode )
end
function GetNumberOfConsoleInputEvents( hConsoleInput::Ptr{Cvoid}, lpNumberOfEvents::Ptr{Culong} )::Cint
    ccall( (:GetNumberOfConsoleInputEvents, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Ptr{Culong},  ),
        hConsoleInput, lpNumberOfEvents )
end

mutable struct CONSOLE_READCONSOLE_CONTROL
    nLength::Culong
    nInitialChars::Culong
    dwCtrlWakeupMask::Culong
    dwControlKeyState::Culong
end

const CTRL_C_EVENT  = 0
const CTRL_BREAK_EVENT  = 1
const CTRL_CLOSE_EVENT  = 2
const CTRL_LOGOFF_EVENT  = 5
const CTRL_SHUTDOWN_EVENT  = 6
function FillConsoleOutputCharacterA( hConsoleOutput::Ptr{Cvoid}, cCharacter::Cchar, nLength::Culong, dwWriteCoord::COORD, lpNumberOfCharsWritten::Ptr{Culong} )::Cint
    ccall( (:FillConsoleOutputCharacterA, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cchar, Culong, COORD, Ptr{Culong},  ),
        hConsoleOutput, cCharacter, nLength, dwWriteCoord, lpNumberOfCharsWritten )
end
function FillConsoleOutputCharacterW( hConsoleOutput::Ptr{Cvoid}, cCharacter::Cwchar_t, nLength::Culong, dwWriteCoord::COORD, lpNumberOfCharsWritten::Ptr{Culong} )::Cint
    ccall( (:FillConsoleOutputCharacterW, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cwchar_t, Culong, COORD, Ptr{Culong},  ),
        hConsoleOutput, cCharacter, nLength, dwWriteCoord, lpNumberOfCharsWritten )
end
function FillConsoleOutputAttribute( hConsoleOutput::Ptr{Cvoid}, wAttribute::Cushort, nLength::Culong, dwWriteCoord::COORD, lpNumberOfAttrsWritten::Ptr{Culong} )::Cint
    ccall( (:FillConsoleOutputAttribute, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cushort, Culong, COORD, Ptr{Culong},  ),
        hConsoleOutput, wAttribute, nLength, dwWriteCoord, lpNumberOfAttrsWritten )
end
function GenerateConsoleCtrlEvent( dwCtrlEvent::Culong, dwProcessGroupId::Culong )::Cint
    ccall( (:GenerateConsoleCtrlEvent, "kernel32"), stdcall, Cint,
        ( Culong, Culong,  ),
        dwCtrlEvent, dwProcessGroupId )
end
function CreateConsoleScreenBuffer( dwDesiredAccess::Culong, dwShareMode::Culong, lpSecurityAttributes::SECURITY_ATTRIBUTES, dwFlags::Culong, lpScreenBufferData::Ptr{Cvoid} )::Ptr{Cvoid}
    ccall( (:CreateConsoleScreenBuffer, "kernel32"), stdcall, Ptr{Cvoid},
        ( Culong, Culong, SECURITY_ATTRIBUTES, Culong, Ptr{Cvoid},  ),
        dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwFlags, lpScreenBufferData )
end
function SetConsoleActiveScreenBuffer( hConsoleOutput::Ptr{Cvoid} )::Cint
    ccall( (:SetConsoleActiveScreenBuffer, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hConsoleOutput )
end
function FlushConsoleInputBuffer( hConsoleInput::Ptr{Cvoid} )::Cint
    ccall( (:FlushConsoleInputBuffer, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid},  ),
        hConsoleInput )
end
function SetConsoleCP( wCodePageID::UInt32 )::Cint
    ccall( (:SetConsoleCP, "kernel32"), stdcall, Cint,
        ( UInt32,  ),
        wCodePageID )
end
function SetConsoleOutputCP( wCodePageID::UInt32 )::Cint
    ccall( (:SetConsoleOutputCP, "kernel32"), stdcall, Cint,
        ( UInt32,  ),
        wCodePageID )
end

mutable struct CONSOLE_CURSOR_INFO
    dwSize::Culong
    bVisible::Cint
end

function SetConsoleCursorInfo( hConsoleOutput::Ptr{Cvoid}, lpConsoleCursorInfo::CONSOLE_CURSOR_INFO )::Cint
    ccall( (:SetConsoleCursorInfo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, CONSOLE_CURSOR_INFO,  ),
        hConsoleOutput, lpConsoleCursorInfo )
end

mutable struct CONSOLE_SCREEN_BUFFER_INFO
    dwSize::COORD
    dwCursorPosition::COORD
    wAttributes::Cushort
    srWindow::SMALL_RECT
    dwMaximumWindowSize::COORD
end


mutable struct CONSOLE_SCREEN_BUFFER_INFOEX
    cbSize::Culong
    dwSize::COORD
    dwCursorPosition::COORD
    wAttributes::Cushort
    srWindow::SMALL_RECT
    dwMaximumWindowSize::COORD
    wPopupAttributes::Cushort
    bFullscreenSupported::Cint
    ColorTable::SVector{16,COLORREF}
end

function SetConsoleScreenBufferSize( hConsoleOutput::Ptr{Cvoid}, dwSize::COORD )::Cint
    ccall( (:SetConsoleScreenBufferSize, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, COORD,  ),
        hConsoleOutput, dwSize )
end
function SetConsoleCursorPosition( hConsoleOutput::Ptr{Cvoid}, dwCursorPosition::COORD )::Cint
    ccall( (:SetConsoleCursorPosition, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, COORD,  ),
        hConsoleOutput, dwCursorPosition )
end
function GetLargestConsoleWindowSize( hConsoleOutput::Ptr{Cvoid} )::COORD
    ccall( (:GetLargestConsoleWindowSize, "kernel32"), stdcall, COORD,
        ( Ptr{Cvoid},  ),
        hConsoleOutput )
end
function SetConsoleTextAttribute( hConsoleOutput::Ptr{Cvoid}, wAttributes::Cushort )::Cint
    ccall( (:SetConsoleTextAttribute, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cushort,  ),
        hConsoleOutput, wAttributes )
end
function SetConsoleWindowInfo( hConsoleOutput::Ptr{Cvoid}, bAbsolute::Cint, lpConsoleWindow::SMALL_RECT )::Cint
    ccall( (:SetConsoleWindowInfo, "kernel32"), stdcall, Cint,
        ( Ptr{Cvoid}, Cint, SMALL_RECT,  ),
        hConsoleOutput, bAbsolute, lpConsoleWindow )
end
function SetConsoleTitleA( lpConsoleTitle::Ptr{Cchar} )::Cint
    ccall( (:SetConsoleTitleA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar},  ),
        lpConsoleTitle )
end
function SetConsoleTitleW( lpConsoleTitle::Ptr{Cwchar_t} )::Cint
    ccall( (:SetConsoleTitleW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t},  ),
        lpConsoleTitle )
end
function GetNumberOfConsoleMouseButtons( lpNumberOfMouseButtons::Ptr{Culong} )::Cint
    ccall( (:GetNumberOfConsoleMouseButtons, "kernel32"), stdcall, Cint,
        ( Ptr{Culong},  ),
        lpNumberOfMouseButtons )
end
function GetConsoleFontSize( hConsoleOutput::Ptr{Cvoid}, nFont::Culong )::COORD
    ccall( (:GetConsoleFontSize, "kernel32"), stdcall, COORD,
        ( Ptr{Cvoid}, Culong,  ),
        hConsoleOutput, nFont )
end

mutable struct CONSOLE_SELECTION_INFO
    dwFlags::Culong
    dwSelectionAnchor::COORD
    srSelection::SMALL_RECT
end


mutable struct CONSOLE_HISTORY_INFO
    cbSize::UInt32
    HistoryBufferSize::UInt32
    NumberOfHistoryBuffers::UInt32
    dwFlags::Culong
end

const CONSOLE_FULLSCREEN  = 1
const CONSOLE_FULLSCREEN_HARDWARE  = 2
function GetConsoleDisplayMode( lpModeFlags::Ptr{Culong} )::Cint
    ccall( (:GetConsoleDisplayMode, "kernel32"), stdcall, Cint,
        ( Ptr{Culong},  ),
        lpModeFlags )
end
const CONSOLE_FULLSCREEN_MODE  = 1
const CONSOLE_WINDOWED_MODE  = 2
function AddConsoleAliasA( Source::Ptr{Cchar}, Target::Ptr{Cchar}, ExeName::Ptr{Cchar} )::Cint
    ccall( (:AddConsoleAliasA, "kernel32"), stdcall, Cint,
        ( Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar},  ),
        Source, Target, ExeName )
end
function AddConsoleAliasW( Source::Ptr{Cwchar_t}, Target::Ptr{Cwchar_t}, ExeName::Ptr{Cwchar_t} )::Cint
    ccall( (:AddConsoleAliasW, "kernel32"), stdcall, Cint,
        ( Ptr{Cwchar_t}, Ptr{Cwchar_t}, Ptr{Cwchar_t},  ),
        Source, Target, ExeName )
end
function GetConsoleAliasesLengthA( ExeName::Ptr{Cchar} )::Culong
    ccall( (:GetConsoleAliasesLengthA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar},  ),
        ExeName )
end
function GetConsoleAliasesLengthW( ExeName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetConsoleAliasesLengthW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t},  ),
        ExeName )
end
function GetConsoleAliasExesLengthA(  )::Culong
    ccall( (:GetConsoleAliasExesLengthA, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function GetConsoleAliasExesLengthW(  )::Culong
    ccall( (:GetConsoleAliasExesLengthW, "kernel32"), stdcall, Culong,
        (  ),
         )
end
function ExpungeConsoleCommandHistoryA( ExeName::Ptr{Cchar} )::Cvoid
    ccall( (:ExpungeConsoleCommandHistoryA, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cchar},  ),
        ExeName )
end
function ExpungeConsoleCommandHistoryW( ExeName::Ptr{Cwchar_t} )::Cvoid
    ccall( (:ExpungeConsoleCommandHistoryW, "kernel32"), stdcall, Cvoid,
        ( Ptr{Cwchar_t},  ),
        ExeName )
end
function SetConsoleNumberOfCommandsA( Number::Culong, ExeName::Ptr{Cchar} )::Cint
    ccall( (:SetConsoleNumberOfCommandsA, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cchar},  ),
        Number, ExeName )
end
function SetConsoleNumberOfCommandsW( Number::Culong, ExeName::Ptr{Cwchar_t} )::Cint
    ccall( (:SetConsoleNumberOfCommandsW, "kernel32"), stdcall, Cint,
        ( Culong, Ptr{Cwchar_t},  ),
        Number, ExeName )
end
function GetConsoleCommandHistoryLengthA( ExeName::Ptr{Cchar} )::Culong
    ccall( (:GetConsoleCommandHistoryLengthA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar},  ),
        ExeName )
end
function GetConsoleCommandHistoryLengthW( ExeName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetConsoleCommandHistoryLengthW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t},  ),
        ExeName )
end
function GetConsoleCommandHistoryA( Commands::Ptr{Cchar}, CommandBufferLength::Culong, ExeName::Ptr{Cchar} )::Culong
    ccall( (:GetConsoleCommandHistoryA, "kernel32"), stdcall, Culong,
        ( Ptr{Cchar}, Culong, Ptr{Cchar},  ),
        Commands, CommandBufferLength, ExeName )
end
function GetConsoleCommandHistoryW( Commands::Ptr{Cwchar_t}, CommandBufferLength::Culong, ExeName::Ptr{Cwchar_t} )::Culong
    ccall( (:GetConsoleCommandHistoryW, "kernel32"), stdcall, Culong,
        ( Ptr{Cwchar_t}, Culong, Ptr{Cwchar_t},  ),
        Commands, CommandBufferLength, ExeName )
end
const CONSOLE_TEXTMODE_BUFFER  = 1
const REG_SECURE_CONNECTION  = 1
const MAX_REASON_NAME_LEN  = 64
const MAX_REASON_DESC_LEN  = 256
const MAX_REASON_BUGID_LEN  = 32
const MAX_REASON_COMMENT_LEN  = 512
const SHUTDOWN_TYPE_LEN  = 32
const POLICY_SHOWREASONUI_NEVER  = 0
const POLICY_SHOWREASONUI_ALWAYS  = 1
const POLICY_SHOWREASONUI_WORKSTATIONONLY  = 2
const POLICY_SHOWREASONUI_SERVERONLY  = 3
const SNAPSHOT_POLICY_NEVER  = 0
const SNAPSHOT_POLICY_ALWAYS  = 1
const SNAPSHOT_POLICY_UNPLANNED  = 2
const MAX_NUM_REASONS  = 256
const NETPROPERTY_PERSISTENT  = 1

mutable struct NETINFOSTRUCT
    cbStructure::Culong
    dwProviderVersion::Culong
    dwStatus::Culong
    dwCharacteristics::Culong
    dwHandle::Int
    wNetType::Cushort
    dwPrinters::Culong
    dwDrives::Culong
end


mutable struct NETCONNECTINFOSTRUCT
    cbStructure::Culong
    dwFlags::Culong
    dwSpeed::Culong
    dwDelay::Culong
    dwOptDataSize::Culong
end

const CP_WINANSI  = 1004
const CP_WINUNICODE  = 1200
const EC_ENABLEALL  = 0
const EC_QUERYWAITING  = 2

mutable struct DDEML_MSG_HOOK_DATA
    uiLo::UInt
    uiHi::UInt
    cbData::Culong
    Data::SVector{8,Culong}
end

const MH_CREATE  = 1
const MH_KEEP  = 2
const MH_DELETE  = 3
const MH_CLEANUP  = 4

mutable struct MONERRSTRUCT
    cb::UInt32
    wLastError::UInt32
    dwTime::Culong
    hTask::Ptr{Cvoid}
end

const MAXPNAMELEN  = 32
const MAXERRORLENGTH  = 256
const MAX_JOYSTICKOEMVXDNAME  = 260
const MM_MICROSOFT  = 1
const MM_MIDI_MAPPER  = 1
const MM_WAVE_MAPPER  = 2
const MM_SNDBLST_MIDIOUT  = 3
const MM_SNDBLST_MIDIIN  = 4
const MM_SNDBLST_SYNTH  = 5
const MM_SNDBLST_WAVEOUT  = 6
const MM_SNDBLST_WAVEIN  = 7
const MM_ADLIB  = 9
const MM_MPU401_MIDIOUT  = 10
const MM_MPU401_MIDIIN  = 11
const MM_PC_JOYSTICK  = 12
const MMVERSION = UInt32
const VERSION = UInt32
const MMSYSERR_BASE  = 0
const WAVERR_BASE  = 32
const MIDIERR_BASE  = 64
const TIMERR_BASE  = 96
const JOYERR_BASE  = 160
const MCIERR_BASE  = 256
const MIXERR_BASE  = 1024
const MCI_STRING_OFFSET  = 512
const MCI_VD_OFFSET  = 1024
const MCI_CD_OFFSET  = 1088
const MCI_WAVE_OFFSET  = 1152
const MCI_SEQ_OFFSET  = 1216
const MMSYSERR_NOERROR  = 0
const MCIERROR = Culong
const MCIDEVICEID = UInt32
const MCI_DEVTYPE_VCR  = 513
const MCI_DEVTYPE_VIDEODISC  = 514
const MCI_DEVTYPE_OVERLAY  = 515
const MCI_DEVTYPE_CD_AUDIO  = 516
const MCI_DEVTYPE_DAT  = 517
const MCI_DEVTYPE_SCANNER  = 518
const MCI_DEVTYPE_ANIMATION  = 519
const MCI_DEVTYPE_DIGITAL_VIDEO  = 520
const MCI_DEVTYPE_OTHER  = 521
const MCI_DEVTYPE_WAVEFORM_AUDIO  = 522
const MCI_DEVTYPE_SEQUENCER  = 523
const MCI_FORMAT_MILLISECONDS  = 0
const MCI_FORMAT_HMS  = 1
const MCI_FORMAT_MSF  = 2
const MCI_FORMAT_FRAMES  = 3
const MCI_FORMAT_SMPTE_24  = 4
const MCI_FORMAT_SMPTE_25  = 5
const MCI_FORMAT_SMPTE_30  = 6
const MCI_FORMAT_SMPTE_30DROP  = 7
const MCI_FORMAT_BYTES  = 8
const MCI_FORMAT_SAMPLES  = 9
const MCI_FORMAT_TMSF  = 10

mutable struct MCI_GENERIC_PARMS
    dwCallback::Int
end


mutable struct MCI_OPEN_PARMSA
    dwCallback::Int
    wDeviceID::MCIDEVICEID
    lpstrDeviceType::Ptr{Cchar}
    lpstrElementName::Ptr{Cchar}
    lpstrAlias::Ptr{Cchar}
end


mutable struct MCI_OPEN_PARMSW
    dwCallback::Int
    wDeviceID::MCIDEVICEID
    lpstrDeviceType::Ptr{Cwchar_t}
    lpstrElementName::Ptr{Cwchar_t}
    lpstrAlias::Ptr{Cwchar_t}
end

const MCI_OPEN_PARMS = MCI_OPEN_PARMSW
const LPMCI_OPEN_PARMS = Ptr{MCI_OPEN_PARMSW}

mutable struct MCI_OPEN_PARMS
    dwCallback::Culong
    wDeviceID::MCIDEVICEID
    wReserved0::Cushort
    lpstrDeviceType::Ptr{Cchar}
    lpstrElementName::Ptr{Cchar}
    lpstrAlias::Ptr{Cchar}
end


mutable struct MCI_PLAY_PARMS
    dwCallback::Int
    dwFrom::Culong
    dwTo::Culong
end


mutable struct MCI_SEEK_PARMS
    dwCallback::Int
    dwTo::Culong
end


mutable struct MCI_STATUS_PARMS
    dwCallback::Int
    dwReturn::Int
    dwItem::Culong
    dwTrack::Culong
end


mutable struct MCI_INFO_PARMSA
    dwCallback::Int
    lpstrReturn::Ptr{Cchar}
    dwRetSize::Culong
end


mutable struct MCI_INFO_PARMSW
    dwCallback::Int
    lpstrReturn::Ptr{Cwchar_t}
    dwRetSize::Culong
end

const MCI_INFO_PARMS = MCI_INFO_PARMSW
const LPMCI_INFO_PARMS = Ptr{MCI_INFO_PARMSW}

mutable struct MCI_INFO_PARMS
    dwCallback::Culong
    lpstrReturn::Ptr{Cchar}
    dwRetSize::Culong
end


mutable struct MCI_GETDEVCAPS_PARMS
    dwCallback::Int
    dwReturn::Culong
    dwItem::Culong
end


mutable struct MCI_SYSINFO_PARMSA
    dwCallback::Int
    lpstrReturn::Ptr{Cchar}
    dwRetSize::Culong
    dwNumber::Culong
    wDeviceType::UInt32
end


mutable struct MCI_SYSINFO_PARMSW
    dwCallback::Int
    lpstrReturn::Ptr{Cwchar_t}
    dwRetSize::Culong
    dwNumber::Culong
    wDeviceType::UInt32
end

const MCI_SYSINFO_PARMS = MCI_SYSINFO_PARMSW
const LPMCI_SYSINFO_PARMS = Ptr{MCI_SYSINFO_PARMSW}

mutable struct MCI_SYSINFO_PARMS
    dwCallback::Culong
    lpstrReturn::Ptr{Cchar}
    dwRetSize::Culong
    dwNumber::Culong
    wDeviceType::Cushort
    wReserved0::Cushort
end


mutable struct MCI_SET_PARMS
    dwCallback::Int
    dwTimeFormat::Culong
    dwAudio::Culong
end


mutable struct MCI_SAVE_PARMSA
    dwCallback::Int
    lpfilename::Ptr{Cchar}
end


mutable struct MCI_SAVE_PARMSW
    dwCallback::Int
    lpfilename::Ptr{Cwchar_t}
end

const MCI_SAVE_PARMS = MCI_SAVE_PARMSW
const LPMCI_SAVE_PARMS = Ptr{MCI_SAVE_PARMSW}

mutable struct MCI_SAVE_PARMS
    dwCallback::Int
    lpfilename::Ptr{Cchar}
end


mutable struct MCI_LOAD_PARMSA
    dwCallback::Int
    lpfilename::Ptr{Cchar}
end


mutable struct MCI_LOAD_PARMSW
    dwCallback::Int
    lpfilename::Ptr{Cwchar_t}
end

const MCI_LOAD_PARMS = MCI_LOAD_PARMSW
const LPMCI_LOAD_PARMS = Ptr{MCI_LOAD_PARMSW}

mutable struct MCI_LOAD_PARMS
    dwCallback::Culong
    lpfilename::Ptr{Cchar}
end


mutable struct MCI_RECORD_PARMS
    dwCallback::Int
    dwFrom::Culong
    dwTo::Culong
end


mutable struct MCI_VD_PLAY_PARMS
    dwCallback::Int
    dwFrom::Culong
    dwTo::Culong
    dwSpeed::Culong
end


mutable struct MCI_VD_STEP_PARMS
    dwCallback::Int
    dwFrames::Culong
end


mutable struct MCI_VD_ESCAPE_PARMSA
    dwCallback::Int
    lpstrCommand::Ptr{Cchar}
end


mutable struct MCI_VD_ESCAPE_PARMSW
    dwCallback::Int
    lpstrCommand::Ptr{Cwchar_t}
end

const MCI_VD_ESCAPE_PARMS = MCI_VD_ESCAPE_PARMSW
const LPMCI_VD_ESCAPE_PARMS = Ptr{MCI_VD_ESCAPE_PARMSW}

mutable struct MCI_VD_ESCAPE_PARMS
    dwCallback::Culong
    lpstrCommand::Ptr{Cchar}
end


mutable struct MCI_WAVE_OPEN_PARMSA
    dwCallback::Int
    wDeviceID::MCIDEVICEID
    lpstrDeviceType::Ptr{Cchar}
    lpstrElementName::Ptr{Cchar}
    lpstrAlias::Ptr{Cchar}
    dwBufferSeconds::Culong
end


mutable struct MCI_WAVE_OPEN_PARMSW
    dwCallback::Int
    wDeviceID::MCIDEVICEID
    lpstrDeviceType::Ptr{Cwchar_t}
    lpstrElementName::Ptr{Cwchar_t}
    lpstrAlias::Ptr{Cwchar_t}
    dwBufferSeconds::Culong
end

const MCI_WAVE_OPEN_PARMS = MCI_WAVE_OPEN_PARMSW
const LPMCI_WAVE_OPEN_PARMS = Ptr{MCI_WAVE_OPEN_PARMSW}

mutable struct MCI_WAVE_OPEN_PARMS
    dwCallback::Culong
    wDeviceID::MCIDEVICEID
    wReserved0::Cushort
    lpstrDeviceType::Ptr{Cchar}
    lpstrElementName::Ptr{Cchar}
    lpstrAlias::Ptr{Cchar}
    dwBufferSeconds::Culong
end


mutable struct MCI_WAVE_DELETE_PARMS
    dwCallback::Int
    dwFrom::Culong
    dwTo::Culong
end


mutable struct MCI_WAVE_SET_PARMS
    dwCallback::Int
    dwTimeFormat::Culong
    dwAudio::Culong
    wInput::UInt32
    wOutput::UInt32
    wInput::Cushort
    wReserved0::Cushort
    wOutput::Cushort
    wReserved1::Cushort
    wFormatTag::Cushort
    wReserved2::Cushort
    nChannels::Cushort
    wReserved3::Cushort
    nSamplesPerSec::Culong
    nAvgBytesPerSec::Culong
    nBlockAlign::Cushort
    wReserved4::Cushort
    wBitsPerSample::Cushort
    wReserved5::Cushort
end


mutable struct MCI_SEQ_SET_PARMS
    dwCallback::Int
    dwTimeFormat::Culong
    dwAudio::Culong
    dwTempo::Culong
    dwPort::Culong
    dwSlave::Culong
    dwMaster::Culong
    dwOffset::Culong
end


mutable struct MCI_ANIM_PLAY_PARMS
    dwCallback::Int
    dwFrom::Culong
    dwTo::Culong
    dwSpeed::Culong
end


mutable struct MCI_ANIM_STEP_PARMS
    dwCallback::Int
    dwFrames::Culong
end


mutable struct MCI_ANIM_RECT_PARMS
    dwCallback::Int
    ptOffset::POINT
    ptExtent::POINT
    rc::RECT
end


mutable struct MCI_OVLY_RECT_PARMS
    dwCallback::Int
    ptOffset::POINT
    ptExtent::POINT
    rc::RECT
end


mutable struct MCI_OVLY_SAVE_PARMSA
    dwCallback::Int
    lpfilename::Ptr{Cchar}
    rc::RECT
end


mutable struct MCI_OVLY_SAVE_PARMSW
    dwCallback::Int
    lpfilename::Ptr{Cwchar_t}
    rc::RECT
end

const MCI_OVLY_SAVE_PARMS = MCI_OVLY_SAVE_PARMSW
const LPMCI_OVLY_SAVE_PARMS = Ptr{MCI_OVLY_SAVE_PARMSW}

mutable struct MCI_OVLY_SAVE_PARMS
    dwCallback::Culong
    lpfilename::Ptr{Cchar}
    rc::RECT
end


mutable struct MCI_OVLY_LOAD_PARMSA
    dwCallback::Int
    lpfilename::Ptr{Cchar}
    rc::RECT
end


mutable struct MCI_OVLY_LOAD_PARMSW
    dwCallback::Int
    lpfilename::Ptr{Cwchar_t}
    rc::RECT
end

const MCI_OVLY_LOAD_PARMS = MCI_OVLY_LOAD_PARMSW
const LPMCI_OVLY_LOAD_PARMS = Ptr{MCI_OVLY_LOAD_PARMSW}

mutable struct MCI_OVLY_LOAD_PARMS
    dwCallback::Culong
    lpfilename::Ptr{Cchar}
    rc::RECT
end


mutable struct DRVCONFIGINFO
    dwDCISize::Culong
    lpszDCISectionName::Ptr{Cwchar_t}
    lpszDCIAliasName::Ptr{Cwchar_t}
end

const MMIOERR_BASE  = 256
const FOURCC = Culong

mutable struct MMCKINFO
    ckid::FOURCC
    cksize::Culong
    fccType::FOURCC
    dwDataOffset::Culong
    dwFlags::Culong
end

const MMIOM_SEEK  = 2
const MMIOM_OPEN  = 3
const MMIOM_CLOSE  = 4
const MMIOM_WRITEFLUSH  = 5
const MMIOM_RENAME  = 6
const SEEK_SET  = 0
const SEEK_CUR  = 1
const SEEK_END  = 2
const MMIO_DEFAULTBUFFER  = 8192
const SND_ALIAS_START  = 0
const WAVE_FORMAT_PCM  = 1
const MIDIPATCHSIZE  = 128
const MIDI_CACHE_ALL  = 1
const MIDI_CACHE_BESTFIT  = 2
const MIDI_CACHE_QUERY  = 3
const MIDI_UNCACHE  = 4
const MOD_MIDIPORT  = 1
const MOD_SYNTH  = 2
const MOD_SQSYNTH  = 3
const MOD_FMSYNTH  = 4
const MOD_MAPPER  = 5
const MOD_WAVETABLE  = 6
const MOD_SWSYNTH  = 7
const AUXCAPS_CDAUDIO  = 1
const AUXCAPS_AUXIN  = 2
const MIXER_SHORT_NAME_CHARS  = 16
const MIXER_LONG_NAME_CHARS  = 64
const MIXERLINE_TARGETTYPE_UNDEFINED  = 0
const MIXERLINE_TARGETTYPE_WAVEOUT  = 1
const MIXERLINE_TARGETTYPE_WAVEIN  = 2
const MIXERLINE_TARGETTYPE_MIDIOUT  = 3
const MIXERLINE_TARGETTYPE_MIDIIN  = 4
const MIXERLINE_TARGETTYPE_AUX  = 5
const JOY_POVFORWARD  = 0
const JOY_POVRIGHT  = 9000
const JOY_POVBACKWARD  = 18000
const JOY_POVLEFT  = 27000
const JOYSTICKID1  = 0
const JOYSTICKID2  = 1
const SELECTDIB  = 41
const NCBNAMSZ  = 16
const MAX_LANA  = 254

mutable struct ADAPTER_STATUS
    adapter_address::SVector{6,Cuchar}
    rev_major::Cuchar
    reserved0::Cuchar
    adapter_type::Cuchar
    rev_minor::Cuchar
    duration::Cushort
    frmr_recv::Cushort
    frmr_xmit::Cushort
    iframe_recv_err::Cushort
    xmit_aborts::Cushort
    xmit_success::Culong
    recv_success::Culong
    iframe_xmit_err::Cushort
    recv_buff_unavail::Cushort
    t1_timeouts::Cushort
    ti_timeouts::Cushort
    reserved1::Culong
    free_ncbs::Cushort
    max_cfg_ncbs::Cushort
    max_ncbs::Cushort
    xmit_buf_unavail::Cushort
    max_dgram_size::Cushort
    pending_sess::Cushort
    max_cfg_sess::Cushort
    max_sess::Cushort
    max_sess_pkt_size::Cushort
    name_count::Cushort
end


mutable struct SESSION_HEADER
    sess_name::Cuchar
    num_sess::Cuchar
    rcv_dg_outstanding::Cuchar
    rcv_any_outstanding::Cuchar
end


mutable struct FIND_NAME_HEADER
    node_count::Cushort
    reserved::Cuchar
    unique_group::Cuchar
end


mutable struct FIND_NAME_BUFFER
    length::Cuchar
    access_control::Cuchar
    frame_control::Cuchar
    destination_addr::SVector{6,Cuchar}
    source_addr::SVector{6,Cuchar}
    routing_info::SVector{18,Cuchar}
end


mutable struct ACTION_HEADER
    transport_id::Culong
    action_code::Cushort
    reserved::Cushort
end

const RPC_C_BINDING_INFINITE_TIMEOUT  = 10
const RPC_C_BINDING_MIN_TIMEOUT  = 0
const RPC_C_BINDING_DEFAULT_TIMEOUT  = 5
const RPC_C_BINDING_MAX_TIMEOUT  = 9
const RPC_C_LISTEN_MAX_CALLS_DEFAULT  = 1234
const RPC_C_PROTSEQ_MAX_REQS_DEFAULT  = 10
const RPC_C_BIND_TO_ALL_NICS  = 1
const RPC_C_MQ_EXPRESS  = 0
const RPC_C_MQ_RECOVERABLE  = 1
const RPC_C_MQ_JOURNAL_NONE  = 0
const RPC_C_MQ_JOURNAL_DEADLETTER  = 1
const RPC_C_MQ_JOURNAL_ALWAYS  = 2
const RPC_C_OPT_MQ_DELIVERY  = 1
const RPC_C_OPT_MQ_PRIORITY  = 2
const RPC_C_OPT_MQ_JOURNAL  = 3
const RPC_C_OPT_MQ_ACKNOWLEDGE  = 4
const RPC_C_OPT_MQ_AUTHN_SERVICE  = 5
const RPC_C_OPT_MQ_AUTHN_LEVEL  = 6
const RPC_C_OPT_MQ_TIME_TO_REACH_QUEUE  = 7
const RPC_C_OPT_MQ_TIME_TO_BE_RECEIVED  = 8
const RPC_C_OPT_BINDING_NONCAUSAL  = 9
const RPC_C_OPT_SECURITY_CALLBACK  = 10
const RPC_C_OPT_UNIQUE_BINDING  = 11
const RPC_C_OPT_MAX_OPTIONS  = 12
const RPC_C_OPT_CALL_TIMEOUT  = 12
const RPC_C_OPT_DONT_LINGER  = 13
const RPC_C_OPT_MAX_OPTIONS  = 14
const RPC_C_OPT_TRANS_SEND_BUFFER_SIZE  = 5
const RPC_C_OPT_CALL_TIMEOUT  = 12
const RPC_C_OPT_DONT_LINGER  = 13
const RPC_C_OPT_TRUST_PEER  = 14
const RPC_C_OPT_ASYNC_BLOCK  = 15
const RPC_C_OPT_OPTIMIZE_TIME  = 16
const RPC_C_OPT_MAX_OPTIONS  = 17

mutable struct RPC_PROTSEQ_VECTORA
    Count::UInt32
    Protseq::SVector{1,Ptr{Cuchar } }
end


mutable struct RPC_PROTSEQ_VECTOR
    Count::UInt32
    Protseq::SVector{1,Ptr{Cuchar } }
end

const RPC_C_STATS_CALLS_IN  = 0
const RPC_C_STATS_CALLS_OUT  = 1
const RPC_C_STATS_PKTS_IN  = 2
const RPC_C_STATS_PKTS_OUT  = 3
const RPC_C_AUTHN_LEVEL_DEFAULT  = 0
const RPC_C_AUTHN_LEVEL_NONE  = 1
const RPC_C_AUTHN_LEVEL_CONNECT  = 2
const RPC_C_AUTHN_LEVEL_CALL  = 3
const RPC_C_AUTHN_LEVEL_PKT  = 4
const RPC_C_AUTHN_LEVEL_PKT_INTEGRITY  = 5
const RPC_C_AUTHN_LEVEL_PKT_PRIVACY  = 6
const RPC_C_IMP_LEVEL_DEFAULT  = 0
const RPC_C_IMP_LEVEL_ANONYMOUS  = 1
const RPC_C_IMP_LEVEL_IDENTIFY  = 2
const RPC_C_IMP_LEVEL_IMPERSONATE  = 3
const RPC_C_IMP_LEVEL_DELEGATE  = 4
const RPC_C_QOS_IDENTITY_STATIC  = 0
const RPC_C_QOS_IDENTITY_DYNAMIC  = 1
const RPC_C_AUTHN_NONE  = 0
const RPC_C_AUTHN_DCE_PRIVATE  = 1
const RPC_C_AUTHN_DCE_PUBLIC  = 2
const RPC_C_AUTHN_DEC_PUBLIC  = 4
const RPC_C_AUTHN_GSS_NEGOTIATE  = 9
const RPC_C_AUTHN_WINNT  = 10
const RPC_C_AUTHN_GSS_SCHANNEL  = 14
const RPC_C_AUTHN_GSS_KERBEROS  = 16
const RPC_C_AUTHN_DPA  = 17
const RPC_C_AUTHN_MSN  = 18
const RPC_C_AUTHN_DIGEST  = 21
const RPC_C_AUTHN_KERNEL  = 20
const RPC_C_AUTHN_NEGO_EXTENDER  = 30
const RPC_C_AUTHN_PKU2U  = 31
const RPC_C_AUTHN_LIVE_SSP  = 32
const RPC_C_AUTHN_LIVEXP_SSP  = 35
const RPC_C_AUTHN_CLOUD_AP  = 36
const RPC_C_AUTHN_MSONLINE  = 82
const RPC_C_AUTHN_MQ  = 100
const RPC_C_AUTHN_INFO_TYPE_HTTP  = 1
const RPC_C_HTTP_AUTHN_TARGET_SERVER  = 1
const RPC_C_HTTP_AUTHN_TARGET_PROXY  = 2
const RPC_C_HTTP_FLAG_USE_SSL  = 1
const RPC_C_HTTP_FLAG_USE_FIRST_AUTH_SCHEME  = 2
const RPC_C_HTTP_FLAG_IGNORE_CERT_CN_INVALID  = 8
const RPC_C_HTTP_FLAG_ENABLE_CERT_REVOCATION_CHECK  = 16
const RPC_C_AUTHZ_NONE  = 0
const RPC_C_AUTHZ_NAME  = 1
const RPC_C_AUTHZ_DCE  = 2
const DCE_C_ERROR_STRING_LEN  = 256
const RPC_C_MGMT_INQ_IF_IDS  = 0
const RPC_C_MGMT_INQ_PRINC_NAME  = 1
const RPC_C_MGMT_INQ_STATS  = 2
const RPC_C_MGMT_IS_SERVER_LISTEN  = 3
const RPC_C_MGMT_STOP_SERVER_LISTEN  = 4
const RPC_C_PARM_MAX_PACKET_LENGTH  = 1
const RPC_C_PARM_BUFFER_LENGTH  = 2

mutable struct RPC_PROTSEQ_ENDPOINT
    RpcProtocolSequence::Ptr{Cuchar}
    Endpoint::Ptr{Cuchar}
end

const RPC_SYSTEM_HANDLE_FREE_UNRETRIEVED  = 1
const RPC_SYSTEM_HANDLE_FREE_RETRIEVED  = 2
const RPC_SYSTEM_HANDLE_FREE_ALL  = 3
const RPC_SYSTEM_HANDLE_FREE_ERROR_ON_CLOSE  = 4
const RPC_P_ADDR_FORMAT_TCP_IPV4  = 1
const RPC_P_ADDR_FORMAT_TCP_IPV6  = 2
const RPC_PROXY_CONNECTION_TYPE_IN_PROXY  = 0
const RPC_PROXY_CONNECTION_TYPE_OUT_PROXY  = 1
const RPC_C_OPT_PRIVATE_SUPPRESS_WAKE  = 1
const RPC_C_OPT_PRIVATE_DO_NOT_DISTURB  = 2
const RPC_C_OPT_PRIVATE_BREAK_ON_SUSPEND  = 3
const RPC_C_NS_SYNTAX_DEFAULT  = 0
const RPC_C_NS_SYNTAX_DCE  = 3
const RPC_C_PROFILE_DEFAULT_ELT  = 0
const RPC_C_PROFILE_ALL_ELT  = 1
const RPC_C_PROFILE_MATCH_BY_IF  = 2
const RPC_C_PROFILE_MATCH_BY_MBR  = 3
const RPC_C_PROFILE_MATCH_BY_BOTH  = 4
const RPC_EEINFO_VERSION  = 1
const ABE_LEFT  = 0
const ABE_TOP  = 1
const ABE_RIGHT  = 2
const ABE_BOTTOM  = 3
const FILEOP_FLAGS = Cushort
const PRINTEROP_FLAGS = Cushort

mutable struct SHNAMEMAPPINGA
    pszOldPath::Ptr{Cchar}
    pszNewPath::Ptr{Cchar}
    cchOldPath::Cint
    cchNewPath::Cint
end


mutable struct SHNAMEMAPPINGW
    pszOldPath::Ptr{Cwchar_t}
    pszNewPath::Ptr{Cwchar_t}
    cchOldPath::Cint
    cchNewPath::Cint
end

const SHNAMEMAPPING = SHNAMEMAPPINGW
const LPSHNAMEMAPPING = Ptr{SHNAMEMAPPINGW}
const SE_ERR_FNF  = 2
const SE_ERR_PNF  = 3
const SE_ERR_ACCESSDENIED  = 5
const SE_ERR_OOM  = 8
const SE_ERR_DLLNOTFOUND  = 32
const SE_ERR_SHARE  = 26
const SE_ERR_ASSOCINCOMPLETE  = 27
const SE_ERR_DDETIMEOUT  = 28
const SE_ERR_DDEFAIL  = 29
const SE_ERR_DDEBUSY  = 30
const SE_ERR_NOASSOC  = 31
const SHGSI_ICONLOCATION  = 0
const PRINTACTION_OPEN  = 0
const PRINTACTION_PROPERTIES  = 1
const PRINTACTION_NETINSTALL  = 2
const PRINTACTION_NETINSTALLLINK  = 3
const PRINTACTION_TESTPAGE  = 4
const PRINTACTION_OPENNETPRN  = 5
const PRINTACTION_DOCUMENTDEFAULTS  = 6
const PRINTACTION_SERVERPROPERTIES  = 7

mutable struct OPEN_PRINTER_PROPS_INFOA
    dwSize::Culong
    pszSheetName::Ptr{Cchar}
    uSheetIndex::UInt32
    dwFlags::Culong
    bModal::Cint
end


mutable struct OPEN_PRINTER_PROPS_INFOW
    dwSize::Culong
    pszSheetName::Ptr{Cwchar_t}
    uSheetIndex::UInt32
    dwFlags::Culong
    bModal::Cint
end

const OPEN_PRINTER_PROPS_INFO = OPEN_PRINTER_PROPS_INFOW
const SHIL_LARGE  = 0
const SHIL_SMALL  = 1
const SHIL_EXTRALARGE  = 2
const SHIL_SYSSMALL  = 3
const SHIL_JUMBO  = 4
const PERF_DATA_VERSION  = 1
const PERF_DATA_REVISION  = 1

mutable struct PERF_DATA_BLOCK
    Signature::SVector{4,Cwchar_t}
    LittleEndian::Culong
    Version::Culong
    Revision::Culong
    TotalByteLength::Culong
    HeaderLength::Culong
    NumObjectTypes::Culong
    DefaultObject::Culong
    SystemTime::SYSTEMTIME
    PerfTime::Int64
    PerfFreq::Int64
    PerfTime100nSec::Int64
    SystemNameLength::Culong
    SystemNameOffset::Culong
end


mutable struct PERF_OBJECT_TYPE
    TotalByteLength::Culong
    DefinitionLength::Culong
    HeaderLength::Culong
    ObjectNameTitleIndex::Culong
    ObjectNameTitle::Culong
    ObjectNameTitle::Ptr{Cwchar_t}
    ObjectHelpTitleIndex::Culong
    ObjectHelpTitle::Culong
    ObjectHelpTitle::Ptr{Cwchar_t}
    DetailLevel::Culong
    NumCounters::Culong
    DefaultCounter::Culong
    NumInstances::Culong
    CodePage::Culong
    PerfTime::Int64
    PerfFreq::Int64
end

const PERF_DETAIL_NOVICE  = 100
const PERF_DETAIL_ADVANCED  = 200
const PERF_DETAIL_EXPERT  = 300
const PERF_DETAIL_WIZARD  = 400

mutable struct PERF_COUNTER_DEFINITION
    ByteLength::Culong
    CounterNameTitleIndex::Culong
    CounterNameTitle::Culong
    CounterNameTitle::Ptr{Cwchar_t}
    CounterHelpTitleIndex::Culong
    CounterHelpTitle::Culong
    CounterHelpTitle::Ptr{Cwchar_t}
    DefaultScale::Culong
    DetailLevel::Culong
    CounterType::Culong
    CounterSize::Culong
    CounterOffset::Culong
end


mutable struct PERF_INSTANCE_DEFINITION
    ByteLength::Culong
    ParentObjectTitleIndex::Culong
    ParentObjectInstance::Culong
    UniqueID::Culong
    NameOffset::Culong
    NameLength::Culong
end


mutable struct PERF_COUNTER_BLOCK
    ByteLength::Culong
end

const SOCKET = UInt
const FD_SETSIZE  = 64
const IPPROTO_IP  = 0
const IPPROTO_ICMP  = 1
const IPPROTO_IGMP  = 2
const IPPROTO_GGP  = 3
const IPPROTO_TCP  = 6
const IPPROTO_PUP  = 12
const IPPROTO_UDP  = 17
const IPPROTO_IDP  = 22
const IPPROTO_ND  = 77
const IPPROTO_RAW  = 255
const IPPROTO_MAX  = 256
const IPPORT_ECHO  = 7
const IPPORT_DISCARD  = 9
const IPPORT_SYSTAT  = 11
const IPPORT_DAYTIME  = 13
const IPPORT_NETSTAT  = 15
const IPPORT_FTP  = 21
const IPPORT_TELNET  = 23
const IPPORT_SMTP  = 25
const IPPORT_TIMESERVER  = 37
const IPPORT_NAMESERVER  = 42
const IPPORT_WHOIS  = 43
const IPPORT_MTP  = 57
const IPPORT_TFTP  = 69
const IPPORT_RJE  = 77
const IPPORT_FINGER  = 79
const IPPORT_TTYLINK  = 87
const IPPORT_SUPDUP  = 95
const IPPORT_EXECSERVER  = 512
const IPPORT_LOGINSERVER  = 513
const IPPORT_CMDSERVER  = 514
const IPPORT_EFSSERVER  = 520
const IPPORT_BIFFUDP  = 512
const IPPORT_WHOSERVER  = 513
const IPPORT_ROUTESERVER  = 520
const IPPORT_RESERVED  = 1024
const IMPLINK_IP  = 155
const IMPLINK_LOWEXPER  = 156
const IMPLINK_HIGHEXPER  = 158
const IN_CLASSA_NSHIFT  = 24
const IN_CLASSA_MAX  = 128
const IN_CLASSB_NSHIFT  = 16
const IN_CLASSB_MAX  = 65536
const IN_CLASSC_NSHIFT  = 8
const WSADESCRIPTION_LEN  = 256
const WSASYS_STATUS_LEN  = 128
const IP_OPTIONS  = 1
const IP_MULTICAST_IF  = 2
const IP_MULTICAST_TTL  = 3
const IP_MULTICAST_LOOP  = 4
const IP_ADD_MEMBERSHIP  = 5
const IP_DROP_MEMBERSHIP  = 6
const IP_TTL  = 7
const IP_TOS  = 8
const IP_DONTFRAGMENT  = 9
const IP_DEFAULT_MULTICAST_TTL  = 1
const IP_DEFAULT_MULTICAST_LOOP  = 1
const IP_MAX_MEMBERSHIPS  = 20
const SOCK_STREAM  = 1
const SOCK_DGRAM  = 2
const SOCK_RAW  = 3
const SOCK_RDM  = 4
const SOCK_SEQPACKET  = 5
const AF_UNSPEC  = 0
const AF_UNIX  = 1
const AF_INET  = 2
const AF_IMPLINK  = 3
const AF_PUP  = 4
const AF_CHAOS  = 5
const AF_IPX  = 6
const AF_NS  = 6
const AF_ISO  = 7
const AF_ECMA  = 8
const AF_DATAKIT  = 9
const AF_CCITT  = 10
const AF_SNA  = 11
const AF_DLI  = 13
const AF_LAT  = 14
const AF_HYLINK  = 15
const AF_APPLETALK  = 16
const AF_NETBIOS  = 17
const AF_VOICEVIEW  = 18
const AF_FIREFOX  = 19
const AF_UNKNOWN1  = 20
const AF_BAN  = 21
const AF_MAX  = 22
const SOMAXCONN  = 5
const MSG_MAXIOVLEN  = 16
const MAXGETHOSTSTRUCT  = 1024
const WSABASEERR  = 10000

mutable struct TRANSMIT_FILE_BUFFERS
    Head::Ptr{Cvoid}
    HeadLength::Culong
    Tail::Ptr{Cvoid}
    TailLength::Culong
end

const ALG_SID_RSA_ANY  = 0
const ALG_SID_RSA_PKCS  = 1
const ALG_SID_RSA_MSATWORK  = 2
const ALG_SID_RSA_ENTRUST  = 3
const ALG_SID_RSA_PGP  = 4
const ALG_SID_DSS_ANY  = 0
const ALG_SID_DSS_PKCS  = 1
const ALG_SID_DSS_DMS  = 2
const ALG_SID_ECDSA  = 3
const ALG_SID_DES  = 1
const ALG_SID_3DES  = 3
const ALG_SID_DESX  = 4
const ALG_SID_IDEA  = 5
const ALG_SID_CAST  = 6
const ALG_SID_SAFERSK64  = 7
const ALG_SID_SAFERSK128  = 8
const ALG_SID_3DES_112  = 9
const ALG_SID_CYLINK_MEK  = 12
const ALG_SID_RC5  = 13
const ALG_SID_AES_128  = 14
const ALG_SID_AES_192  = 15
const ALG_SID_AES_256  = 16
const ALG_SID_AES  = 17
const ALG_SID_SKIPJACK  = 10
const ALG_SID_TEK  = 11
const CRYPT_MODE_CBCI  = 6
const CRYPT_MODE_CFBP  = 7
const CRYPT_MODE_OFBP  = 8
const CRYPT_MODE_CBCOFM  = 9
const CRYPT_MODE_CBCOFMI  = 10
const ALG_SID_RC2  = 2
const ALG_SID_RC4  = 1
const ALG_SID_SEAL  = 2
const ALG_SID_DH_SANDF  = 1
const ALG_SID_DH_EPHEM  = 2
const ALG_SID_AGREED_KEY_ANY  = 3
const ALG_SID_KEA  = 4
const ALG_SID_ECDH  = 5
const ALG_SID_ECDH_EPHEM  = 6
const ALG_SID_MD2  = 1
const ALG_SID_MD4  = 2
const ALG_SID_MD5  = 3
const ALG_SID_SHA  = 4
const ALG_SID_SHA1  = 4
const ALG_SID_MAC  = 5
const ALG_SID_RIPEMD  = 6
const ALG_SID_RIPEMD160  = 7
const ALG_SID_SSL3SHAMD5  = 8
const ALG_SID_HMAC  = 9
const ALG_SID_TLS1PRF  = 10
const ALG_SID_HASH_REPLACE_OWF  = 11
const ALG_SID_SHA_256  = 12
const ALG_SID_SHA_384  = 13
const ALG_SID_SHA_512  = 14
const ALG_SID_SSL3_MASTER  = 1
const ALG_SID_SCHANNEL_MASTER_HASH  = 2
const ALG_SID_SCHANNEL_MAC_KEY  = 3
const ALG_SID_PCT1_MASTER  = 4
const ALG_SID_SSL2_MASTER  = 5
const ALG_SID_TLS1_MASTER  = 6
const ALG_SID_SCHANNEL_ENC_KEY  = 7
const ALG_SID_ECMQV  = 1
const ALG_SID_EXAMPLE  = 80
const HCRYPTPROV = Int
const HCRYPTKEY = Int
const HCRYPTHASH = Int
const AT_KEYEXCHANGE  = 1
const AT_SIGNATURE  = 2
const CRYPT_USERDATA  = 1
const KP_IV  = 1
const KP_SALT  = 2
const KP_PADDING  = 3
const KP_MODE  = 4
const KP_MODE_BITS  = 5
const KP_PERMISSIONS  = 6
const KP_ALGID  = 7
const KP_BLOCKLEN  = 8
const KP_KEYLEN  = 9
const KP_SALT_EX  = 10
const KP_P  = 11
const KP_G  = 12
const KP_Q  = 13
const KP_X  = 14
const KP_Y  = 15
const KP_RA  = 16
const KP_RB  = 17
const KP_INFO  = 18
const KP_EFFECTIVE_KEYLEN  = 19
const KP_SCHANNEL_ALG  = 20
const KP_CLIENT_RANDOM  = 21
const KP_SERVER_RANDOM  = 22
const KP_RP  = 23
const KP_PRECOMP_MD5  = 24
const KP_PRECOMP_SHA  = 25
const KP_CERTIFICATE  = 26
const KP_CLEAR_KEY  = 27
const KP_PUB_EX_LEN  = 28
const KP_PUB_EX_VAL  = 29
const KP_KEYVAL  = 30
const KP_ADMIN_PIN  = 31
const KP_KEYEXCHANGE_PIN  = 32
const KP_SIGNATURE_PIN  = 33
const KP_PREHASH  = 34
const KP_ROUNDS  = 35
const KP_OAEP_PARAMS  = 36
const KP_CMS_KEY_INFO  = 37
const KP_CMS_DH_KEY_INFO  = 38
const KP_PUB_PARAMS  = 39
const KP_VERIFY_PARAMS  = 40
const KP_HIGHEST_VERSION  = 41
const KP_GET_USE_COUNT  = 42
const KP_PIN_ID  = 43
const KP_PIN_INFO  = 44
const PKCS5_PADDING  = 1
const RANDOM_PADDING  = 2
const ZERO_PADDING  = 3
const CRYPT_MODE_CBC  = 1
const CRYPT_MODE_ECB  = 2
const CRYPT_MODE_OFB  = 3
const CRYPT_MODE_CFB  = 4
const CRYPT_MODE_CTS  = 5
const PP_ENUMALGS  = 1
const PP_ENUMCONTAINERS  = 2
const PP_IMPTYPE  = 3
const PP_NAME  = 4
const PP_VERSION  = 5
const PP_CONTAINER  = 6
const PP_CHANGE_PASSWORD  = 7
const PP_KEYSET_SEC_DESCR  = 8
const PP_CERTCHAIN  = 9
const PP_KEY_TYPE_SUBTYPE  = 10
const PP_PROVTYPE  = 16
const PP_KEYSTORAGE  = 17
const PP_APPLI_CERT  = 18
const PP_SYM_KEYSIZE  = 19
const PP_SESSION_KEYSIZE  = 20
const PP_UI_PROMPT  = 21
const PP_ENUMALGS_EX  = 22
const PP_ENUMMANDROOTS  = 25
const PP_ENUMELECTROOTS  = 26
const PP_KEYSET_TYPE  = 27
const PP_ADMIN_PIN  = 31
const PP_KEYEXCHANGE_PIN  = 32
const PP_SIGNATURE_PIN  = 33
const PP_SIG_KEYSIZE_INC  = 34
const PP_KEYX_KEYSIZE_INC  = 35
const PP_UNIQUE_CONTAINER  = 36
const PP_SGC_INFO  = 37
const PP_USE_HARDWARE_RNG  = 38
const PP_KEYSPEC  = 39
const PP_ENUMEX_SIGNING_PROT  = 40
const PP_CRYPT_COUNT_KEY_USE  = 41
const PP_USER_CERTSTORE  = 42
const PP_SMARTCARD_READER  = 43
const PP_SMARTCARD_GUID  = 45
const PP_ROOT_CERTSTORE  = 46
const PP_SMARTCARD_READER_ICON  = 47
const CRYPT_FIRST  = 1
const CRYPT_NEXT  = 2
const CRYPT_SGC_ENUM  = 4
const CRYPT_IMPL_HARDWARE  = 1
const CRYPT_IMPL_SOFTWARE  = 2
const CRYPT_IMPL_MIXED  = 3
const CRYPT_IMPL_UNKNOWN  = 4
const CRYPT_IMPL_REMOVABLE  = 8
const PP_CLIENT_HWND  = 1
const PP_CONTEXT_INFO  = 11
const PP_KEYEXCHANGE_KEYSIZE  = 12
const PP_SIGNATURE_KEYSIZE  = 13
const PP_KEYEXCHANGE_ALG  = 14
const PP_SIGNATURE_ALG  = 15
const PP_DELETEKEY  = 24
const PP_PIN_PROMPT_STRING  = 44
const PP_SECURE_KEYEXCHANGE_PIN  = 47
const PP_SECURE_SIGNATURE_PIN  = 48
const PP_DISMISS_PIN_UI_SEC  = 49
const PROV_RSA_FULL  = 1
const PROV_RSA_SIG  = 2
const PROV_DSS  = 3
const PROV_FORTEZZA  = 4
const PROV_MS_EXCHANGE  = 5
const PROV_SSL  = 6
const PROV_RSA_SCHANNEL  = 12
const PROV_DSS_DH  = 13
const PROV_EC_ECDSA_SIG  = 14
const PROV_EC_ECNRA_SIG  = 15
const PROV_EC_ECDSA_FULL  = 16
const PROV_EC_ECNRA_FULL  = 17
const PROV_DH_SCHANNEL  = 18
const PROV_SPYRUS_LYNKS  = 20
const PROV_RNG  = 21
const PROV_INTEL_SEC  = 22
const PROV_REPLACE_OWF  = 23
const PROV_RSA_AES  = 24
const PROV_STT_MER  = 7
const PROV_STT_ACQ  = 8
const PROV_STT_BRND  = 9
const PROV_STT_ROOT  = 10
const PROV_STT_ISS  = 11
const MAXUIDLEN  = 64
const CUR_BLOB_VERSION  = 2

mutable struct RSAPUBKEY
    magic::Culong
    bitlen::Culong
    pubexp::Culong
end


mutable struct PUBKEY
    magic::Culong
    bitlen::Culong
end


mutable struct DSSSEED
    counter::Culong
    seed::SVector{20,Cuchar}
end


mutable struct PUBKEYVER3
    magic::Culong
    bitlenP::Culong
    bitlenQ::Culong
    bitlenJ::Culong
    DSSSeed::DSSSEED
end


mutable struct PRIVKEYVER3
    magic::Culong
    bitlenP::Culong
    bitlenQ::Culong
    bitlenJ::Culong
    bitlenX::Culong
    DSSSeed::DSSSEED
end


mutable struct CERT_FORTEZZA_DATA_PROP
    SerialNumber::SVector{8,Cuchar}
    CertIndex::Cint
    CertLabel::SVector{36,Cuchar}
end


mutable struct CRYPT_RC4_KEY_STATE
    Key::SVector{16,Cuchar}
    SBox::SVector{256,Cuchar}
    i::Cuchar
    j::Cuchar
end


mutable struct CRYPT_DES_KEY_STATE
    Key::SVector{8,Cuchar}
    IV::SVector{8,Cuchar}
    Feedback::SVector{8,Cuchar}
end


mutable struct CRYPT_3DES_KEY_STATE
    Key::SVector{24,Cuchar}
    IV::SVector{8,Cuchar}
    Feedback::SVector{8,Cuchar}
end

const BCRYPT_OBJECT_ALIGNMENT  = 16

mutable struct _BCRYPT_KEY_LENGTHS_STRUCT
    dwMinLength::Culong
    dwMaxLength::Culong
    dwIncrement::Culong
end


mutable struct BCRYPT_OID
    cbOID::Culong
    pbOID::Ptr{UInt8}
end


mutable struct BCRYPT_OID_LIST
    dwOIDCount::Culong
    pOIDs::Ptr{BCRYPT_OID}
end


mutable struct BCRYPT_PKCS1_PADDING_INFO
    pszAlgId::Ptr{Cwchar_t}
end


mutable struct BCRYPT_PSS_PADDING_INFO
    pszAlgId::Ptr{Cwchar_t}
    cbSalt::Culong
end


mutable struct BCRYPT_OAEP_PADDING_INFO
    pszAlgId::Ptr{Cwchar_t}
    pbLabel::Ptr{UInt8}
    cbLabel::Culong
end

const BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO_VERSION  = 1

mutable struct BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
    cbSize::Culong
    dwInfoVersion::Culong
    pbNonce::Ptr{UInt8}
    cbNonce::Culong
    pbAuthData::Ptr{UInt8}
    cbAuthData::Culong
    pbTag::Ptr{UInt8}
    cbTag::Culong
    pbMacContext::Ptr{UInt8}
    cbMacContext::Culong
    cbAAD::Culong
    cbData::UInt64
    dwFlags::Culong
end

const BCRYPTBUFFER_VERSION  = 0

mutable struct BCryptBuffer
    cbBuffer::Culong
    BufferType::Culong
    pvBuffer::Ptr{Cvoid}
end

const BCRYPT_HANDLE = Ptr{Cvoid}
const BCRYPT_ALG_HANDLE = Ptr{Cvoid}
const BCRYPT_KEY_HANDLE = Ptr{Cvoid}
const BCRYPT_HASH_HANDLE = Ptr{Cvoid}
const BCRYPT_SECRET_HANDLE = Ptr{Cvoid}

mutable struct BCRYPT_KEY_BLOB
    Magic::Culong
end


mutable struct BCRYPT_RSAKEY_BLOB
    Magic::Culong
    BitLength::Culong
    cbPublicExp::Culong
    cbModulus::Culong
    cbPrime1::Culong
    cbPrime2::Culong
end


mutable struct BCRYPT_ECCKEY_BLOB
    dwMagic::Culong
    cbKey::Culong
end


mutable struct SSL_ECCKEY_BLOB
    dwCurveType::Culong
    cbKey::Culong
end


mutable struct BCRYPT_DH_KEY_BLOB
    dwMagic::Culong
    cbKey::Culong
end


mutable struct BCRYPT_DSA_KEY_BLOB
    dwMagic::Culong
    cbKey::Culong
    Count::SVector{4,Cuchar}
    Seed::SVector{20,Cuchar}
    q::SVector{20,Cuchar}
end


mutable struct BCRYPT_KEY_DATA_BLOB_HEADER
    dwMagic::Culong
    dwVersion::Culong
    cbKeyData::Culong
end


mutable struct BCRYPT_DSA_PARAMETER_HEADER
    cbLength::Culong
    dwMagic::Culong
    cbKeyLength::Culong
    Count::SVector{4,Cuchar}
    Seed::SVector{20,Cuchar}
    q::SVector{20,Cuchar}
end


mutable struct BCRYPT_ECC_CURVE_NAMES
    dwEccCurveNames::Culong
    pEccCurveNames::Ptr{Ptr{Cwchar_t}}
end


mutable struct BCRYPT_MULTI_OBJECT_LENGTH_STRUCT
    cbPerObject::Culong
    cbPerElement::Culong
end


mutable struct BCRYPT_ALGORITHM_IDENTIFIER
    pszName::Ptr{Cwchar_t}
    dwClass::Culong
    dwFlags::Culong
end


mutable struct BCRYPT_PROVIDER_NAME
    pszProviderName::Ptr{Cwchar_t}
end


mutable struct BCRYPT_INTERFACE_VERSION
    MajorVersion::Cushort
    MinorVersion::Cushort
end

const BCRYPT_HASH_INTERFACE_MAJORVERSION_2  = 2
const SECURITY_STATUS = Culong
const NCRYPT_MAX_KEY_NAME_LENGTH  = 512
const NCRYPT_MAX_ALG_ID_LENGTH  = 512
const NCRYPTBUFFER_VERSION  = 0
const NCRYPTBUFFER_EMPTY  = 0
const NCRYPTBUFFER_DATA  = 1
const NCRYPTBUFFER_PROTECTION_DESCRIPTOR_STRING  = 3
const NCRYPTBUFFER_PROTECTION_FLAGS  = 4
const NCRYPTBUFFER_SSL_CLIENT_RANDOM  = 20
const NCRYPTBUFFER_SSL_SERVER_RANDOM  = 21
const NCRYPTBUFFER_SSL_HIGHEST_VERSION  = 22
const NCRYPTBUFFER_SSL_CLEAR_KEY  = 23
const NCRYPTBUFFER_SSL_KEY_ARG_DATA  = 24
const NCRYPTBUFFER_SSL_SESSION_HASH  = 25
const NCRYPTBUFFER_PKCS_OID  = 40
const NCRYPTBUFFER_PKCS_ALG_OID  = 41
const NCRYPTBUFFER_PKCS_ALG_PARAM  = 42
const NCRYPTBUFFER_PKCS_ALG_ID  = 43
const NCRYPTBUFFER_PKCS_ATTRS  = 44
const NCRYPTBUFFER_PKCS_KEY_NAME  = 45
const NCRYPTBUFFER_PKCS_SECRET  = 46
const NCRYPTBUFFER_CERT_BLOB  = 47
const NCRYPTBUFFER_CLAIM_IDBINDING_NONCE  = 48
const NCRYPTBUFFER_CLAIM_KEYATTESTATION_NONCE  = 49
const NCRYPTBUFFER_KEY_PROPERTY_FLAGS  = 50
const NCRYPTBUFFER_ATTESTATIONSTATEMENT_BLOB  = 51
const NCRYPTBUFFER_ATTESTATION_CLAIM_TYPE  = 52
const NCRYPTBUFFER_ATTESTATION_CLAIM_CHALLENGE_REQUIRED  = 53
const NCRYPTBUFFER_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS  = 54
const NCRYPTBUFFER_ECC_CURVE_NAME  = 60
const NCRYPTBUFFER_ECC_PARAMETERS  = 61
const NCRYPTBUFFER_TPM_SEAL_PASSWORD  = 70
const NCRYPTBUFFER_TPM_SEAL_POLICYINFO  = 71
const NCRYPTBUFFER_TPM_SEAL_TICKET  = 72
const NCRYPTBUFFER_TPM_SEAL_NO_DA_PROTECTION  = 73
const NCRYPTBUFFER_TPM_PLATFORM_CLAIM_PCR_MASK  = 80
const NCRYPTBUFFER_TPM_PLATFORM_CLAIM_NONCE  = 81
const NCRYPTBUFFER_TPM_PLATFORM_CLAIM_STATIC_CREATE  = 82
const NCryptBuffer = BCryptBuffer
const NCRYPT_HANDLE = Int
const NCRYPT_PROV_HANDLE = Int
const NCRYPT_KEY_HANDLE = Int
const NCRYPT_HASH_HANDLE = Int
const NCRYPT_SECRET_HANDLE = Int

mutable struct NCRYPT_PLATFORM_ATTEST_PADDING_INFO
    magic::Culong
    pcrMask::Culong
end


mutable struct NCRYPT_KEY_ATTEST_PADDING_INFO
    magic::Culong
    pbKeyBlob::Ptr{UInt8}
    cbKeyBlob::Culong
    pbKeyAuth::Ptr{UInt8}
    cbKeyAuth::Culong
end

const NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES_V0  = 0

mutable struct NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES
    Version::Culong
    Flags::Culong
    cbPublicKeyBlob::Culong
end

const NCRYPT_VSM_KEY_ATTESTATION_STATEMENT_V0  = 0

mutable struct NCRYPT_VSM_KEY_ATTESTATION_STATEMENT
    Magic::Culong
    Version::Culong
    cbSignature::Culong
    cbReport::Culong
    cbAttributes::Culong
end

const NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS_V0  = 0
const NCRYPT_EXPORTED_ISOLATED_KEY_HEADER_V0  = 0

mutable struct _NCRYPT_PCP_TPM_WEB_AUTHN_ATTESTATION_STATEMENT
    Magic::UInt32
    Version::UInt32
    HeaderSize::UInt32
    cbCertifyInfo::UInt32
    cbSignature::UInt32
    cbTpmPublic::UInt32
end

const NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT_V0  = 0

mutable struct NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT
    Magic::Culong
    Version::Culong
    pcrAlg::Culong
    cbSignature::Culong
    cbQuote::Culong
    cbPcrs::Culong
end


mutable struct NCryptAlgorithmName
    pszName::Ptr{Cwchar_t}
    dwClass::Culong
    dwAlgOperations::Culong
    dwFlags::Culong
end

const IFX_RSA_KEYGEN_VUL_NOT_AFFECTED  = 0
const IFX_RSA_KEYGEN_VUL_AFFECTED_LEVEL_1  = 1
const IFX_RSA_KEYGEN_VUL_AFFECTED_LEVEL_2  = 2
const NCRYPT_MAX_PROPERTY_NAME  = 64
const NCRYPT_PIN_CACHE_PIN_BYTE_LENGTH  = 90
const NCRYPT_PIN_CACHE_APPLICATION_TICKET_BYTE_LENGTH  = 90

mutable struct _NCRYPT_UI_POLICY
    dwVersion::Culong
    dwFlags::Culong
    pszCreationTitle::Ptr{Cwchar_t}
    pszFriendlyName::Ptr{Cwchar_t}
    pszDescription::Ptr{Cwchar_t}
end

const NCRYPT_KEY_ACCESS_POLICY_VERSION  = 1

mutable struct _NCRYPT_KEY_ACCESS_POLICY_BLOB
    dwVersion::Culong
    dwPolicyFlags::Culong
    cbUserSid::Culong
    cbApplicationSid::Culong
end


mutable struct _NCRYPT_SUPPORTED_LENGTHS
    dwMinLength::Culong
    dwMaxLength::Culong
    dwIncrement::Culong
    dwDefaultLength::Culong
end


mutable struct _NCRYPT_PCP_HMAC_AUTH_SIGNATURE_INFO
    dwVersion::Culong
    iExpiration::Int32
    pabNonce::SVector{32,Cuchar}
    pabPolicyRef::SVector{32,Cuchar}
    pabHMAC::SVector{32,Cuchar}
end


mutable struct _NCRYPT_PCP_RAW_POLICYDIGEST
    dwVersion::Culong
    cbDigest::Culong
end


mutable struct NCRYPT_KEY_BLOB_HEADER
    cbSize::Culong
    dwMagic::Culong
    cbAlgName::Culong
    cbKeyData::Culong
end

const HCRYPTPROV_OR_NCRYPT_KEY_HANDLE = Int
const HCRYPTPROV_LEGACY = Int

mutable struct CRYPT_BIT_BLOB
    cbData::Culong
    pbData::Ptr{Cuchar}
    cUnusedBits::Culong
end


mutable struct CRYPT_OBJID_TABLE
    dwAlgId::Culong
    pszObjId::Ptr{Cchar}
end

const CERT_RDN_ANY_TYPE  = 0
const CERT_RDN_ENCODED_BLOB  = 1
const CERT_RDN_OCTET_STRING  = 2
const CERT_RDN_NUMERIC_STRING  = 3
const CERT_RDN_PRINTABLE_STRING  = 4
const CERT_RDN_TELETEX_STRING  = 5
const CERT_RDN_T61_STRING  = 5
const CERT_RDN_VIDEOTEX_STRING  = 6
const CERT_RDN_IA5_STRING  = 7
const CERT_RDN_GRAPHIC_STRING  = 8
const CERT_RDN_VISIBLE_STRING  = 9
const CERT_RDN_ISO646_STRING  = 9
const CERT_RDN_GENERAL_STRING  = 10
const CERT_RDN_UNIVERSAL_STRING  = 11
const CERT_RDN_INT4_STRING  = 11
const CERT_RDN_BMP_STRING  = 12
const CERT_RDN_UNICODE_STRING  = 12
const CERT_RDN_UTF8_STRING  = 13
const CERT_V1  = 0
const CERT_V2  = 1
const CERT_V3  = 2
const CERT_INFO_VERSION_FLAG  = 1
const CERT_INFO_SERIAL_NUMBER_FLAG  = 2
const CERT_INFO_SIGNATURE_ALGORITHM_FLAG  = 3
const CERT_INFO_ISSUER_FLAG  = 4
const CERT_INFO_NOT_BEFORE_FLAG  = 5
const CERT_INFO_NOT_AFTER_FLAG  = 6
const CERT_INFO_SUBJECT_FLAG  = 7
const CERT_INFO_SUBJECT_PUBLIC_KEY_INFO_FLAG  = 8
const CERT_INFO_ISSUER_UNIQUE_ID_FLAG  = 9
const CERT_INFO_SUBJECT_UNIQUE_ID_FLAG  = 10
const CERT_INFO_EXTENSION_FLAG  = 11
const CRL_V1  = 0
const CRL_V2  = 1
const CERT_BUNDLE_CERTIFICATE  = 0
const CERT_BUNDLE_CRL  = 1
const CERT_REQUEST_V1  = 0
const CERT_KEYGEN_REQUEST_V1  = 0
const CTL_V1  = 0

mutable struct CRYPT_ENROLLMENT_NAME_VALUE_PAIR
    pwszName::Ptr{Cwchar_t}
    pwszValue::Ptr{Cwchar_t}
end


mutable struct CRYPT_CSP_PROVIDER
    dwKeySpec::Culong
    pwszProviderName::Ptr{Cwchar_t}
    Signature::CRYPT_BIT_BLOB
end

const CRYPT_ENCODE_DECODE_NONE  = 0
const CERT_UNICODE_RDN_ERR_INDEX_SHIFT  = 22
const CERT_UNICODE_ATTR_ERR_INDEX_SHIFT  = 16
const CERT_UNICODE_VALUE_ERR_INDEX_SHIFT  = 0

mutable struct CERT_PRIVATE_KEY_VALIDITY
    NotBefore::FILETIME
    NotAfter::FILETIME
end


mutable struct CERT_POLICY_ID
    cCertPolicyElementId::Culong
    rgpszCertPolicyElementId::Ptr{Ptr{Cchar}}
end

const CERT_ALT_NAME_OTHER_NAME  = 1
const CERT_ALT_NAME_RFC822_NAME  = 2
const CERT_ALT_NAME_DNS_NAME  = 3
const CERT_ALT_NAME_X400_ADDRESS  = 4
const CERT_ALT_NAME_DIRECTORY_NAME  = 5
const CERT_ALT_NAME_EDI_PARTY_NAME  = 6
const CERT_ALT_NAME_URL  = 7
const CERT_ALT_NAME_IP_ADDRESS  = 8
const CERT_ALT_NAME_REGISTERED_ID  = 9
const CERT_ALT_NAME_ENTRY_ERR_INDEX_SHIFT  = 16
const CERT_ALT_NAME_VALUE_ERR_INDEX_SHIFT  = 0

mutable struct CERT_BASIC_CONSTRAINTS2_INFO
    fCA::Cint
    fPathLenConstraint::Cint
    dwPathLenConstraint::Culong
end


mutable struct CERT_POLICY_QUALIFIER_NOTICE_REFERENCE
    pszOrganization::Ptr{Cchar}
    cNoticeNumbers::Culong
    rgNoticeNumbers::Ptr{Cint}
end


mutable struct CERT_POLICY_QUALIFIER_USER_NOTICE
    pNoticeReference::Ptr{CERT_POLICY_QUALIFIER_NOTICE_REFERENCE}
    pszDisplayText::Ptr{Cwchar_t}
end


mutable struct CERT_POLICY_MAPPING
    pszIssuerDomainPolicy::Ptr{Cchar}
    pszSubjectDomainPolicy::Ptr{Cchar}
end


mutable struct CERT_POLICY_CONSTRAINTS_INFO
    fRequireExplicitPolicy::Cint
    dwRequireExplicitPolicySkipCerts::Culong
    fInhibitPolicyMapping::Cint
    dwInhibitPolicyMappingSkipCerts::Culong
end

const CRL_REASON_UNSPECIFIED  = 0
const CRL_REASON_KEY_COMPROMISE  = 1
const CRL_REASON_CA_COMPROMISE  = 2
const CRL_REASON_AFFILIATION_CHANGED  = 3
const CRL_REASON_SUPERSEDED  = 4
const CRL_REASON_CESSATION_OF_OPERATION  = 5
const CRL_REASON_CERTIFICATE_HOLD  = 6
const CRL_REASON_REMOVE_FROM_CRL  = 8
const CRL_REASON_PRIVILEGE_WITHDRAWN  = 9
const CRL_REASON_AA_COMPROMISE  = 10
const CRL_DIST_POINT_NO_NAME  = 0
const CRL_DIST_POINT_FULL_NAME  = 1
const CRL_DIST_POINT_ISSUER_RDN_NAME  = 2
const CRL_DIST_POINT_ERR_INDEX_SHIFT  = 24
const CROSS_CERT_DIST_POINT_ERR_INDEX_SHIFT  = 24
const CERT_DSS_R_LEN  = 20
const CERT_DSS_S_LEN  = 20

mutable struct CERT_X942_DH_VALIDATION_PARAMS
    seed::CRYPT_BIT_BLOB
    pgenCounter::Culong
end

const CRYPT_X942_COUNTER_BYTE_LENGTH  = 4
const CRYPT_X942_KEY_LENGTH_BYTE_LENGTH  = 4
const CRYPT_ECC_CMS_SHARED_INFO_SUPPPUBINFO_BYTE_LENGTH  = 4

mutable struct CRYPT_RC2_CBC_PARAMETERS
    dwVersion::Culong
    fIV::Cint
    rgbIV::SVector{8,Cuchar}
end

const CRYPT_RC2_40BIT_VERSION  = 160
const CRYPT_RC2_56BIT_VERSION  = 52
const CRYPT_RC2_64BIT_VERSION  = 120
const CRYPT_RC2_128BIT_VERSION  = 58
const PKCS_RSA_SSA_PSS_TRAILER_FIELD_BC  = 1
const CMC_TAGGED_CERT_REQUEST_CHOICE  = 1
const CMC_OTHER_INFO_NO_CHOICE  = 0
const CMC_OTHER_INFO_FAIL_CHOICE  = 1
const CMC_OTHER_INFO_PEND_CHOICE  = 2
const CMC_STATUS_SUCCESS  = 0
const CMC_STATUS_FAILED  = 2
const CMC_STATUS_PENDING  = 3
const CMC_STATUS_NO_SUPPORT  = 4
const CMC_STATUS_CONFIRM_REQUIRED  = 5
const CMC_FAIL_BAD_ALG  = 0
const CMC_FAIL_BAD_MESSAGE_CHECK  = 1
const CMC_FAIL_BAD_REQUEST  = 2
const CMC_FAIL_BAD_TIME  = 3
const CMC_FAIL_BAD_CERT_ID  = 4
const CMC_FAIL_UNSUPORTED_EXT  = 5
const CMC_FAIL_MUST_ARCHIVE_KEYS  = 6
const CMC_FAIL_BAD_IDENTITY  = 7
const CMC_FAIL_POP_REQUIRED  = 8
const CMC_FAIL_POP_FAILED  = 9
const CMC_FAIL_NO_KEY_REUSE  = 10
const CMC_FAIL_INTERNAL_CA_ERROR  = 11
const CMC_FAIL_TRY_LATER  = 12

mutable struct CERT_TEMPLATE_EXT
    pszObjId::Ptr{Cchar}
    dwMajorVersion::Culong
    fMinorVersion::Cint
    dwMinorVersion::Culong
end

const CERT_LOGOTYPE_GRAY_SCALE_IMAGE_INFO_CHOICE  = 1
const CERT_LOGOTYPE_COLOR_IMAGE_INFO_CHOICE  = 2
const CERT_LOGOTYPE_NO_IMAGE_RESOLUTION_CHOICE  = 0
const CERT_LOGOTYPE_BITS_IMAGE_RESOLUTION_CHOICE  = 1
const CERT_LOGOTYPE_TABLE_SIZE_IMAGE_RESOLUTION_CHOICE  = 2

mutable struct CERT_LOGOTYPE_AUDIO_INFO
    dwFileSize::Culong
    dwPlayTime::Culong
    dwChannels::Culong
    dwSampleRate::Culong
    pwszLanguage::Ptr{Cwchar_t}
end

const CERT_LOGOTYPE_DIRECT_INFO_CHOICE  = 1
const CERT_LOGOTYPE_INDIRECT_INFO_CHOICE  = 2
const CERT_BIOMETRIC_PREDEFINED_DATA_CHOICE  = 1
const CERT_BIOMETRIC_OID_DATA_CHOICE  = 2
const CERT_BIOMETRIC_PICTURE_TYPE  = 0
const CERT_BIOMETRIC_SIGNATURE_TYPE  = 1
const OCSP_REQUEST_V1  = 0
const OCSP_SUCCESSFUL_RESPONSE  = 0
const OCSP_MALFORMED_REQUEST_RESPONSE  = 1
const OCSP_INTERNAL_ERROR_RESPONSE  = 2
const OCSP_TRY_LATER_RESPONSE  = 3
const OCSP_SIG_REQUIRED_RESPONSE  = 5
const OCSP_UNAUTHORIZED_RESPONSE  = 6

mutable struct OCSP_BASIC_REVOKED_INFO
    RevocationDate::FILETIME
    dwCrlReasonCode::Culong
end

const OCSP_BASIC_GOOD_CERT_STATUS  = 0
const OCSP_BASIC_REVOKED_CERT_STATUS  = 1
const OCSP_BASIC_UNKNOWN_CERT_STATUS  = 2
const OCSP_BASIC_RESPONSE_V1  = 0
const OCSP_BASIC_BY_NAME_RESPONDER_ID  = 1
const OCSP_BASIC_BY_KEY_RESPONDER_ID  = 2

mutable struct CERT_TPM_SPECIFICATION_INFO
    pwszFamily::Ptr{Cwchar_t}
    dwLevel::Culong
    dwRevision::Culong
end

const CRYPT_INSTALL_OID_FUNC_BEFORE_FLAG  = 1
const CRYPT_REGISTER_FIRST_INDEX  = 0
const CRYPT_HASH_ALG_OID_GROUP_ID  = 1
const CRYPT_ENCRYPT_ALG_OID_GROUP_ID  = 2
const CRYPT_PUBKEY_ALG_OID_GROUP_ID  = 3
const CRYPT_SIGN_ALG_OID_GROUP_ID  = 4
const CRYPT_RDN_ATTR_OID_GROUP_ID  = 5
const CRYPT_EXT_OR_ATTR_OID_GROUP_ID  = 6
const CRYPT_ENHKEY_USAGE_OID_GROUP_ID  = 7
const CRYPT_POLICY_OID_GROUP_ID  = 8
const CRYPT_TEMPLATE_OID_GROUP_ID  = 9
const CRYPT_KDF_OID_GROUP_ID  = 10
const CRYPT_LAST_OID_GROUP_ID  = 10
const CRYPT_OID_INFO_OID_KEY  = 1
const CRYPT_OID_INFO_NAME_KEY  = 2
const CRYPT_OID_INFO_ALGID_KEY  = 3
const CRYPT_OID_INFO_SIGN_KEY  = 4
const CRYPT_OID_INFO_CNG_ALGID_KEY  = 5
const CRYPT_OID_INFO_CNG_SIGN_KEY  = 6
const CRYPT_OID_INFO_OID_GROUP_BIT_LEN_SHIFT  = 16
const CRYPT_INSTALL_OID_INFO_BEFORE_FLAG  = 1
const CRYPT_LOCALIZED_NAME_ENCODING_TYPE  = 0

mutable struct CERT_STRONG_SIGN_SERIALIZED_INFO
    dwFlags::Culong
    pwszCNGSignHashAlgids::Ptr{Cwchar_t}
    pwszCNGPubKeyMinBitLengths::Ptr{Cwchar_t}
end

const CERT_STRONG_SIGN_SERIALIZED_INFO_CHOICE  = 1
const CERT_STRONG_SIGN_OID_INFO_CHOICE  = 2
const CMSG_DATA  = 1
const CMSG_SIGNED  = 2
const CMSG_ENVELOPED  = 3
const CMSG_SIGNED_AND_ENVELOPED  = 4
const CMSG_HASHED  = 5
const CMSG_ENCRYPTED  = 6
const CERT_ID_ISSUER_SERIAL_NUMBER  = 1
const CERT_ID_KEY_IDENTIFIER  = 2
const CERT_ID_SHA1_HASH  = 3
const CMSG_KEY_AGREE_EPHEMERAL_KEY_CHOICE  = 1
const CMSG_KEY_AGREE_STATIC_KEY_CHOICE  = 2
const CMSG_MAIL_LIST_HANDLE_KEY_CHOICE  = 1
const CMSG_KEY_TRANS_RECIPIENT  = 1
const CMSG_KEY_AGREE_RECIPIENT  = 2
const CMSG_MAIL_LIST_RECIPIENT  = 3

mutable struct CMSG_RC2_AUX_INFO
    cbSize::Culong
    dwBitLen::Culong
end


mutable struct CMSG_SP3_COMPATIBLE_AUX_INFO
    cbSize::Culong
    dwFlags::Culong
end


mutable struct CMSG_RC4_AUX_INFO
    cbSize::Culong
    dwBitLen::Culong
end

const CMSG_TYPE_PARAM  = 1
const CMSG_CONTENT_PARAM  = 2
const CMSG_BARE_CONTENT_PARAM  = 3
const CMSG_INNER_CONTENT_TYPE_PARAM  = 4
const CMSG_SIGNER_COUNT_PARAM  = 5
const CMSG_SIGNER_INFO_PARAM  = 6
const CMSG_SIGNER_CERT_INFO_PARAM  = 7
const CMSG_SIGNER_HASH_ALGORITHM_PARAM  = 8
const CMSG_SIGNER_AUTH_ATTR_PARAM  = 9
const CMSG_SIGNER_UNAUTH_ATTR_PARAM  = 10
const CMSG_CERT_COUNT_PARAM  = 11
const CMSG_CERT_PARAM  = 12
const CMSG_CRL_COUNT_PARAM  = 13
const CMSG_CRL_PARAM  = 14
const CMSG_ENVELOPE_ALGORITHM_PARAM  = 15
const CMSG_RECIPIENT_COUNT_PARAM  = 17
const CMSG_RECIPIENT_INDEX_PARAM  = 18
const CMSG_RECIPIENT_INFO_PARAM  = 19
const CMSG_HASH_ALGORITHM_PARAM  = 20
const CMSG_HASH_DATA_PARAM  = 21
const CMSG_COMPUTED_HASH_PARAM  = 22
const CMSG_ENCRYPT_PARAM  = 26
const CMSG_ENCRYPTED_DIGEST  = 27
const CMSG_ENCODED_SIGNER  = 28
const CMSG_ENCODED_MESSAGE  = 29
const CMSG_VERSION_PARAM  = 30
const CMSG_ATTR_CERT_COUNT_PARAM  = 31
const CMSG_ATTR_CERT_PARAM  = 32
const CMSG_CMS_RECIPIENT_COUNT_PARAM  = 33
const CMSG_CMS_RECIPIENT_INDEX_PARAM  = 34
const CMSG_CMS_RECIPIENT_ENCRYPTED_KEY_INDEX_PARAM  = 35
const CMSG_CMS_RECIPIENT_INFO_PARAM  = 36
const CMSG_UNPROTECTED_ATTR_PARAM  = 37
const CMSG_SIGNER_CERT_ID_PARAM  = 38
const CMSG_CMS_SIGNER_INFO_PARAM  = 39
const CMSG_SIGNED_DATA_V1  = 1
const CMSG_SIGNED_DATA_V3  = 3
const CMSG_SIGNER_INFO_V1  = 1
const CMSG_SIGNER_INFO_V3  = 3
const CMSG_HASHED_DATA_V0  = 0
const CMSG_HASHED_DATA_V2  = 2
const CMSG_ENVELOPED_DATA_V0  = 0
const CMSG_ENVELOPED_DATA_V2  = 2
const CMSG_KEY_AGREE_ORIGINATOR_CERT  = 1
const CMSG_KEY_AGREE_ORIGINATOR_PUBLIC_KEY  = 2
const CMSG_ENVELOPED_RECIPIENT_V0  = 0
const CMSG_ENVELOPED_RECIPIENT_V2  = 2
const CMSG_ENVELOPED_RECIPIENT_V3  = 3
const CMSG_ENVELOPED_RECIPIENT_V4  = 4
const CMSG_CTRL_VERIFY_SIGNATURE  = 1
const CMSG_CTRL_DECRYPT  = 2
const CMSG_CTRL_VERIFY_HASH  = 5
const CMSG_CTRL_ADD_SIGNER  = 6
const CMSG_CTRL_DEL_SIGNER  = 7
const CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR  = 8
const CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR  = 9
const CMSG_CTRL_ADD_CERT  = 10
const CMSG_CTRL_DEL_CERT  = 11
const CMSG_CTRL_ADD_CRL  = 12
const CMSG_CTRL_DEL_CRL  = 13
const CMSG_CTRL_ADD_ATTR_CERT  = 14
const CMSG_CTRL_DEL_ATTR_CERT  = 15
const CMSG_CTRL_KEY_TRANS_DECRYPT  = 16
const CMSG_CTRL_KEY_AGREE_DECRYPT  = 17
const CMSG_CTRL_MAIL_LIST_DECRYPT  = 18
const CMSG_CTRL_VERIFY_SIGNATURE_EX  = 19
const CMSG_CTRL_ADD_CMS_SIGNER_INFO  = 20
const CMSG_CTRL_ENABLE_STRONG_SIGNATURE  = 21
const CMSG_VERIFY_SIGNER_PUBKEY  = 1
const CMSG_VERIFY_SIGNER_CERT  = 2
const CMSG_VERIFY_SIGNER_CHAIN  = 3
const CMSG_VERIFY_SIGNER_NULL  = 4

mutable struct CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA
    cbSize::Culong
    dwSignerIndex::Culong
    dwUnauthAttrIndex::Culong
end

const CERT_KEY_PROV_HANDLE_PROP_ID  = 1
const CERT_KEY_PROV_INFO_PROP_ID  = 2
const CERT_SHA1_HASH_PROP_ID  = 3
const CERT_MD5_HASH_PROP_ID  = 4
const CERT_KEY_CONTEXT_PROP_ID  = 5
const CERT_KEY_SPEC_PROP_ID  = 6
const CERT_IE30_RESERVED_PROP_ID  = 7
const CERT_PUBKEY_HASH_RESERVED_PROP_ID  = 8
const CERT_ENHKEY_USAGE_PROP_ID  = 9
const CERT_NEXT_UPDATE_LOCATION_PROP_ID  = 10
const CERT_FRIENDLY_NAME_PROP_ID  = 11
const CERT_PVK_FILE_PROP_ID  = 12
const CERT_DESCRIPTION_PROP_ID  = 13
const CERT_ACCESS_STATE_PROP_ID  = 14
const CERT_SIGNATURE_HASH_PROP_ID  = 15
const CERT_SMART_CARD_DATA_PROP_ID  = 16
const CERT_EFS_PROP_ID  = 17
const CERT_FORTEZZA_DATA_PROP_ID  = 18
const CERT_ARCHIVED_PROP_ID  = 19
const CERT_KEY_IDENTIFIER_PROP_ID  = 20
const CERT_AUTO_ENROLL_PROP_ID  = 21
const CERT_PUBKEY_ALG_PARA_PROP_ID  = 22
const CERT_CROSS_CERT_DIST_POINTS_PROP_ID  = 23
const CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID  = 24
const CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID  = 25
const CERT_ENROLLMENT_PROP_ID  = 26
const CERT_DATE_STAMP_PROP_ID  = 27
const CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID  = 28
const CERT_SUBJECT_NAME_MD5_HASH_PROP_ID  = 29
const CERT_EXTENDED_ERROR_INFO_PROP_ID  = 30
const CERT_RENEWAL_PROP_ID  = 64
const CERT_ARCHIVED_KEY_HASH_PROP_ID  = 65
const CERT_AUTO_ENROLL_RETRY_PROP_ID  = 66
const CERT_AIA_URL_RETRIEVED_PROP_ID  = 67
const CERT_AUTHORITY_INFO_ACCESS_PROP_ID  = 68
const CERT_BACKED_UP_PROP_ID  = 69
const CERT_OCSP_RESPONSE_PROP_ID  = 70
const CERT_REQUEST_ORIGINATOR_PROP_ID  = 71
const CERT_SOURCE_LOCATION_PROP_ID  = 72
const CERT_SOURCE_URL_PROP_ID  = 73
const CERT_NEW_KEY_PROP_ID  = 74
const CERT_OCSP_CACHE_PREFIX_PROP_ID  = 75
const CERT_SMART_CARD_ROOT_INFO_PROP_ID  = 76
const CERT_NO_AUTO_EXPIRE_CHECK_PROP_ID  = 77
const CERT_NCRYPT_KEY_HANDLE_PROP_ID  = 78
const CERT_HCRYPTPROV_OR_NCRYPT_KEY_HANDLE_PROP_ID  = 79
const CERT_SUBJECT_INFO_ACCESS_PROP_ID  = 80
const CERT_CA_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID  = 81
const CERT_CA_DISABLE_CRL_PROP_ID  = 82
const CERT_ROOT_PROGRAM_CERT_POLICIES_PROP_ID  = 83
const CERT_ROOT_PROGRAM_NAME_CONSTRAINTS_PROP_ID  = 84
const CERT_SUBJECT_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID  = 85
const CERT_SUBJECT_DISABLE_CRL_PROP_ID  = 86
const CERT_CEP_PROP_ID  = 87
const CERT_SIGN_HASH_CNG_ALG_PROP_ID  = 89
const CERT_SCARD_PIN_ID_PROP_ID  = 90
const CERT_SCARD_PIN_INFO_PROP_ID  = 91
const CERT_SUBJECT_PUB_KEY_BIT_LENGTH_PROP_ID  = 92
const CERT_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID  = 93
const CERT_ISSUER_PUB_KEY_BIT_LENGTH_PROP_ID  = 94
const CERT_ISSUER_CHAIN_SIGN_HASH_CNG_ALG_PROP_ID  = 95
const CERT_ISSUER_CHAIN_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID  = 96
const CERT_NO_EXPIRE_NOTIFICATION_PROP_ID  = 97
const CERT_AUTH_ROOT_SHA256_HASH_PROP_ID  = 98
const CERT_NCRYPT_KEY_HANDLE_TRANSFER_PROP_ID  = 99
const CERT_HCRYPTPROV_TRANSFER_PROP_ID  = 100
const CERT_SMART_CARD_READER_PROP_ID  = 101
const CERT_SEND_AS_TRUSTED_ISSUER_PROP_ID  = 102
const CERT_KEY_REPAIR_ATTEMPTED_PROP_ID  = 103
const CERT_DISALLOWED_FILETIME_PROP_ID  = 104
const CERT_ROOT_PROGRAM_CHAIN_POLICIES_PROP_ID  = 105
const CERT_SMART_CARD_READER_NON_REMOVABLE_PROP_ID  = 106
const CERT_SHA256_HASH_PROP_ID  = 107
const CERT_SCEP_SERVER_CERTS_PROP_ID  = 108
const CERT_SCEP_RA_SIGNATURE_CERT_PROP_ID  = 109
const CERT_SCEP_RA_ENCRYPTION_CERT_PROP_ID  = 110
const CERT_SCEP_CA_CERT_PROP_ID  = 111
const CERT_SCEP_SIGNER_CERT_PROP_ID  = 112
const CERT_SCEP_NONCE_PROP_ID  = 113
const CERT_SCEP_ENCRYPT_HASH_CNG_ALG_PROP_ID  = 114
const CERT_SCEP_FLAGS_PROP_ID  = 115
const CERT_SCEP_GUID_PROP_ID  = 116
const CERT_SERIALIZABLE_KEY_CONTEXT_PROP_ID  = 117
const CERT_ISOLATED_KEY_PROP_ID  = 118
const CERT_SERIAL_CHAIN_PROP_ID  = 119
const CERT_KEY_CLASSIFICATION_PROP_ID  = 120
const CERT_OCSP_MUST_STAPLE_PROP_ID  = 121
const CERT_DISALLOWED_ENHKEY_USAGE_PROP_ID  = 122
const CERT_NONCOMPLIANT_ROOT_URL_PROP_ID  = 123
const CERT_PIN_SHA256_HASH_PROP_ID  = 124
const CERT_CLR_DELETE_KEY_PROP_ID  = 125
const CERT_NOT_BEFORE_FILETIME_PROP_ID  = 126
const CERT_NOT_BEFORE_ENHKEY_USAGE_PROP_ID  = 127
const CERT_FIRST_RESERVED_PROP_ID  = 128

mutable struct CRYPT_KEY_PROV_PARAM
    dwParam::Culong
    pbData::Ptr{Cuchar}
    cbData::Culong
    dwFlags::Culong
end


mutable struct ROOT_INFO_LUID
    LowPart::Culong
    HighPart::Culong
end


mutable struct CRYPT_SMART_CARD_ROOT_INFO
    rgbCardID::SVector{16,Cuchar}
    luid::ROOT_INFO_LUID
end

const CERT_SYSTEM_STORE_LOCATION_SHIFT  = 16
const CERT_SYSTEM_STORE_CURRENT_USER_ID  = 1
const CERT_SYSTEM_STORE_LOCAL_MACHINE_ID  = 2
const CERT_SYSTEM_STORE_CURRENT_SERVICE_ID  = 4
const CERT_SYSTEM_STORE_SERVICES_ID  = 5
const CERT_SYSTEM_STORE_USERS_ID  = 6
const CERT_SYSTEM_STORE_CURRENT_USER_GROUP_POLICY_ID  = 7
const CERT_SYSTEM_STORE_LOCAL_MACHINE_GROUP_POLICY_ID  = 8
const CERT_SYSTEM_STORE_LOCAL_MACHINE_ENTERPRISE_ID  = 9
const CERT_SYSTEM_STORE_LOCAL_MACHINE_WCOS_ID  = 10
const CERT_STORE_PROV_CLOSE_FUNC  = 0
const CERT_STORE_PROV_READ_CERT_FUNC  = 1
const CERT_STORE_PROV_WRITE_CERT_FUNC  = 2
const CERT_STORE_PROV_DELETE_CERT_FUNC  = 3
const CERT_STORE_PROV_SET_CERT_PROPERTY_FUNC  = 4
const CERT_STORE_PROV_READ_CRL_FUNC  = 5
const CERT_STORE_PROV_WRITE_CRL_FUNC  = 6
const CERT_STORE_PROV_DELETE_CRL_FUNC  = 7
const CERT_STORE_PROV_SET_CRL_PROPERTY_FUNC  = 8
const CERT_STORE_PROV_READ_CTL_FUNC  = 9
const CERT_STORE_PROV_WRITE_CTL_FUNC  = 10
const CERT_STORE_PROV_DELETE_CTL_FUNC  = 11
const CERT_STORE_PROV_SET_CTL_PROPERTY_FUNC  = 12
const CERT_STORE_PROV_CONTROL_FUNC  = 13
const CERT_STORE_PROV_FIND_CERT_FUNC  = 14
const CERT_STORE_PROV_FREE_FIND_CERT_FUNC  = 15
const CERT_STORE_PROV_GET_CERT_PROPERTY_FUNC  = 16
const CERT_STORE_PROV_FIND_CRL_FUNC  = 17
const CERT_STORE_PROV_FREE_FIND_CRL_FUNC  = 18
const CERT_STORE_PROV_GET_CRL_PROPERTY_FUNC  = 19
const CERT_STORE_PROV_FIND_CTL_FUNC  = 20
const CERT_STORE_PROV_FREE_FIND_CTL_FUNC  = 21
const CERT_STORE_PROV_GET_CTL_PROPERTY_FUNC  = 22
const CERT_STORE_SAVE_AS_STORE  = 1
const CERT_STORE_SAVE_AS_PKCS7  = 2
const CERT_STORE_SAVE_AS_PKCS12  = 3
const CERT_STORE_SAVE_TO_FILE  = 1
const CERT_STORE_SAVE_TO_MEMORY  = 2
const CERT_STORE_SAVE_TO_FILENAME_A  = 3
const CERT_STORE_SAVE_TO_FILENAME_W  = 4
const CERT_COMPARE_SHIFT  = 16
const CERT_COMPARE_ANY  = 0
const CERT_COMPARE_SHA1_HASH  = 1
const CERT_COMPARE_NAME  = 2
const CERT_COMPARE_ATTR  = 3
const CERT_COMPARE_MD5_HASH  = 4
const CERT_COMPARE_PROPERTY  = 5
const CERT_COMPARE_PUBLIC_KEY  = 6
const CERT_COMPARE_NAME_STR_A  = 7
const CERT_COMPARE_NAME_STR_W  = 8
const CERT_COMPARE_KEY_SPEC  = 9
const CERT_COMPARE_ENHKEY_USAGE  = 10
const CERT_COMPARE_SUBJECT_CERT  = 11
const CERT_COMPARE_ISSUER_OF  = 12
const CERT_COMPARE_EXISTING  = 13
const CERT_COMPARE_SIGNATURE_HASH  = 14
const CERT_COMPARE_KEY_IDENTIFIER  = 15
const CERT_COMPARE_CERT_ID  = 16
const CERT_COMPARE_CROSS_CERT_DIST_POINTS  = 17
const CERT_COMPARE_PUBKEY_MD5_HASH  = 18
const CERT_COMPARE_SUBJECT_INFO_ACCESS  = 19
const CERT_COMPARE_HASH_STR  = 20
const CERT_COMPARE_HAS_PRIVATE_KEY  = 21
const CRL_FIND_ANY  = 0
const CRL_FIND_ISSUED_BY  = 1
const CRL_FIND_EXISTING  = 2
const CRL_FIND_ISSUED_FOR  = 3
const CERT_STORE_ADD_NEW  = 1
const CERT_STORE_ADD_USE_EXISTING  = 2
const CERT_STORE_ADD_REPLACE_EXISTING  = 3
const CERT_STORE_ADD_ALWAYS  = 4
const CERT_STORE_ADD_REPLACE_EXISTING_INHERIT_PROPERTIES  = 5
const CERT_STORE_ADD_NEWER  = 6
const CERT_STORE_ADD_NEWER_INHERIT_PROPERTIES  = 7
const CERT_STORE_CERTIFICATE_CONTEXT  = 1
const CERT_STORE_CRL_CONTEXT  = 2
const CERT_STORE_CTL_CONTEXT  = 3
const CTL_ANY_SUBJECT_TYPE  = 1
const CTL_CERT_SUBJECT_TYPE  = 2
const CTL_FIND_ANY  = 0
const CTL_FIND_SHA1_HASH  = 1
const CTL_FIND_MD5_HASH  = 2
const CTL_FIND_USAGE  = 3
const CTL_FIND_SUBJECT  = 4
const CTL_FIND_EXISTING  = 5
const CERT_STORE_CTRL_RESYNC  = 1
const CERT_STORE_CTRL_NOTIFY_CHANGE  = 2
const CERT_STORE_CTRL_COMMIT  = 3
const CERT_STORE_CTRL_AUTO_RESYNC  = 4
const CERT_STORE_CTRL_CANCEL_NOTIFY  = 5

mutable struct CERT_SYSTEM_STORE_INFO
    cbSize::Culong
end


mutable struct CERT_REVOCATION_STATUS
    cbSize::Culong
    dwIndex::Culong
    dwError::Culong
    dwReason::Culong
    fHasFreshnessTime::Cint
    dwFreshnessTime::Culong
end

const CERT_CONTEXT_REVOCATION_TYPE  = 1
const CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB  = 1
const CRYPT_VERIFY_CERT_SIGN_SUBJECT_CERT  = 2
const CRYPT_VERIFY_CERT_SIGN_SUBJECT_CRL  = 3
const CRYPT_VERIFY_CERT_SIGN_SUBJECT_OCSP_BASIC_SIGNED_RESPONSE  = 4
const CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY  = 1
const CRYPT_VERIFY_CERT_SIGN_ISSUER_CERT  = 2
const CRYPT_VERIFY_CERT_SIGN_ISSUER_CHAIN  = 3
const CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL  = 4
const CRYPT_DEFAULT_CONTEXT_CERT_SIGN_OID  = 1
const CRYPT_DEFAULT_CONTEXT_MULTI_CERT_SIGN_OID  = 2

mutable struct CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA
    cOID::Culong
    rgpszOID::Ptr{Ptr{Cchar}}
end

const CERT_SIMPLE_NAME_STR  = 1
const CERT_OID_NAME_STR  = 2
const CERT_X500_NAME_STR  = 3
const CERT_XML_NAME_STR  = 4
const CERT_NAME_EMAIL_TYPE  = 1
const CERT_NAME_RDN_TYPE  = 2
const CERT_NAME_ATTR_TYPE  = 3
const CERT_NAME_SIMPLE_DISPLAY_TYPE  = 4
const CERT_NAME_FRIENDLY_DISPLAY_TYPE  = 5
const CERT_NAME_DNS_TYPE  = 6
const CERT_NAME_URL_TYPE  = 7
const CERT_NAME_UPN_TYPE  = 8

mutable struct CRYPT_KEY_VERIFY_MESSAGE_PARA
    cbSize::Culong
    dwMsgEncodingType::Culong
    hCryptProv::HCRYPTPROV_LEGACY
end


mutable struct CRYPT_CREDENTIALS
    cbSize::Culong
    pszCredentialsOid::Ptr{Cchar}
    pvCredentials::Ptr{Cvoid}
end


mutable struct CRYPT_PASSWORD_CREDENTIALSA
    cbSize::Culong
    pszUsername::Ptr{Cchar}
    pszPassword::Ptr{Cchar}
end


mutable struct CRYPT_PASSWORD_CREDENTIALSW
    cbSize::Culong
    pszUsername::Ptr{Cwchar_t}
    pszPassword::Ptr{Cwchar_t}
end

const CRYPT_PASSWORD_CREDENTIALS = CRYPT_PASSWORD_CREDENTIALSW

mutable struct CRYPTNET_URL_CACHE_PRE_FETCH_INFO
    cbSize::Culong
    dwObjectType::Culong
    dwError::Culong
    dwReserved::Culong
    ThisUpdateTime::FILETIME
    NextUpdateTime::FILETIME
    PublishTime::FILETIME
end

const CRYPTNET_URL_CACHE_PRE_FETCH_NONE  = 0
const CRYPTNET_URL_CACHE_PRE_FETCH_BLOB  = 1
const CRYPTNET_URL_CACHE_PRE_FETCH_CRL  = 2
const CRYPTNET_URL_CACHE_PRE_FETCH_OCSP  = 3
const CRYPTNET_URL_CACHE_PRE_FETCH_AUTOROOT_CAB  = 5
const CRYPTNET_URL_CACHE_PRE_FETCH_DISALLOWED_CERT_CAB  = 6
const CRYPTNET_URL_CACHE_PRE_FETCH_PIN_RULES_CAB  = 7

mutable struct CRYPTNET_URL_CACHE_FLUSH_INFO
    cbSize::Culong
    dwExemptSeconds::Culong
    ExpireTime::FILETIME
end

const CRYPTNET_URL_CACHE_DEFAULT_FLUSH  = 0

mutable struct CRYPTNET_URL_CACHE_RESPONSE_INFO
    cbSize::Culong
    wResponseType::Cushort
    wResponseFlags::Cushort
    LastModifiedTime::FILETIME
    dwMaxAge::Culong
    pwszETag::Ptr{Cwchar_t}
    dwProxyId::Culong
end

const CRYPTNET_URL_CACHE_RESPONSE_NONE  = 0
const CRYPTNET_URL_CACHE_RESPONSE_HTTP  = 1

mutable struct CRYPT_URL_INFO
    cbSize::Culong
    dwSyncDeltaTime::Culong
    cGroup::Culong
    rgcGroupEntry::Ptr{Culong}
end

const CERT_CREATE_SELFSIGN_NO_SIGN  = 1
const CERT_CREATE_SELFSIGN_NO_KEY_INFO  = 2
const CERT_CHAIN_MAX_AIA_URL_COUNT_IN_CERT_DEFAULT  = 5
const CERT_CHAIN_MAX_AIA_URL_RETRIEVAL_COUNT_PER_CHAIN_DEFAULT  = 3
const CERT_CHAIN_MAX_AIA_URL_RETRIEVAL_BYTE_COUNT_DEFAULT  = 100000
const CERT_CHAIN_MAX_AIA_URL_RETRIEVAL_CERT_COUNT_DEFAULT  = 10
const CERT_CHAIN_MAX_SSL_TIME_UPDATED_EVENT_COUNT_DEFAULT  = 5
const CERT_CHAIN_MIN_RSA_PUB_KEY_BIT_LENGTH_DEFAULT  = 1023
const CERT_CHAIN_AUTO_CURRENT_USER  = 1
const CERT_CHAIN_AUTO_LOCAL_MACHINE  = 2
const CERT_CHAIN_AUTO_IMPERSONATED  = 3
const CERT_CHAIN_AUTO_PROCESS_INFO  = 4
const CERT_CHAIN_AUTO_PINRULE_INFO  = 5
const CERT_CHAIN_AUTO_NETWORK_INFO  = 6
const CERT_CHAIN_AUTO_SERIAL_LOCAL_MACHINE  = 7
const CERT_CHAIN_AUTO_HPKP_RULE_INFO  = 8
const CERT_CHAIN_CRL_VALIDITY_EXT_PERIOD_HOURS_DEFAULT  = 12
const HCERTCHAINENGINE = Ptr{Cvoid}

mutable struct CERT_TRUST_STATUS
    dwErrorStatus::Culong
    dwInfoStatus::Culong
end

const CERT_CHAIN_FIND_BY_ISSUER  = 1

mutable struct EV_EXTRA_CERT_CHAIN_POLICY_STATUS
    cbSize::Culong
    dwQualifiers::Culong
    dwIssuanceUsageIndex::Culong
end

const SSL_F12_ERROR_TEXT_LENGTH  = 256
const CERT_CHAIN_POLICY_SSL_F12_SUCCESS_LEVEL  = 0
const CERT_CHAIN_POLICY_SSL_F12_WARNING_LEVEL  = 1
const CERT_CHAIN_POLICY_SSL_F12_ERROR_LEVEL  = 2
const CERT_CHAIN_POLICY_SSL_F12_NONE_CATEGORY  = 0
const CERT_CHAIN_POLICY_SSL_F12_WEAK_CRYPTO_CATEGORY  = 1
const CERT_CHAIN_POLICY_SSL_F12_ROOT_PROGRAM_CATEGORY  = 2
const SSL_HPKP_PKP_HEADER_INDEX  = 0
const SSL_HPKP_PKP_RO_HEADER_INDEX  = 1
const SSL_HPKP_HEADER_COUNT  = 2

mutable struct SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_PARA
    cbSize::Culong
    dwReserved::Culong
    pwszServerName::Ptr{Cwchar_t}
end

const SSL_KEY_PIN_ERROR_TEXT_LENGTH  = 512
const CERT_CHAIN_POLICY_SSL_KEY_PIN_SUCCESS  = 0
const CERT_CHAIN_POLICY_SSL_KEY_PIN_MITM_WARNING  = 1
const CERT_CHAIN_POLICY_SSL_KEY_PIN_MISMATCH_WARNING  = 2
const PKCS12_ONLY_CERTIFICATES_PROVIDER_TYPE  = 0

mutable struct PKCS12_PBES2_EXPORT_PARAMS
    dwSize::Culong
    hNcryptDescriptor::Ptr{Cvoid}
    pwszPbes2Alg::Ptr{Cwchar_t}
end

const CERT_SELECT_MAX_PARA  = 500
const CERT_SELECT_BY_ENHKEY_USAGE  = 1
const CERT_SELECT_BY_KEY_USAGE  = 2
const CERT_SELECT_BY_POLICY_OID  = 3
const CERT_SELECT_BY_PROV_NAME  = 4
const CERT_SELECT_BY_EXTENSION  = 5
const CERT_SELECT_BY_SUBJECT_HOST_NAME  = 6
const CERT_SELECT_BY_ISSUER_ATTR  = 7
const CERT_SELECT_BY_SUBJECT_ATTR  = 8
const CERT_SELECT_BY_ISSUER_NAME  = 9
const CERT_SELECT_BY_PUBLIC_KEY  = 10
const CERT_SELECT_BY_TLS_SIGNATURES  = 11
const CERT_SELECT_BY_ISSUER_DISPLAYNAME  = 12
const CERT_SELECT_BY_FRIENDLYNAME  = 13
const CERT_SELECT_BY_THUMBPRINT  = 14
const TIMESTAMP_VERSION  = 1
const TIMESTAMP_STATUS_GRANTED  = 0
const TIMESTAMP_STATUS_GRANTED_WITH_MODS  = 1
const TIMESTAMP_STATUS_REJECTED  = 2
const TIMESTAMP_STATUS_WAITING  = 3
const TIMESTAMP_STATUS_REVOCATION_WARNING  = 4
const TIMESTAMP_STATUS_REVOKED  = 5
const TIMESTAMP_FAILURE_BAD_ALG  = 0
const TIMESTAMP_FAILURE_BAD_REQUEST  = 2
const TIMESTAMP_FAILURE_BAD_FORMAT  = 5
const TIMESTAMP_FAILURE_TIME_NOT_AVAILABLE  = 14
const TIMESTAMP_FAILURE_POLICY_NOT_SUPPORTED  = 15
const TIMESTAMP_FAILURE_EXTENSION_NOT_SUPPORTED  = 16
const TIMESTAMP_FAILURE_INFO_NOT_AVAILABLE  = 17
const TIMESTAMP_FAILURE_SYSTEM_FAILURE  = 25

mutable struct CRYPT_TIMESTAMP_ACCURACY
    dwSeconds::Culong
    dwMillis::Culong
    dwMicros::Culong
end

const CRYPT_OBJECT_LOCATOR_SPN_NAME_TYPE  = 1
const CRYPT_OBJECT_LOCATOR_LAST_RESERVED_NAME_TYPE  = 32
const CRYPT_OBJECT_LOCATOR_FIRST_RESERVED_USER_NAME_TYPE  = 33
const CRYPT_OBJECT_LOCATOR_RELEASE_SYSTEM_SHUTDOWN  = 1
const CRYPT_OBJECT_LOCATOR_RELEASE_SERVICE_STOP  = 2
const CRYPT_OBJECT_LOCATOR_RELEASE_PROCESS_EXIT  = 3
const CRYPT_OBJECT_LOCATOR_RELEASE_DLL_UNLOAD  = 4
const CERT_FILE_HASH_USE_TYPE  = 1
const CERT_TIMESTAMP_HASH_USE_TYPE  = 2
const CRYPTPROTECTMEMORY_BLOCK_SIZE  = 16

mutable struct EFS_COMPATIBILITY_INFO
    EfsVersion::Culong
end

const EFS_COMPATIBILITY_VERSION_NCRYPT_PROTECTOR  = 5
const EFS_COMPATIBILITY_VERSION_PFILE_PROTECTOR  = 6
const EFS_SUBVER_UNKNOWN  = 0
const EFS_EFS_SUBVER_EFS_CERT  = 1
const EFS_PFILE_SUBVER_RMS  = 2
const EFS_PFILE_SUBVER_APPX  = 3

mutable struct EFS_VERSION_INFO
    EfsVersion::Culong
    SubVersion::Culong
end


mutable struct EFS_DECRYPTION_STATUS_INFO
    dwDecryptionError::Culong
    dwHashOffset::Culong
    cbHash::Culong
end


mutable struct EFS_ENCRYPTION_STATUS_INFO
    bHasCurrentKey::Cint
    dwEncryptionError::Culong
end

const MAX_SID_SIZE  = 256
const FALSE  = 0
const TRUE  = 1
const TCHAR = Cwchar_t
const ROT_COMPARE_MAX  = 2048
const LCID = Culong
const LANGID = Cushort
const CLIPFORMAT = Cushort
const PROPID = Culong
const METHOD_BUFFERED  = 0
const METHOD_IN_DIRECT  = 1
const METHOD_OUT_DIRECT  = 2
const METHOD_NEITHER  = 3
const FILE_ANY_ACCESS  = 0

mutable struct STORAGE_HOTPLUG_INFO
    Size::Culong
    MediaRemovable::Cuchar
    MediaHotplug::Cuchar
    DeviceHotplug::Cuchar
    WriteCacheEnableOverride::Cuchar
end


mutable struct STORAGE_BUS_RESET_REQUEST
    PathId::Cuchar
end


mutable struct PREVENT_MEDIA_REMOVAL
    PreventMediaRemoval::Cuchar
end


mutable struct CLASS_MEDIA_CHANGE_CONTEXT
    MediaChangeCount::Culong
    NewState::Culong
end


mutable struct TAPE_STATISTICS
    Version::Culong
    Flags::Culong
    RecoveredWrites::Int64
    UnrecoveredWrites::Int64
    RecoveredReads::Int64
    UnrecoveredReads::Int64
    CompressionRatioReads::Cuchar
    CompressionRatioWrites::Cuchar
end


mutable struct TAPE_GET_STATISTICS
    Operation::Culong
end

@enum STORAGE_MEDIA_TYPE::Int32 DDS_4mm=32 MiniQic=33 Travan=34 QIC=35 MP_8mm=36 AME_8mm=37 AIT1_8mm=38 DLT=39 NCTP=40 IBM_3480=41 IBM_3490E=42 IBM_Magstar_3590=43 IBM_Magstar_MP=44 STK_DATA_D3=45 SONY_DTF=46 DV_6mm=47 DMI=48 SONY_D2=49 CLEANER_CARTRIDGE=50 CD_ROM=51 CD_R=52 CD_RW=53 DVD_ROM=54 DVD_R=55 DVD_RW=56 MO_3_RW=57 MO_5_WO=58 MO_5_RW=59 MO_5_LIMDOW=60 PC_5_WO=61 PC_5_RW=62 PD_5_RW=63 ABL_5_WO=64 PINNACLE_APEX_5_RW=65 SONY_12_WO=66 PHILIPS_12_WO=67 HITACHI_12_WO=68 CYGNET_12_WO=69 KODAK_14_WO=70 MO_NFR_525=71 NIKON_12_RW=72 IOMEGA_ZIP=73 IOMEGA_JAZ=74 SYQUEST_EZ135=75 SYQUEST_EZFLYER=76 SYQUEST_SYJET=77 AVATAR_F2=78 MP2_8mm=79 DST_S=80 DST_M=81 DST_L=82 VXATape_1=83 VXATape_2=84 STK_EAGLE=85 STK_9840=86 LTO_Ultrium=87 LTO_Accelis=88 DVD_RAM=89 AIT_8mm=90 ADR_1=91 ADR_2=92 STK_9940=93 SAIT=94 VXATape=95

mutable struct STORAGE_PREDICT_FAILURE
    PredictFailure::Culong
    VendorSpecific::SVector{512,Cuchar}
end


mutable struct STORAGE_FAILURE_PREDICTION_CONFIG
    Version::Culong
    Size::Culong
    Set::Cuchar
    Enabled::Cuchar
    Reserved::Cushort
end

const STORAGE_FAILURE_PREDICTION_CONFIG_V1  = 1
@enum STORAGE_QUERY_TYPE::Int32 PropertyStandardQuery=0 PropertyExistsQuery=1 PropertyMaskQuery=2 PropertyQueryMaxDefined=3
@enum STORAGE_SET_TYPE::Int32 PropertyStandardSet=0 PropertyExistsSet=1 PropertySetMaxDefined=2
const SRB_TYPE_SCSI_REQUEST_BLOCK  = 0
const SRB_TYPE_STORAGE_REQUEST_BLOCK  = 1
const STORAGE_ADDRESS_TYPE_BTL8  = 0

mutable struct DEVICE_WRITE_AGGREGATION_DESCRIPTOR
    Version::Culong
    Size::Culong
    BenefitsFromWriteAggregation::Cuchar
end


mutable struct DEVICE_POWER_DESCRIPTOR
    Version::Culong
    Size::Culong
    DeviceAttentionSupported::Cuchar
    AsynchronousNotificationSupported::Cuchar
    IdlePowerManagementEnabled::Cuchar
    D3ColdEnabled::Cuchar
    D3ColdSupported::Cuchar
    NoVerifyDuringIdlePower::Cuchar
    Reserved::SVector{2,Cuchar}
    IdleTimeoutInMS::Culong
end


mutable struct DEVICE_COPY_OFFLOAD_DESCRIPTOR
    Version::Culong
    Size::Culong
    MaximumTokenLifetime::Culong
    DefaultTokenLifetime::Culong
    MaximumTransferSize::UInt64
    OptimalTransferCount::UInt64
    MaximumDataDescriptors::Culong
    MaximumTransferLengthPerDescriptor::Culong
    OptimalTransferLengthPerDescriptor::Culong
    OptimalTransferLengthGranularity::Cushort
    Reserved::SVector{2,Cuchar}
end

@enum STORAGE_RPMB_FRAME_TYPE::Int32 StorageRpmbFrameTypeUnknown=0 StorageRpmbFrameTypeStandard=1 StorageRpmbFrameTypeMax=2
const STORAGE_RPMB_DESCRIPTOR_VERSION_1  = 1
const STORAGE_RPMB_MINIMUM_RELIABLE_WRITE_SIZE  = 512
@enum STORAGE_CRYPTO_ALGORITHM_ID::Int32 StorageCryptoAlgorithmUnknown=0 StorageCryptoAlgorithmXTSAES=1 StorageCryptoAlgorithmBitlockerAESCBC=2 StorageCryptoAlgorithmAESECB=3 StorageCryptoAlgorithmESSIVAESCBC=4 StorageCryptoAlgorithmMax=5
@enum STORAGE_CRYPTO_KEY_SIZE::Int32 StorageCryptoKeySizeUnknown=0 StorageCryptoKeySize128Bits=1 StorageCryptoKeySize192Bits=2 StorageCryptoKeySize256Bits=3 StorageCryptoKeySize512Bits=4
const STORAGE_CRYPTO_CAPABILITY_VERSION_1  = 1
const STORAGE_CRYPTO_DESCRIPTOR_VERSION_1  = 1
@enum STORAGE_TIER_MEDIA_TYPE::Int32 StorageTierMediaTypeUnspecified=0 StorageTierMediaTypeDisk=1 StorageTierMediaTypeSsd=2 StorageTierMediaTypeScm=4 StorageTierMediaTypeMax=5
@enum STORAGE_TIER_CLASS::Int32 StorageTierClassUnspecified=0 StorageTierClassCapacity=1 StorageTierClassPerformance=2 StorageTierClassMax=3
@enum STORAGE_PROTOCOL_TYPE::Int32 ProtocolTypeUnknown=0 ProtocolTypeScsi=1 ProtocolTypeAta=2 ProtocolTypeNvme=3 ProtocolTypeSd=4 ProtocolTypeUfs=5 ProtocolTypeProprietary=126 ProtocolTypeMaxReserved=127
@enum STORAGE_PROTOCOL_NVME_DATA_TYPE::Int32 NVMeDataTypeUnknown=0 NVMeDataTypeIdentify=1 NVMeDataTypeLogPage=2 NVMeDataTypeFeature=3
@enum STORAGE_PROTOCOL_ATA_DATA_TYPE::Int32 AtaDataTypeUnknown=0 AtaDataTypeIdentify=1 AtaDataTypeLogPage=2
@enum STORAGE_PROTOCOL_UFS_DATA_TYPE::Int32 UfsDataTypeUnknown=0 UfsDataTypeQueryDescriptor=1 UfsDataTypeMax=2

mutable struct STORAGE_TEMPERATURE_INFO
    Index::Cushort
    Temperature::Cshort
    OverThreshold::Cshort
    UnderThreshold::Cshort
    OverThresholdChangable::Cuchar
    UnderThresholdChangable::Cuchar
    EventGenerated::Cuchar
    Reserved0::Cuchar
    Reserved1::Culong
end


mutable struct STORAGE_TEMPERATURE_THRESHOLD
    Version::Culong
    Size::Culong
    Flags::Cushort
    Index::Cushort
    Threshold::Cshort
    OverThreshold::Cuchar
    Reserved::Cuchar
end

@enum STORAGE_DEVICE_FORM_FACTOR::Int32 FormFactorUnknown=0 FormFactor3_5=1 FormFactor2_5=2 FormFactor1_8=3 FormFactor1_8Less=4 FormFactorEmbedded=5 FormFactorMemoryCard=6 FormFactormSata=7 FormFactorM_2=8 FormFactorPCIeBoard=9 FormFactorDimm=10
@enum STORAGE_COMPONENT_HEALTH_STATUS::Int32 HealthStatusUnknown=0 HealthStatusNormal=1 HealthStatusThrottled=2 HealthStatusWarning=3 HealthStatusDisabled=4 HealthStatusFailed=5

mutable struct STORAGE_PHYSICAL_NODE_DATA
    NodeId::Culong
    AdapterCount::Culong
    AdapterDataLength::Culong
    AdapterDataOffset::Culong
    DeviceCount::Culong
    DeviceDataLength::Culong
    DeviceDataOffset::Culong
    Reserved::SVector{3,Culong}
end

@enum STORAGE_DISK_HEALTH_STATUS::Int32 DiskHealthUnknown=0 DiskHealthUnhealthy=1 DiskHealthWarning=2 DiskHealthHealthy=3 DiskHealthMax=4
@enum STORAGE_DISK_OPERATIONAL_STATUS::Int32 DiskOpStatusNone=0 DiskOpStatusUnknown=1 DiskOpStatusOk=2 DiskOpStatusPredictingFailure=3 DiskOpStatusInService=4 DiskOpStatusHardwareError=5 DiskOpStatusNotUsable=6 DiskOpStatusTransientError=7 DiskOpStatusMissing=8
@enum STORAGE_OPERATIONAL_STATUS_REASON::Int32 DiskOpReasonUnknown=0 DiskOpReasonScsiSenseCode=1 DiskOpReasonMedia=2 DiskOpReasonIo=3 DiskOpReasonThresholdExceeded=4 DiskOpReasonLostData=5 DiskOpReasonEnergySource=6 DiskOpReasonConfiguration=7 DiskOpReasonDeviceController=8 DiskOpReasonMediaController=9 DiskOpReasonComponent=10 DiskOpReasonNVDIMM_N=11 DiskOpReasonBackgroundOperation=12 DiskOpReasonInvalidFirmware=13 DiskOpReasonHealthCheck=14 DiskOpReasonLostDataPersistence=15 DiskOpReasonDisabledByPlatform=16 DiskOpReasonLostWritePersistence=17 DiskOpReasonDataPersistenceLossImminent=18 DiskOpReasonWritePersistenceLossImminent=19 DiskOpReasonMax=20
const STORAGE_DEVICE_MAX_OPERATIONAL_STATUS  = 16

mutable struct STORAGE_DEVICE_NUMA_PROPERTY
    Version::Culong
    Size::Culong
    NumaNode::Culong
end


mutable struct STORAGE_DEVICE_UNSAFE_SHUTDOWN_COUNT
    Version::Culong
    Size::Culong
    UnsafeShutdownCount::Culong
end

const STORAGE_OFFLOAD_MAX_TOKEN_LENGTH  = 512

mutable struct DEVICE_DSM_OFFLOAD_READ_PARAMETERS
    Flags::Culong
    TimeToLive::Culong
    Reserved::SVector{2,Culong}
end


mutable struct STORAGE_OFFLOAD_WRITE_OUTPUT
    OffloadWriteFlags::Culong
    Reserved::Culong
    LengthCopied::UInt64
end

const DEVICE_DSM_PARAMETERS_V1  = 1

mutable struct DEVICE_DSM_NVCACHE_CHANGE_PRIORITY_PARAMETERS
    Size::Culong
    TargetPriority::Cuchar
    Reserved::SVector{3,Cuchar}
end


mutable struct DEVICE_STORAGE_ADDRESS_RANGE
    StartAddress::Int64
    LengthInBytes::UInt64
end

const DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT_V1  = 1

mutable struct DEVICE_DSM_REPORT_ZONES_PARAMETERS
    Size::Culong
    ReportOption::Cuchar
    Partial::Cuchar
    Reserved::SVector{2,Cuchar}
end

@enum STORAGE_ZONES_ATTRIBUTES::Int32 ZonesAttributeTypeAndLengthMayDifferent=0 ZonesAttributeTypeSameLengthSame=1 ZonesAttributeTypeSameLastZoneLengthDifferent=2 ZonesAttributeTypeMayDifferentLengthSame=3
@enum STORAGE_ZONE_CONDITION::Int32 ZoneConditionConventional=0 ZoneConditionEmpty=1 ZoneConditionImplicitlyOpened=2 ZoneConditionExplicitlyOpened=3 ZoneConditionClosed=4 ZoneConditionReadOnly=13 ZoneConditionFull=14 ZoneConditionOffline=15
const DEVICE_DSM_RANGE_ERROR_OUTPUT_V1  = 1

mutable struct DEVICE_DSM_LOST_QUERY_PARAMETERS
    Version::Culong
    Granularity::UInt64
end


mutable struct DEVICE_DSM_FREE_SPACE_OUTPUT
    Version::Culong
    FreeSpace::UInt64
end


mutable struct STORAGE_GET_BC_PROPERTIES_OUTPUT
    MaximumRequestsPerPeriod::Culong
    MinimumPeriod::Culong
    MaximumRequestSize::UInt64
    EstimatedTimePerRequest::Culong
    NumOutStandingRequests::Culong
    RequestSize::UInt64
end

const IOCTL_STORAGE_BC_VERSION  = 1

mutable struct STORAGE_ALLOCATE_BC_STREAM_INPUT
    Version::Culong
    RequestsPerPeriod::Culong
    Period::Culong
    RetryFailures::Cuchar
    Discardable::Cuchar
    Reserved1::SVector{2,Cuchar}
    AccessType::Culong
    AccessMode::Culong
end


mutable struct STORAGE_ALLOCATE_BC_STREAM_OUTPUT
    RequestSize::UInt64
    NumOutStandingRequests::Culong
end


mutable struct STORAGE_PRIORITY_HINT_SUPPORT
    SupportFlags::Culong
end

@enum STORAGE_DIAGNOSTIC_LEVEL::Int32 StorageDiagnosticLevelDefault=0 StorageDiagnosticLevelMax=1
@enum STORAGE_DIAGNOSTIC_TARGET_TYPE::Int32 StorageDiagnosticTargetTypeUndefined=0 StorageDiagnosticTargetTypePort=1 StorageDiagnosticTargetTypeMiniport=2 StorageDiagnosticTargetTypeHbaFirmware=3 StorageDiagnosticTargetTypeMax=4

mutable struct PHYSICAL_ELEMENT_STATUS_REQUEST
    Version::Culong
    Size::Culong
    StartingElement::Culong
    Filter::Cuchar
    ReportType::Cuchar
    Reserved::SVector{2,Cuchar}
end


mutable struct PHYSICAL_ELEMENT_STATUS_DESCRIPTOR
    Version::Culong
    Size::Culong
    ElementIdentifier::Culong
    PhysicalElementType::Cuchar
    PhysicalElementHealth::Cuchar
    Reserved1::SVector{2,Cuchar}
    AssociatedCapacity::UInt64
    Reserved2::SVector{4,Culong}
end


mutable struct REMOVE_ELEMENT_AND_TRUNCATE_REQUEST
    Version::Culong
    Size::Culong
    RequestCapacity::UInt64
    ElementIdentifier::Culong
    Reserved::Culong
end

const ERROR_HISTORY_DIRECTORY_ENTRY_DEFAULT_COUNT  = 8
@enum DEVICE_INTERNAL_STATUS_DATA_REQUEST_TYPE::Int32 DeviceInternalStatusDataRequestTypeUndefined=0 DeviceCurrentInternalStatusDataHeader=1 DeviceCurrentInternalStatusData=2
@enum DEVICE_INTERNAL_STATUS_DATA_SET::Int32 DeviceStatusDataSetUndefined=0 DeviceStatusDataSet1=1 DeviceStatusDataSet2=2 DeviceStatusDataSet3=3 DeviceStatusDataSet4=4 DeviceStatusDataSetMax=5

mutable struct STORAGE_MEDIA_SERIAL_NUMBER_DATA
    Reserved::Cushort
    SerialNumberLength::Cushort
    SerialNumber::SVector{0,Cuchar}
end

const DEVICEDUMP_STRUCTURE_VERSION_V1  = 1
const DEVICEDUMP_MAX_IDSTRING  = 32
const MAX_FW_BUCKET_ID_LENGTH  = 132
@enum DEVICEDUMP_COLLECTION_TYPE::Int32 TCCollectionBugCheck=1 TCCollectionApplicationRequested=2 TCCollectionDeviceRequested=3

mutable struct DEVICEDUMP_SUBSECTION_POINTER
    dwSize::Culong
    dwFlags::Culong
    dwOffset::Culong
end


mutable struct DEVICEDUMP_STRUCTURE_VERSION
    dwSignature::Culong
    dwVersion::Culong
    dwSize::Culong
end

const TC_PUBLIC_DEVICEDUMP_CONTENT_GPLOG_MAX  = 16
const TC_DEVICEDUMP_SUBSECTION_DESC_LENGTH  = 16

mutable struct GP_LOG_PAGE_DESCRIPTOR
    LogAddress::Cushort
    LogSectors::Cushort
end

@enum STORAGE_POWERUP_REASON_TYPE::Int32 StoragePowerupUnknown=0 StoragePowerupIO=1 StoragePowerupDeviceAttention=2
const STORAGE_IDLE_POWERUP_REASON_VERSION_V1  = 1
@enum STORAGE_DEVICE_POWER_CAP_UNITS::Int32 StorageDevicePowerCapUnitsPercent=0 StorageDevicePowerCapUnitsMilliwatts=1
const STORAGE_DEVICE_POWER_CAP_VERSION_V1  = 1

mutable struct STORAGE_RPMB_DATA_FRAME
    Stuff::SVector{196,Cuchar}
    KeyOrMAC::SVector{32,Cuchar}
    Data::SVector{256,Cuchar}
    Nonce::SVector{16,Cuchar}
    WriteCounter::SVector{4,Cuchar}
    Address::SVector{2,Cuchar}
    BlockCount::SVector{2,Cuchar}
    OperationResult::SVector{2,Cuchar}
    RequestOrResponseType::SVector{2,Cuchar}
end

@enum STORAGE_RPMB_COMMAND_TYPE::Int32 StorRpmbProgramAuthKey=1 StorRpmbQueryWriteCounter=2 StorRpmbAuthenticatedWrite=3 StorRpmbAuthenticatedRead=4 StorRpmbReadResultRequest=5 StorRpmbAuthenticatedDeviceConfigWrite=6 StorRpmbAuthenticatedDeviceConfigRead=7

mutable struct STORAGE_EVENT_NOTIFICATION
    Version::Culong
    Size::Culong
    Events::UInt64
end

const STORAGE_EVENT_NOTIFICATION_VERSION_V1  = 1
@enum STORAGE_COUNTER_TYPE::Int32 StorageCounterTypeUnknown=0 StorageCounterTypeTemperatureCelsius=1 StorageCounterTypeTemperatureCelsiusMax=2 StorageCounterTypeReadErrorsTotal=3 StorageCounterTypeReadErrorsCorrected=4 StorageCounterTypeReadErrorsUncorrected=5 StorageCounterTypeWriteErrorsTotal=6 StorageCounterTypeWriteErrorsCorrected=7 StorageCounterTypeWriteErrorsUncorrected=8 StorageCounterTypeManufactureDate=9 StorageCounterTypeStartStopCycleCount=10 StorageCounterTypeStartStopCycleCountMax=11 StorageCounterTypeLoadUnloadCycleCount=12 StorageCounterTypeLoadUnloadCycleCountMax=13 StorageCounterTypeWearPercentage=14 StorageCounterTypeWearPercentageWarning=15 StorageCounterTypeWearPercentageMax=16 StorageCounterTypePowerOnHours=17 StorageCounterTypeReadLatency100NSMax=18 StorageCounterTypeWriteLatency100NSMax=19 StorageCounterTypeFlushLatency100NSMax=20 StorageCounterTypeMax=21

mutable struct STORAGE_HW_FIRMWARE_INFO_QUERY
    Version::Culong
    Size::Culong
    Flags::Culong
    Reserved::Culong
end

const STORAGE_HW_FIRMWARE_REVISION_LENGTH  = 16

mutable struct STORAGE_HW_FIRMWARE_ACTIVATE
    Version::Culong
    Size::Culong
    Flags::Culong
    Slot::Cuchar
    Reserved0::SVector{3,Cuchar}
end

@enum STORAGE_ATTRIBUTE_MGMT_ACTION::Int32 StorAttributeMgmt_ClearAttribute=0 StorAttributeMgmt_SetAttribute=1 StorAttributeMgmt_ResetAttribute=2
const STORATTRIBUTE_NONE  = 0
const STORATTRIBUTE_MANAGEMENT_STATE  = 1
const SCM_MAX_SYMLINK_LEN_IN_CHARS  = 256
@enum SCM_REGION_FLAG::Int32 ScmRegionFlagNone=0 ScmRegionFlagLabel=1
@enum SCM_PD_QUERY_TYPE::Int32 ScmPhysicalDeviceQuery_Descriptor=0 ScmPhysicalDeviceQuery_IsSupported=1 ScmPhysicalDeviceQuery_Max=2
@enum SCM_PD_PROPERTY_ID::Int32 ScmPhysicalDeviceProperty_DeviceInfo=0 ScmPhysicalDeviceProperty_ManagementStatus=1 ScmPhysicalDeviceProperty_FirmwareInfo=2 ScmPhysicalDeviceProperty_LocationString=3 ScmPhysicalDeviceProperty_DeviceSpecificInfo=4 ScmPhysicalDeviceProperty_DeviceHandle=5 ScmPhysicalDeviceProperty_Max=6

mutable struct SCM_PD_DESCRIPTOR_HEADER
    Version::Culong
    Size::Culong
end

const MAX_INTERFACE_CODES  = 8
const SCM_PD_FIRMWARE_REVISION_LENGTH_BYTES  = 32
const SCM_PD_PROPERTY_NAME_LENGTH_IN_CHARS  = 128
@enum SCM_PD_HEALTH_STATUS::Int32 ScmPhysicalDeviceHealth_Unknown=0 ScmPhysicalDeviceHealth_Unhealthy=1 ScmPhysicalDeviceHealth_Warning=2 ScmPhysicalDeviceHealth_Healthy=3 ScmPhysicalDeviceHealth_Max=4
@enum SCM_PD_OPERATIONAL_STATUS::Int32 ScmPhysicalDeviceOpStatus_Unknown=0 ScmPhysicalDeviceOpStatus_Ok=1 ScmPhysicalDeviceOpStatus_PredictingFailure=2 ScmPhysicalDeviceOpStatus_InService=3 ScmPhysicalDeviceOpStatus_HardwareError=4 ScmPhysicalDeviceOpStatus_NotUsable=5 ScmPhysicalDeviceOpStatus_TransientError=6 ScmPhysicalDeviceOpStatus_Missing=7 ScmPhysicalDeviceOpStatus_Max=8
@enum SCM_PD_OPERATIONAL_STATUS_REASON::Int32 ScmPhysicalDeviceOpReason_Unknown=0 ScmPhysicalDeviceOpReason_Media=1 ScmPhysicalDeviceOpReason_ThresholdExceeded=2 ScmPhysicalDeviceOpReason_LostData=3 ScmPhysicalDeviceOpReason_EnergySource=4 ScmPhysicalDeviceOpReason_Configuration=5 ScmPhysicalDeviceOpReason_DeviceController=6 ScmPhysicalDeviceOpReason_MediaController=7 ScmPhysicalDeviceOpReason_Component=8 ScmPhysicalDeviceOpReason_BackgroundOperation=9 ScmPhysicalDeviceOpReason_InvalidFirmware=10 ScmPhysicalDeviceOpReason_HealthCheck=11 ScmPhysicalDeviceOpReason_LostDataPersistence=12 ScmPhysicalDeviceOpReason_DisabledByPlatform=13 ScmPhysicalDeviceOpReason_PermanentError=14 ScmPhysicalDeviceOpReason_LostWritePersistence=15 ScmPhysicalDeviceOpReason_FatalError=16 ScmPhysicalDeviceOpReason_DataPersistenceLossImminent=17 ScmPhysicalDeviceOpReason_WritePersistenceLossImminent=18 ScmPhysicalDeviceOpReason_MediaRemainingSpareBlock=19 ScmPhysicalDeviceOpReason_PerformanceDegradation=20 ScmPhysicalDeviceOpReason_ExcessiveTemperature=21 ScmPhysicalDeviceOpReason_Max=22
const SCM_PD_MAX_OPERATIONAL_STATUS  = 16

mutable struct SCM_PD_FIRMWARE_ACTIVATE
    Version::Culong
    Size::Culong
    Flags::Culong
    Slot::Cuchar
end

@enum SCM_PD_MEDIA_REINITIALIZATION_STATUS::Int32 ScmPhysicalDeviceReinit_Success=0 ScmPhysicalDeviceReinit_RebootNeeded=1 ScmPhysicalDeviceReinit_ColdBootNeeded=2 ScmPhysicalDeviceReinit_Max=3
const BAD_TRACK_NUMBER = Cushort

mutable struct PARTITION_INFORMATION
    StartingOffset::Int64
    PartitionLength::Int64
    HiddenSectors::Culong
    PartitionNumber::Culong
    PartitionType::Cuchar
    BootIndicator::Cuchar
    RecognizedPartition::Cuchar
    RewritePartition::Cuchar
end


mutable struct SET_PARTITION_INFORMATION
    PartitionType::Cuchar
end


mutable struct DRIVE_LAYOUT_INFORMATION
    PartitionCount::Culong
    Signature::Culong
    PartitionEntry::SVector{1,PARTITION_INFORMATION}
end


mutable struct VERIFY_INFORMATION
    StartingOffset::Int64
    Length::Culong
end


mutable struct REASSIGN_BLOCKS
    Reserved::Cushort
    Count::Cushort
    BlockNumber::SVector{1,Culong}
end


mutable struct REASSIGN_BLOCKS_EX
    Reserved::Cushort
    Count::Cushort
    BlockNumber::SVector{1,Int64}
end

const SET_PARTITION_INFORMATION_MBR = SET_PARTITION_INFORMATION

mutable struct CREATE_DISK_MBR
    Signature::Culong
end


mutable struct GET_LENGTH_INFORMATION
    Length::Int64
end

@enum DETECTION_TYPE::Int32 DetectNone=0 DetectInt13=1 DetectExInt13=2

mutable struct DISK_INT13_INFO
    DriveSelect::Cushort
    MaxCylinders::Culong
    SectorsPerTrack::Cushort
    MaxHeads::Cushort
    NumberDrives::Cushort
end


mutable struct DISK_EX_INT13_INFO
    ExBufferSize::Cushort
    ExFlags::Cushort
    ExCylinders::Culong
    ExHeads::Culong
    ExSectorsPerTrack::Culong
    ExSectorsPerDrive::UInt64
    ExSectorSize::Cushort
    ExReserved::Cushort
end


mutable struct DISK_CONTROLLER_NUMBER
    ControllerNumber::Culong
    DiskNumber::Culong
end

@enum DISK_WRITE_CACHE_STATE::Int32 DiskWriteCacheNormal=0 DiskWriteCacheForceDisable=1 DiskWriteCacheDisableNotSupported=2

mutable struct DISK_GROW_PARTITION
    PartitionNumber::Culong
    BytesToGrow::Int64
end

const HIST_NO_OF_BUCKETS  = 24

mutable struct HISTOGRAM_BUCKET
    Reads::Culong
    Writes::Culong
end


mutable struct DISK_PERFORMANCE
    BytesRead::Int64
    BytesWritten::Int64
    ReadTime::Int64
    WriteTime::Int64
    IdleTime::Int64
    ReadCount::Culong
    WriteCount::Culong
    QueueDepth::Culong
    SplitCount::Culong
    QueryTime::Int64
    StorageDeviceNumber::Culong
    StorageManagerName::SVector{8,Cwchar_t}
end


mutable struct DISK_RECORD
    ByteOffset::Int64
    StartTime::Int64
    EndTime::Int64
    VirtualAddress::Ptr{Cvoid}
    NumberOfBytes::Culong
    DeviceNumber::Cuchar
    ReadRequest::Cuchar
end


mutable struct DISK_LOGGING
    Function::Cuchar
    BufferAddress::Ptr{Cvoid}
    BufferSize::Culong
end

const DISK_LOGGING_START  = 0
const DISK_LOGGING_STOP  = 1
const DISK_LOGGING_DUMP  = 2
const DISK_BINNING  = 3
@enum BIN_TYPES::Int32 RequestSize=0 RequestLocation=1

mutable struct BIN_RANGE
    StartValue::Int64
    Length::Int64
end


mutable struct PERF_BIN
    NumberOfBins::Culong
    TypeOfBin::Culong
    BinsRanges::SVector{1,BIN_RANGE}
end


mutable struct BIN_COUNT
    BinRange::BIN_RANGE
    BinCount::Culong
end


mutable struct BIN_RESULTS
    NumberOfBins::Culong
    BinCounts::SVector{1,BIN_COUNT}
end


mutable struct GETVERSIONINPARAMS
    bVersion::Cuchar
    bRevision::Cuchar
    bReserved::Cuchar
    bIDEDeviceMap::Cuchar
    fCapabilities::Culong
    dwReserved::SVector{4,Culong}
end

const CAP_ATA_ID_CMD  = 1
const CAP_ATAPI_ID_CMD  = 2
const CAP_SMART_CMD  = 4

mutable struct IDEREGS
    bFeaturesReg::Cuchar
    bSectorCountReg::Cuchar
    bSectorNumberReg::Cuchar
    bCylLowReg::Cuchar
    bCylHighReg::Cuchar
    bDriveHeadReg::Cuchar
    bCommandReg::Cuchar
    bReserved::Cuchar
end


mutable struct SENDCMDINPARAMS
    cBufferSize::Culong
    irDriveRegs::IDEREGS
    bDriveNumber::Cuchar
    bReserved::SVector{3,Cuchar}
    dwReserved::SVector{4,Culong}
    bBuffer::SVector{1,Cuchar}
end


mutable struct DRIVERSTATUS
    bDriverError::Cuchar
    bIDEError::Cuchar
    bReserved::SVector{2,Cuchar}
    dwReserved::SVector{2,Culong}
end

const SMART_NO_ERROR  = 0
const SMART_IDE_ERROR  = 1
const SMART_INVALID_FLAG  = 2
const SMART_INVALID_COMMAND  = 3
const SMART_INVALID_BUFFER  = 4
const SMART_INVALID_DRIVE  = 5
const SMART_INVALID_IOCTL  = 6
const SMART_ERROR_NO_MEM  = 7
const SMART_INVALID_REGISTER  = 8
const SMART_NOT_SUPPORTED  = 9
const SMART_NO_IDE_DEVICE  = 10
const SMART_OFFLINE_ROUTINE_OFFLINE  = 0
const SMART_SHORT_SELFTEST_OFFLINE  = 1
const SMART_EXTENDED_SELFTEST_OFFLINE  = 2
const SMART_ABORT_OFFLINE_SELFTEST  = 127
const SMART_SHORT_SELFTEST_CAPTIVE  = 129
const SMART_EXTENDED_SELFTEST_CAPTIVE  = 130

mutable struct SENDCMDOUTPARAMS
    cBufferSize::Culong
    DriverStatus::DRIVERSTATUS
    bBuffer::SVector{1,Cuchar}
end

const READ_ATTRIBUTE_BUFFER_SIZE  = 512
const IDENTIFY_BUFFER_SIZE  = 512
const READ_THRESHOLD_BUFFER_SIZE  = 512
const SMART_LOG_SECTOR_SIZE  = 512

mutable struct GET_DISK_ATTRIBUTES
    Version::Culong
    Reserved1::Culong
    Attributes::UInt64
end


mutable struct SET_DISK_ATTRIBUTES
    Version::Culong
    Persist::Cuchar
    Reserved1::SVector{3,Cuchar}
    Attributes::UInt64
    AttributesMask::UInt64
    Reserved2::SVector{4,Culong}
end

const MAX_VOLUME_ID_SIZE  = 36
const MAX_VOLUME_TEMPLATE_SIZE  = 40
const VENDOR_ID_LENGTH  = 8
const PRODUCT_ID_LENGTH  = 16
const REVISION_LENGTH  = 4
const SERIAL_NUMBER_LENGTH  = 32
const LOCK_ELEMENT  = 0
const UNLOCK_ELEMENT  = 1
const EXTEND_IEPORT  = 2
const RETRACT_IEPORT  = 3
@enum CHANGER_DEVICE_PROBLEM_TYPE::Int32 DeviceProblemNone=0 DeviceProblemHardware=1 DeviceProblemCHMError=2 DeviceProblemDoorOpen=3 DeviceProblemCalibrationError=4 DeviceProblemTargetFailure=5 DeviceProblemCHMMoveError=6 DeviceProblemCHMZeroError=7 DeviceProblemCartridgeInsertError=8 DeviceProblemPositionError=9 DeviceProblemSensorError=10 DeviceProblemCartridgeEjectError=11 DeviceProblemGripperError=12 DeviceProblemDriveError=13

mutable struct PATHNAME_BUFFER
    PathNameLength::Culong
    Name::SVector{1,Cwchar_t}
end


mutable struct MOVE_FILE_DATA32
    FileHandle::UInt32
    StartingVcn::Int64
    StartingLcn::Int64
    ClusterCount::Culong
end


mutable struct FILE_PREFETCH
    Type::Culong
    Count::Culong
    Prefetch::SVector{1,UInt64}
end


mutable struct FILE_PREFETCH_EX
    Type::Culong
    Count::Culong
    Context::Ptr{Cvoid}
    Prefetch::SVector{1,UInt64}
end


mutable struct FILESYSTEM_STATISTICS
    FileSystemType::Cushort
    Version::Cushort
    SizeOfCompleteStructure::Culong
    UserFileReads::Culong
    UserFileReadBytes::Culong
    UserDiskReads::Culong
    UserFileWrites::Culong
    UserFileWriteBytes::Culong
    UserDiskWrites::Culong
    MetaDataReads::Culong
    MetaDataReadBytes::Culong
    MetaDataDiskReads::Culong
    MetaDataWrites::Culong
    MetaDataWriteBytes::Culong
    MetaDataDiskWrites::Culong
end

const FILESYSTEM_STATISTICS_TYPE_NTFS  = 1
const FILESYSTEM_STATISTICS_TYPE_FAT  = 2
const FILESYSTEM_STATISTICS_TYPE_EXFAT  = 3
const FILESYSTEM_STATISTICS_TYPE_REFS  = 4

mutable struct FAT_STATISTICS
    CreateHits::Culong
    SuccessfulCreates::Culong
    FailedCreates::Culong
    NonCachedReads::Culong
    NonCachedReadBytes::Culong
    NonCachedWrites::Culong
    NonCachedWriteBytes::Culong
    NonCachedDiskReads::Culong
    NonCachedDiskWrites::Culong
end


mutable struct EXFAT_STATISTICS
    CreateHits::Culong
    SuccessfulCreates::Culong
    FailedCreates::Culong
    NonCachedReads::Culong
    NonCachedReadBytes::Culong
    NonCachedWrites::Culong
    NonCachedWriteBytes::Culong
    NonCachedDiskReads::Culong
    NonCachedDiskWrites::Culong
end


mutable struct FILESYSTEM_STATISTICS_EX
    FileSystemType::Cushort
    Version::Cushort
    SizeOfCompleteStructure::Culong
    UserFileReads::UInt64
    UserFileReadBytes::UInt64
    UserDiskReads::UInt64
    UserFileWrites::UInt64
    UserFileWriteBytes::UInt64
    UserDiskWrites::UInt64
    MetaDataReads::UInt64
    MetaDataReadBytes::UInt64
    MetaDataDiskReads::UInt64
    MetaDataWrites::UInt64
    MetaDataWriteBytes::UInt64
    MetaDataDiskWrites::UInt64
end


mutable struct FILE_SET_SPARSE_BUFFER
    SetSparse::Cuchar
end


mutable struct FILE_ZERO_DATA_INFORMATION
    FileOffset::Int64
    BeyondFinalZero::Int64
end


mutable struct FILE_ZERO_DATA_INFORMATION_EX
    FileOffset::Int64
    BeyondFinalZero::Int64
    Flags::Culong
end


mutable struct FILE_ALLOCATED_RANGE_BUFFER
    FileOffset::Int64
    Length::Int64
end


mutable struct ENCRYPTION_BUFFER
    EncryptionOperation::Culong
    Private::SVector{1,Cuchar}
end


mutable struct DECRYPTION_STATUS_BUFFER
    NoEncryptedStreams::Cuchar
end


mutable struct REQUEST_RAW_ENCRYPTED_DATA
    FileOffset::Int64
    Length::Culong
end

const ENCRYPTED_DATA_INFO_SPARSE_FILE  = 1

mutable struct EXTENDED_ENCRYPTED_DATA_INFO
    ExtendedCode::Culong
    Length::Culong
    Flags::Culong
    Reserved::Culong
end


mutable struct PLEX_READ_DATA_REQUEST
    ByteOffset::Int64
    ByteLength::Culong
    PlexNumber::Culong
end


mutable struct SI_COPYFILE
    SourceFileNameLength::Culong
    DestinationFileNameLength::Culong
    Flags::Culong
    FileNameBuffer::SVector{1,Cwchar_t}
end


mutable struct FILE_MAKE_COMPATIBLE_BUFFER
    CloseDisc::Cuchar
end


mutable struct FILE_SET_DEFECT_MGMT_BUFFER
    Disable::Cuchar
end


mutable struct FILE_QUERY_SPARING_BUFFER
    SparingUnitBytes::Culong
    SoftwareSparing::Cuchar
    TotalSpareBlocks::Culong
    FreeSpareBlocks::Culong
end


mutable struct FILE_QUERY_ON_DISK_VOL_INFO_BUFFER
    DirectoryCount::Int64
    FileCount::Int64
    FsFormatMajVersion::Cushort
    FsFormatMinVersion::Cushort
    FsFormatName::SVector{ 12,Cwchar_t}
    FormatTime::Int64
    LastUpdateTime::Int64
    CopyrightInfo::SVector{ 34,Cwchar_t}
    AbstractInfo::SVector{ 34,Cwchar_t}
    FormattingImplementationInfo::SVector{ 34,Cwchar_t}
    LastModifyingImplementationInfo::SVector{ 34,Cwchar_t}
end

const CLSN = UInt64

mutable struct FILE_INITIATE_REPAIR_OUTPUT_BUFFER
    Hint1::UInt64
    Hint2::UInt64
    Clsn::CLSN
    Status::Culong
end

const TXFS_RM_STATE_NOT_STARTED  = 0
const TXFS_RM_STATE_STARTING  = 1
const TXFS_RM_STATE_ACTIVE  = 2
const TXFS_RM_STATE_SHUTTING_DOWN  = 3

mutable struct TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY
    Offset::UInt64
    NameFlags::Culong
    FileId::Int64
    Reserved1::Culong
    Reserved2::Culong
    Reserved3::Int64
    FileName::SVector{1,Cwchar_t}
end


mutable struct TXFS_LIST_TRANSACTIONS
    NumberOfTransactions::UInt64
    BufferSizeRequired::UInt64
end


mutable struct TXFS_WRITE_BACKUP_INFORMATION
    Buffer::SVector{1,Cuchar}
end


mutable struct TXFS_GET_TRANSACTED_VERSION
    ThisBaseVersion::Culong
    LatestVersion::Culong
    ThisMiniVersion::Cushort
    FirstMiniVersion::Cushort
    LatestMiniVersion::Cushort
end


mutable struct TXFS_SAVEPOINT_INFORMATION
    KtmTransaction::Ptr{Cvoid}
    ActionCode::Culong
    SavepointId::Culong
end


mutable struct TXFS_CREATE_MINIVERSION_INFO
    StructureVersion::Cushort
    StructureLength::Cushort
    BaseVersion::Culong
    MiniVersion::Cushort
end


mutable struct TXFS_TRANSACTION_ACTIVE_INFO
    TransactionsActiveAtSnapshot::Cuchar
end


mutable struct RETRIEVAL_POINTER_BASE
    FileAreaOffset::Int64
end


mutable struct FILE_FS_PERSISTENT_VOLUME_INFORMATION
    VolumeFlags::Culong
    FlagMask::Culong
    Version::Culong
    Reserved::Culong
end


mutable struct FILE_SYSTEM_RECOGNITION_INFORMATION
    FileSystem::SVector{9,Cchar}
end

const REQUEST_OPLOCK_CURRENT_VERSION  = 1

mutable struct REQUEST_OPLOCK_INPUT_BUFFER
    StructureVersion::Cushort
    StructureLength::Cushort
    RequestedOplockLevel::Culong
    Flags::Culong
end


mutable struct STORAGE_QUERY_DEPENDENT_VOLUME_REQUEST
    RequestLevel::Culong
    RequestFlags::Culong
end

const SD_GLOBAL_CHANGE_TYPE_MACHINE_SID  = 1

mutable struct SD_CHANGE_MACHINE_SID_INPUT
    CurrentMachineSIDOffset::Cushort
    CurrentMachineSIDLength::Cushort
    NewMachineSIDOffset::Cushort
    NewMachineSIDLength::Cushort
end


mutable struct SD_CHANGE_MACHINE_SID_OUTPUT
    NumSDChangedSuccess::UInt64
    NumSDChangedFail::UInt64
    NumSDUnused::UInt64
    NumSDTotal::UInt64
    NumMftSDChangedSuccess::UInt64
    NumMftSDChangedFail::UInt64
    NumMftSDTotal::UInt64
end


mutable struct SD_QUERY_STATS_INPUT
    Reserved::Culong
end


mutable struct SD_QUERY_STATS_OUTPUT
    SdsStreamSize::UInt64
    SdsAllocationSize::UInt64
    SiiStreamSize::UInt64
    SiiAllocationSize::UInt64
    SdhStreamSize::UInt64
    SdhAllocationSize::UInt64
    NumSDTotal::UInt64
    NumSDUnused::UInt64
end


mutable struct SD_ENUM_SDS_INPUT
    StartingOffset::UInt64
    MaxSDEntriesToReturn::UInt64
end


mutable struct SD_ENUM_SDS_ENTRY
    Hash::Culong
    SecurityId::Culong
    Offset::UInt64
    Length::Culong
    Descriptor::SVector{1,Cuchar}
end


mutable struct SD_ENUM_SDS_OUTPUT
    NextOffset::UInt64
    NumSDEntriesReturned::UInt64
    NumSDBytesReturned::UInt64
    SDEntry::SVector{1,SD_ENUM_SDS_ENTRY}
end


mutable struct LOOKUP_STREAM_FROM_CLUSTER_INPUT
    Flags::Culong
    NumberOfClusters::Culong
    Cluster::SVector{1,Int64}
end


mutable struct LOOKUP_STREAM_FROM_CLUSTER_OUTPUT
    Offset::Culong
    NumberOfMatches::Culong
    BufferSizeRequired::Culong
end


mutable struct LOOKUP_STREAM_FROM_CLUSTER_ENTRY
    OffsetToNext::Culong
    Flags::Culong
    Reserved::Int64
    Cluster::Int64
    FileName::SVector{1,Cwchar_t}
end


mutable struct CSV_MGMT_LOCK
    Flags::Culong
end


mutable struct CSV_NAMESPACE_INFO
    Version::Culong
    DeviceNumber::Culong
    StartingOffset::Int64
    SectorSize::Culong
end

@enum CSV_CONTROL_OP::Int32 CsvControlStartRedirectFile=2 CsvControlStopRedirectFile=3 CsvControlQueryRedirectState=4 CsvControlQueryFileRevision=6 CsvControlQueryMdsPath=8 CsvControlQueryFileRevisionFileId128=9 CsvControlQueryVolumeRedirectState=10 CsvControlEnableUSNRangeModificationTracking=13 CsvControlMarkHandleLocalVolumeMount=14 CsvControlUnmarkHandleLocalVolumeMount=15 CsvControlGetCsvFsMdsPathV2=18 CsvControlDisableCaching=19 CsvControlEnableCaching=20 CsvControlStartForceDFO=21 CsvControlStopForceDFO=22

mutable struct CSV_QUERY_REDIRECT_STATE
    MdsNodeId::Culong
    DsNodeId::Culong
    FileRedirected::Cuchar
end


mutable struct CSV_QUERY_FILE_REVISION
    FileId::Int64
    FileRevision::SVector{3,Int64}
end


mutable struct CSV_QUERY_MDS_PATH
    MdsNodeId::Culong
    DsNodeId::Culong
    PathLength::Culong
    Path::SVector{1,Cwchar_t}
end

const CSV_QUERY_MDS_PATH_V2_VERSION_1  = 1

mutable struct CSV_QUERY_VETO_FILE_DIRECT_IO_OUTPUT
    VetoedFromAltitudeIntegral::UInt64
    VetoedFromAltitudeDecimal::UInt64
    Reason::SVector{256,Cwchar_t}
end

@enum STORAGE_RESERVE_ID::Int32 StorageReserveIdNone=0 StorageReserveIdHard=1 StorageReserveIdSoft=2 StorageReserveIdUpdateScratch=3 StorageReserveIdMax=4

mutable struct CSV_IS_OWNED_BY_CSVFS
    OwnedByCSVFS::Cuchar
end


mutable struct FILE_LEVEL_TRIM_RANGE
    Offset::UInt64
    Length::UInt64
end


mutable struct FILE_LEVEL_TRIM
    Key::Culong
    NumRanges::Culong
    Ranges::SVector{1,FILE_LEVEL_TRIM_RANGE}
end


mutable struct FILE_LEVEL_TRIM_OUTPUT
    NumRangesProcessed::Culong
end

@enum QUERY_FILE_LAYOUT_FILTER_TYPE::Int32 QUERY_FILE_LAYOUT_FILTER_TYPE_NONE=0 QUERY_FILE_LAYOUT_FILTER_TYPE_CLUSTERS=1 QUERY_FILE_LAYOUT_FILTER_TYPE_FILEID=2 QUERY_FILE_LAYOUT_FILTER_TYPE_STORAGE_RESERVE_ID=3 QUERY_FILE_LAYOUT_NUM_FILTER_TYPES=4

mutable struct CLUSTER_RANGE
    StartingCluster::Int64
    ClusterCount::Int64
end


mutable struct FILE_REFERENCE_RANGE
    StartingFileReferenceNumber::UInt64
    EndingFileReferenceNumber::UInt64
end


mutable struct QUERY_FILE_LAYOUT_OUTPUT
    FileEntryCount::Culong
    FirstFileOffset::Culong
    Flags::Culong
    Reserved::Culong
end


mutable struct FILE_LAYOUT_ENTRY
    Version::Culong
    NextFileOffset::Culong
    Flags::Culong
    FileAttributes::Culong
    FileReferenceNumber::UInt64
    FirstNameOffset::Culong
    FirstStreamOffset::Culong
    ExtraInfoOffset::Culong
    Reserved::Culong
    ExtraInfoLength::Culong
end


mutable struct FSCTL_GET_INTEGRITY_INFORMATION_BUFFER
    ChecksumAlgorithm::Cushort
    Reserved::Cushort
    Flags::Culong
    ChecksumChunkSizeInBytes::Culong
    ClusterSizeInBytes::Culong
end


mutable struct FSCTL_SET_INTEGRITY_INFORMATION_BUFFER
    ChecksumAlgorithm::Cushort
    Reserved::Cushort
    Flags::Culong
end


mutable struct FSCTL_SET_INTEGRITY_INFORMATION_BUFFER_EX
    EnableIntegrity::Cuchar
    KeepIntegrityStateUnchanged::Cuchar
    Reserved::Cushort
    Flags::Culong
    Version::Cuchar
    Reserved2::SVector{7,Cuchar}
end


mutable struct FSCTL_OFFLOAD_READ_INPUT
    Size::Culong
    Flags::Culong
    TokenTimeToLive::Culong
    Reserved::Culong
    FileOffset::UInt64
    CopyLength::UInt64
end


mutable struct FSCTL_OFFLOAD_READ_OUTPUT
    Size::Culong
    Flags::Culong
    TransferLength::UInt64
    Token::SVector{512,Cuchar}
end


mutable struct FSCTL_OFFLOAD_WRITE_INPUT
    Size::Culong
    Flags::Culong
    FileOffset::UInt64
    CopyLength::UInt64
    TransferOffset::UInt64
    Token::SVector{512,Cuchar}
end


mutable struct FSCTL_OFFLOAD_WRITE_OUTPUT
    Size::Culong
    Flags::Culong
    LengthWritten::UInt64
end


mutable struct SET_PURGE_FAILURE_MODE_INPUT
    Flags::Culong
end


mutable struct REPAIR_COPIES_OUTPUT
    Size::Culong
    Status::Culong
    ResumeFileOffset::Int64
end


mutable struct FILE_REGION_INFO
    FileOffset::Int64
    Length::Int64
    Usage::Culong
    Reserved::Culong
end


mutable struct FILE_REGION_OUTPUT
    Flags::Culong
    TotalRegionEntryCount::Culong
    RegionEntryCount::Culong
    Reserved::Culong
    Region::SVector{1,FILE_REGION_INFO}
end


mutable struct FILE_REGION_INPUT
    FileOffset::Int64
    Length::Int64
    DesiredUsage::Culong
end


mutable struct WRITE_USN_REASON_INPUT
    Flags::Culong
    UsnReasonToWrite::Culong
end

@enum FILE_STORAGE_TIER_MEDIA_TYPE::Int32 FileStorageTierMediaTypeUnspecified=0 FileStorageTierMediaTypeDisk=1 FileStorageTierMediaTypeSsd=2 FileStorageTierMediaTypeScm=4 FileStorageTierMediaTypeMax=5
@enum FILE_STORAGE_TIER_CLASS::Int32 FileStorageTierClassUnspecified=0 FileStorageTierClassCapacity=1 FileStorageTierClassPerformance=2 FileStorageTierClassMax=3

mutable struct DUPLICATE_EXTENTS_DATA
    FileHandle::Ptr{Cvoid}
    SourceFileOffset::Int64
    TargetFileOffset::Int64
    ByteCount::Int64
end


mutable struct DUPLICATE_EXTENTS_DATA32
    FileHandle::UInt32
    SourceFileOffset::Int64
    TargetFileOffset::Int64
    ByteCount::Int64
end


mutable struct DUPLICATE_EXTENTS_DATA_EX
    Size::UInt64
    FileHandle::Ptr{Cvoid}
    SourceFileOffset::Int64
    TargetFileOffset::Int64
    ByteCount::Int64
    Flags::Culong
end


mutable struct DUPLICATE_EXTENTS_DATA_EX32
    Size::UInt32
    FileHandle::UInt32
    SourceFileOffset::Int64
    TargetFileOffset::Int64
    ByteCount::Int64
    Flags::Culong
end

const REFS_SMR_VOLUME_INFO_OUTPUT_VERSION_V1  = 1
@enum REFS_SMR_VOLUME_GC_STATE::Int32 SmrGcStateInactive=0 SmrGcStatePaused=1 SmrGcStateActive=2 SmrGcStateActiveFullSpeed=3
const REFS_SMR_VOLUME_GC_PARAMETERS_VERSION_V1  = 1
@enum REFS_SMR_VOLUME_GC_ACTION::Int32 SmrGcActionStart=1 SmrGcActionStartFullSpeed=2 SmrGcActionPause=3 SmrGcActionStop=4
@enum REFS_SMR_VOLUME_GC_METHOD::Int32 SmrGcMethodCompaction=1 SmrGcMethodCompression=2 SmrGcMethodRotation=3

mutable struct STREAMS_QUERY_PARAMETERS_OUTPUT_BUFFER
    OptimalWriteSize::Culong
    StreamGranularitySize::Culong
    StreamIdMin::Culong
    StreamIdMax::Culong
end


mutable struct STREAMS_ASSOCIATE_ID_INPUT_BUFFER
    Flags::Culong
    StreamId::Culong
end


mutable struct STREAMS_QUERY_ID_OUTPUT_BUFFER
    StreamId::Culong
end


mutable struct QUERY_BAD_RANGES_INPUT_RANGE
    StartOffset::UInt64
    LengthInBytes::UInt64
end


mutable struct QUERY_BAD_RANGES_INPUT
    Flags::Culong
    NumRanges::Culong
    Ranges::SVector{1,QUERY_BAD_RANGES_INPUT_RANGE}
end


mutable struct QUERY_BAD_RANGES_OUTPUT_RANGE
    Flags::Culong
    Reserved::Culong
    StartOffset::UInt64
    LengthInBytes::UInt64
end


mutable struct QUERY_BAD_RANGES_OUTPUT
    Flags::Culong
    NumBadRanges::Culong
    NextOffsetToLookUp::UInt64
    BadRanges::SVector{1,QUERY_BAD_RANGES_OUTPUT_RANGE}
end


mutable struct SET_DAX_ALLOC_ALIGNMENT_HINT_INPUT
    Flags::Culong
    AlignmentShift::Culong
    FileOffsetToAlign::UInt64
    FallbackAlignmentShift::Culong
end

@enum VIRTUAL_STORAGE_BEHAVIOR_CODE::Int32 VirtualStorageBehaviorUndefined=0 VirtualStorageBehaviorCacheWriteThrough=1 VirtualStorageBehaviorCacheWriteBack=2

mutable struct ENCRYPTION_KEY_CTRL_INPUT
    HeaderSize::Culong
    StructureSize::Culong
    KeyOffset::Cushort
    KeySize::Cushort
    DplLock::Culong
    DplUserId::UInt64
    DplCredentialId::UInt64
end


mutable struct WOF_EXTERNAL_INFO
    Version::Culong
    Provider::Culong
end


mutable struct WOF_VERSION_INFO
    WofVersion::Culong
end

const WIM_PROVIDER_HASH_SIZE  = 20

mutable struct WIM_PROVIDER_ADD_OVERLAY_INPUT
    WimType::Culong
    WimIndex::Culong
    WimFileNameOffset::Culong
    WimFileNameLength::Culong
end


mutable struct WIM_PROVIDER_UPDATE_OVERLAY_INPUT
    DataSourceId::Int64
    WimFileNameOffset::Culong
    WimFileNameLength::Culong
end


mutable struct WIM_PROVIDER_REMOVE_OVERLAY_INPUT
    DataSourceId::Int64
end


mutable struct WIM_PROVIDER_SUSPEND_OVERLAY_INPUT
    DataSourceId::Int64
end


mutable struct FILE_PROVIDER_EXTERNAL_INFO_V0
    Version::Culong
    Algorithm::Culong
end


mutable struct FILE_PROVIDER_EXTERNAL_INFO_V1
    Version::Culong
    Algorithm::Culong
    Flags::Culong
end

const FILE_PROVIDER_EXTERNAL_INFO = FILE_PROVIDER_EXTERNAL_INFO_V1

mutable struct CONTAINER_VOLUME_STATE
    Flags::Culong
end


mutable struct CONTAINER_ROOT_INFO_INPUT
    Flags::Culong
end


mutable struct VIRTUALIZATION_INSTANCE_INFO_INPUT
    NumberOfWorkerThreads::Culong
    Flags::Culong
end

const PROJFS_PROTOCOL_VERSION  = 3

mutable struct VIRTUALIZATION_INSTANCE_INFO_INPUT_EX
    HeaderSize::Cushort
    Flags::Culong
    NotificationInfoSize::Culong
    NotificationInfoOffset::Cushort
    ProviderMajorVersion::Cushort
end


mutable struct DISK_EXTENT
    DiskNumber::Culong
    StartingOffset::Int64
    ExtentLength::Int64
end


mutable struct VOLUME_GET_GPT_ATTRIBUTES_INFORMATION
    GptAttributes::UInt64
end

const SCARDCONTEXT = Int
const SCARDHANDLE = Int
const SCARD_SCOPE_USER  = 0
const SCARD_SCOPE_TERMINAL  = 1
const SCARD_SCOPE_SYSTEM  = 2
const SCARD_PROVIDER_PRIMARY  = 1
const SCARD_PROVIDER_CSP  = 2
const SCARD_PROVIDER_KSP  = 3

mutable struct SCARD_ATRMASK
    cbAtr::Culong
    rgbAtr::SVector{36,Cuchar}
    rgbMask::SVector{36,Cuchar}
end

const SCARD_SHARE_EXCLUSIVE  = 1
const SCARD_SHARE_SHARED  = 2
const SCARD_SHARE_DIRECT  = 3
const SCARD_LEAVE_CARD  = 0
const SCARD_RESET_CARD  = 1
const SCARD_UNPOWER_CARD  = 2
const SCARD_EJECT_CARD  = 3
const MAXPROPPAGES  = 100
const PSPCB_ADDREF  = 0
const PSPCB_RELEASE  = 1
const PSPCB_CREATE  = 2
const PSCB_INITIALIZED  = 1
const PSCB_PRECREATE  = 2
const PSCB_BUTTONPRESSED  = 3
const PSNRET_NOERROR  = 0
const PSNRET_INVALID  = 1
const PSNRET_INVALID_NOCHANGEPAGE  = 2
const PSNRET_MESSAGEHANDLED  = 3
const PSBTN_BACK  = 0
const PSBTN_NEXT  = 1
const PSBTN_FINISH  = 2
const PSBTN_OK  = 3
const PSBTN_APPLYNOW  = 4
const PSBTN_CANCEL  = 5
const PSBTN_HELP  = 6
const PSBTN_MAX  = 6
const PSWIZB_SHOW  = 0
const PSWIZB_RESTORE  = 1
const WIZ_CXDLG  = 276
const WIZ_CYDLG  = 140
const WIZ_CXBMP  = 80
const WIZ_BODYX  = 92
const WIZ_BODYCX  = 184
const PROP_SM_CXDLG  = 212
const PROP_SM_CYDLG  = 188
const PROP_MED_CXDLG  = 227
const PROP_MED_CYDLG  = 215
const PROP_LG_CXDLG  = 252
const PROP_LG_CYDLG  = 218

mutable struct PRINTER_INFO_1A
    Flags::Culong
    pDescription::Ptr{Cchar}
    pName::Ptr{Cchar}
    pComment::Ptr{Cchar}
end


mutable struct PRINTER_INFO_1W
    Flags::Culong
    pDescription::Ptr{Cwchar_t}
    pName::Ptr{Cwchar_t}
    pComment::Ptr{Cwchar_t}
end

const PRINTER_INFO_1 = PRINTER_INFO_1W
const LPPRINTER_INFO_1 = Ptr{PRINTER_INFO_1W}

mutable struct PRINTER_INFO_4A
    pPrinterName::Ptr{Cchar}
    pServerName::Ptr{Cchar}
    Attributes::Culong
end


mutable struct PRINTER_INFO_4W
    pPrinterName::Ptr{Cwchar_t}
    pServerName::Ptr{Cwchar_t}
    Attributes::Culong
end

const PRINTER_INFO_4 = PRINTER_INFO_4W
const LPPRINTER_INFO_4 = Ptr{PRINTER_INFO_4W}

mutable struct PRINTER_INFO_5A
    pPrinterName::Ptr{Cchar}
    pPortName::Ptr{Cchar}
    Attributes::Culong
    DeviceNotSelectedTimeout::Culong
    TransmissionRetryTimeout::Culong
end


mutable struct PRINTER_INFO_5W
    pPrinterName::Ptr{Cwchar_t}
    pPortName::Ptr{Cwchar_t}
    Attributes::Culong
    DeviceNotSelectedTimeout::Culong
    TransmissionRetryTimeout::Culong
end

const PRINTER_INFO_5 = PRINTER_INFO_5W
const LPPRINTER_INFO_5 = Ptr{PRINTER_INFO_5W}

mutable struct PRINTER_INFO_6
    dwStatus::Culong
end


mutable struct PRINTER_INFO_7A
    pszObjectGUID::Ptr{Cchar}
    dwAction::Culong
end


mutable struct PRINTER_INFO_7W
    pszObjectGUID::Ptr{Cwchar_t}
    dwAction::Culong
end

const PRINTER_INFO_7 = PRINTER_INFO_7W
const LPPRINTER_INFO_7 = Ptr{PRINTER_INFO_7W}
const PRINTER_CONTROL_PAUSE  = 1
const PRINTER_CONTROL_RESUME  = 2
const PRINTER_CONTROL_PURGE  = 3
const PRINTER_CONTROL_SET_STATUS  = 4
const NO_PRIORITY  = 0
const MAX_PRIORITY  = 99
const MIN_PRIORITY  = 1
const DEF_PRIORITY  = 1

mutable struct JOB_INFO_1A
    JobId::Culong
    pPrinterName::Ptr{Cchar}
    pMachineName::Ptr{Cchar}
    pUserName::Ptr{Cchar}
    pDocument::Ptr{Cchar}
    pDatatype::Ptr{Cchar}
    pStatus::Ptr{Cchar}
    Status::Culong
    Priority::Culong
    Position::Culong
    TotalPages::Culong
    PagesPrinted::Culong
    Submitted::SYSTEMTIME
end


mutable struct JOB_INFO_1W
    JobId::Culong
    pPrinterName::Ptr{Cwchar_t}
    pMachineName::Ptr{Cwchar_t}
    pUserName::Ptr{Cwchar_t}
    pDocument::Ptr{Cwchar_t}
    pDatatype::Ptr{Cwchar_t}
    pStatus::Ptr{Cwchar_t}
    Status::Culong
    Priority::Culong
    Position::Culong
    TotalPages::Culong
    PagesPrinted::Culong
    Submitted::SYSTEMTIME
end

const JOB_INFO_1 = JOB_INFO_1W
const LPJOB_INFO_1 = Ptr{JOB_INFO_1W}

mutable struct JOB_INFO_3
    JobId::Culong
    NextJobId::Culong
    Reserved::Culong
end

const JOB_CONTROL_PAUSE  = 1
const JOB_CONTROL_RESUME  = 2
const JOB_CONTROL_CANCEL  = 3
const JOB_CONTROL_RESTART  = 4
const JOB_CONTROL_DELETE  = 5
const JOB_CONTROL_SENT_TO_PRINTER  = 6
const JOB_CONTROL_LAST_PAGE_EJECTED  = 7
const JOB_POSITION_UNSPECIFIED  = 0

mutable struct ADDJOB_INFO_1A
    Path::Ptr{Cchar}
    JobId::Culong
end


mutable struct ADDJOB_INFO_1W
    Path::Ptr{Cwchar_t}
    JobId::Culong
end

const ADDJOB_INFO_1 = ADDJOB_INFO_1W
const LPADDJOB_INFO_1 = Ptr{ADDJOB_INFO_1W}

mutable struct DRIVER_INFO_1A
    pName::Ptr{Cchar}
end


mutable struct DRIVER_INFO_1W
    pName::Ptr{Cwchar_t}
end

const DRIVER_INFO_1 = DRIVER_INFO_1W
const LPDRIVER_INFO_1 = Ptr{DRIVER_INFO_1W}

mutable struct DRIVER_INFO_2A
    cVersion::Culong
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDriverPath::Ptr{Cchar}
    pDataFile::Ptr{Cchar}
    pConfigFile::Ptr{Cchar}
end


mutable struct DRIVER_INFO_2W
    cVersion::Culong
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDriverPath::Ptr{Cwchar_t}
    pDataFile::Ptr{Cwchar_t}
    pConfigFile::Ptr{Cwchar_t}
end

const DRIVER_INFO_2 = DRIVER_INFO_2W
const LPDRIVER_INFO_2 = Ptr{DRIVER_INFO_2W}

mutable struct DRIVER_INFO_3A
    cVersion::Culong
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDriverPath::Ptr{Cchar}
    pDataFile::Ptr{Cchar}
    pConfigFile::Ptr{Cchar}
    pHelpFile::Ptr{Cchar}
    pDependentFiles::Ptr{Cchar}
    pMonitorName::Ptr{Cchar}
    pDefaultDataType::Ptr{Cchar}
end


mutable struct DRIVER_INFO_3W
    cVersion::Culong
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDriverPath::Ptr{Cwchar_t}
    pDataFile::Ptr{Cwchar_t}
    pConfigFile::Ptr{Cwchar_t}
    pHelpFile::Ptr{Cwchar_t}
    pDependentFiles::Ptr{Cwchar_t}
    pMonitorName::Ptr{Cwchar_t}
    pDefaultDataType::Ptr{Cwchar_t}
end

const DRIVER_INFO_3 = DRIVER_INFO_3W
const LPDRIVER_INFO_3 = Ptr{DRIVER_INFO_3W}

mutable struct DRIVER_INFO_4A
    cVersion::Culong
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDriverPath::Ptr{Cchar}
    pDataFile::Ptr{Cchar}
    pConfigFile::Ptr{Cchar}
    pHelpFile::Ptr{Cchar}
    pDependentFiles::Ptr{Cchar}
    pMonitorName::Ptr{Cchar}
    pDefaultDataType::Ptr{Cchar}
    pszzPreviousNames::Ptr{Cchar}
end


mutable struct DRIVER_INFO_4W
    cVersion::Culong
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDriverPath::Ptr{Cwchar_t}
    pDataFile::Ptr{Cwchar_t}
    pConfigFile::Ptr{Cwchar_t}
    pHelpFile::Ptr{Cwchar_t}
    pDependentFiles::Ptr{Cwchar_t}
    pMonitorName::Ptr{Cwchar_t}
    pDefaultDataType::Ptr{Cwchar_t}
    pszzPreviousNames::Ptr{Cwchar_t}
end

const DRIVER_INFO_4 = DRIVER_INFO_4W
const LPDRIVER_INFO_4 = Ptr{DRIVER_INFO_4W}

mutable struct DRIVER_INFO_5A
    cVersion::Culong
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDriverPath::Ptr{Cchar}
    pDataFile::Ptr{Cchar}
    pConfigFile::Ptr{Cchar}
    dwDriverAttributes::Culong
    dwConfigVersion::Culong
    dwDriverVersion::Culong
end


mutable struct DRIVER_INFO_5W
    cVersion::Culong
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDriverPath::Ptr{Cwchar_t}
    pDataFile::Ptr{Cwchar_t}
    pConfigFile::Ptr{Cwchar_t}
    dwDriverAttributes::Culong
    dwConfigVersion::Culong
    dwDriverVersion::Culong
end

const DRIVER_INFO_5 = DRIVER_INFO_5W
const LPDRIVER_INFO_5 = Ptr{DRIVER_INFO_5W}

mutable struct DRIVER_INFO_6A
    cVersion::Culong
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDriverPath::Ptr{Cchar}
    pDataFile::Ptr{Cchar}
    pConfigFile::Ptr{Cchar}
    pHelpFile::Ptr{Cchar}
    pDependentFiles::Ptr{Cchar}
    pMonitorName::Ptr{Cchar}
    pDefaultDataType::Ptr{Cchar}
    pszzPreviousNames::Ptr{Cchar}
    ftDriverDate::FILETIME
    dwlDriverVersion::UInt64
    pszMfgName::Ptr{Cchar}
    pszOEMUrl::Ptr{Cchar}
    pszHardwareID::Ptr{Cchar}
    pszProvider::Ptr{Cchar}
end


mutable struct DRIVER_INFO_6W
    cVersion::Culong
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDriverPath::Ptr{Cwchar_t}
    pDataFile::Ptr{Cwchar_t}
    pConfigFile::Ptr{Cwchar_t}
    pHelpFile::Ptr{Cwchar_t}
    pDependentFiles::Ptr{Cwchar_t}
    pMonitorName::Ptr{Cwchar_t}
    pDefaultDataType::Ptr{Cwchar_t}
    pszzPreviousNames::Ptr{Cwchar_t}
    ftDriverDate::FILETIME
    dwlDriverVersion::UInt64
    pszMfgName::Ptr{Cwchar_t}
    pszOEMUrl::Ptr{Cwchar_t}
    pszHardwareID::Ptr{Cwchar_t}
    pszProvider::Ptr{Cwchar_t}
end

const DRIVER_INFO_6 = DRIVER_INFO_6W
const LPDRIVER_INFO_6 = Ptr{DRIVER_INFO_6W}

mutable struct DRIVER_INFO_8A
    cVersion::Culong
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDriverPath::Ptr{Cchar}
    pDataFile::Ptr{Cchar}
    pConfigFile::Ptr{Cchar}
    pHelpFile::Ptr{Cchar}
    pDependentFiles::Ptr{Cchar}
    pMonitorName::Ptr{Cchar}
    pDefaultDataType::Ptr{Cchar}
    pszzPreviousNames::Ptr{Cchar}
    ftDriverDate::FILETIME
    dwlDriverVersion::UInt64
    pszMfgName::Ptr{Cchar}
    pszOEMUrl::Ptr{Cchar}
    pszHardwareID::Ptr{Cchar}
    pszProvider::Ptr{Cchar}
    pszPrintProcessor::Ptr{Cchar}
    pszVendorSetup::Ptr{Cchar}
    pszzColorProfiles::Ptr{Cchar}
    pszInfPath::Ptr{Cchar}
    dwPrinterDriverAttributes::Culong
    pszzCoreDriverDependencies::Ptr{Cchar}
    ftMinInboxDriverVerDate::FILETIME
    dwlMinInboxDriverVerVersion::UInt64
end


mutable struct DRIVER_INFO_8W
    cVersion::Culong
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDriverPath::Ptr{Cwchar_t}
    pDataFile::Ptr{Cwchar_t}
    pConfigFile::Ptr{Cwchar_t}
    pHelpFile::Ptr{Cwchar_t}
    pDependentFiles::Ptr{Cwchar_t}
    pMonitorName::Ptr{Cwchar_t}
    pDefaultDataType::Ptr{Cwchar_t}
    pszzPreviousNames::Ptr{Cwchar_t}
    ftDriverDate::FILETIME
    dwlDriverVersion::UInt64
    pszMfgName::Ptr{Cwchar_t}
    pszOEMUrl::Ptr{Cwchar_t}
    pszHardwareID::Ptr{Cwchar_t}
    pszProvider::Ptr{Cwchar_t}
    pszPrintProcessor::Ptr{Cwchar_t}
    pszVendorSetup::Ptr{Cwchar_t}
    pszzColorProfiles::Ptr{Cwchar_t}
    pszInfPath::Ptr{Cwchar_t}
    dwPrinterDriverAttributes::Culong
    pszzCoreDriverDependencies::Ptr{Cwchar_t}
    ftMinInboxDriverVerDate::FILETIME
    dwlMinInboxDriverVerVersion::UInt64
end

const DRIVER_INFO_8 = DRIVER_INFO_8W
const LPDRIVER_INFO_8 = Ptr{DRIVER_INFO_8W}

mutable struct DOC_INFO_1A
    pDocName::Ptr{Cchar}
    pOutputFile::Ptr{Cchar}
    pDatatype::Ptr{Cchar}
end


mutable struct DOC_INFO_1W
    pDocName::Ptr{Cwchar_t}
    pOutputFile::Ptr{Cwchar_t}
    pDatatype::Ptr{Cwchar_t}
end

const DOC_INFO_1 = DOC_INFO_1W
const LPDOC_INFO_1 = Ptr{DOC_INFO_1W}

mutable struct FORM_INFO_1A
    Flags::Culong
    pName::Ptr{Cchar}
    Size::SIZEL
    ImageableArea::RECTL
end


mutable struct FORM_INFO_1W
    Flags::Culong
    pName::Ptr{Cwchar_t}
    Size::SIZEL
    ImageableArea::RECTL
end

const FORM_INFO_1 = FORM_INFO_1W
const LPFORM_INFO_1 = Ptr{FORM_INFO_1W}

mutable struct DOC_INFO_2A
    pDocName::Ptr{Cchar}
    pOutputFile::Ptr{Cchar}
    pDatatype::Ptr{Cchar}
    dwMode::Culong
    JobId::Culong
end


mutable struct DOC_INFO_2W
    pDocName::Ptr{Cwchar_t}
    pOutputFile::Ptr{Cwchar_t}
    pDatatype::Ptr{Cwchar_t}
    dwMode::Culong
    JobId::Culong
end

const DOC_INFO_2 = DOC_INFO_2W
const LPDOC_INFO_2 = Ptr{DOC_INFO_2W}
const DI_CHANNEL  = 1
const DI_READ_SPOOL_JOB  = 3

mutable struct DOC_INFO_3A
    pDocName::Ptr{Cchar}
    pOutputFile::Ptr{Cchar}
    pDatatype::Ptr{Cchar}
    dwFlags::Culong
end


mutable struct DOC_INFO_3W
    pDocName::Ptr{Cwchar_t}
    pOutputFile::Ptr{Cwchar_t}
    pDatatype::Ptr{Cwchar_t}
    dwFlags::Culong
end

const DOC_INFO_3 = DOC_INFO_3W
const LPDOC_INFO_3 = Ptr{DOC_INFO_3W}

mutable struct PRINTPROCESSOR_INFO_1A
    pName::Ptr{Cchar}
end


mutable struct PRINTPROCESSOR_INFO_1W
    pName::Ptr{Cwchar_t}
end

const PRINTPROCESSOR_INFO_1 = PRINTPROCESSOR_INFO_1W
const LPPRINTPROCESSOR_INFO_1 = Ptr{PRINTPROCESSOR_INFO_1W}

mutable struct PORT_INFO_1A
    pName::Ptr{Cchar}
end


mutable struct PORT_INFO_1W
    pName::Ptr{Cwchar_t}
end

const PORT_INFO_1 = PORT_INFO_1W
const LPPORT_INFO_1 = Ptr{PORT_INFO_1W}

mutable struct PORT_INFO_2A
    pPortName::Ptr{Cchar}
    pMonitorName::Ptr{Cchar}
    pDescription::Ptr{Cchar}
    fPortType::Culong
    Reserved::Culong
end


mutable struct PORT_INFO_2W
    pPortName::Ptr{Cwchar_t}
    pMonitorName::Ptr{Cwchar_t}
    pDescription::Ptr{Cwchar_t}
    fPortType::Culong
    Reserved::Culong
end

const PORT_INFO_2 = PORT_INFO_2W
const LPPORT_INFO_2 = Ptr{PORT_INFO_2W}

mutable struct PORT_INFO_3A
    dwStatus::Culong
    pszStatus::Ptr{Cchar}
    dwSeverity::Culong
end


mutable struct PORT_INFO_3W
    dwStatus::Culong
    pszStatus::Ptr{Cwchar_t}
    dwSeverity::Culong
end

const PORT_INFO_3 = PORT_INFO_3W
const LPPORT_INFO_3 = Ptr{PORT_INFO_3W}
const PORT_STATUS_TYPE_ERROR  = 1
const PORT_STATUS_TYPE_WARNING  = 2
const PORT_STATUS_TYPE_INFO  = 3

mutable struct MONITOR_INFO_1A
    pName::Ptr{Cchar}
end


mutable struct MONITOR_INFO_1W
    pName::Ptr{Cwchar_t}
end

const MONITOR_INFO_1 = MONITOR_INFO_1W
const LPMONITOR_INFO_1 = Ptr{MONITOR_INFO_1W}

mutable struct MONITOR_INFO_2A
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDLLName::Ptr{Cchar}
end


mutable struct MONITOR_INFO_2W
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDLLName::Ptr{Cwchar_t}
end

const MONITOR_INFO_2 = MONITOR_INFO_2W
const LPMONITOR_INFO_2 = Ptr{MONITOR_INFO_2W}

mutable struct DATATYPES_INFO_1A
    pName::Ptr{Cchar}
end


mutable struct DATATYPES_INFO_1W
    pName::Ptr{Cwchar_t}
end

const DATATYPES_INFO_1 = DATATYPES_INFO_1W
const LPDATATYPES_INFO_1 = Ptr{DATATYPES_INFO_1W}

mutable struct PRINTER_ENUM_VALUESA
    pValueName::Ptr{Cchar}
    cbValueName::Culong
    dwType::Culong
    pData::Ptr{Cuchar}
    cbData::Culong
end


mutable struct PRINTER_ENUM_VALUESW
    pValueName::Ptr{Cwchar_t}
    cbValueName::Culong
    dwType::Culong
    pData::Ptr{Cuchar}
    cbData::Culong
end

const PRINTER_ENUM_VALUES = PRINTER_ENUM_VALUESW
const LPPRINTER_ENUM_VALUES = Ptr{PRINTER_ENUM_VALUESW}

mutable struct PRINTER_NOTIFY_OPTIONS_TYPE
    Type::Cushort
    Reserved0::Cushort
    Reserved1::Culong
    Reserved2::Culong
    Count::Culong
    pFields::Ptr{Cushort}
end


mutable struct PROVIDOR_INFO_1A
    pName::Ptr{Cchar}
    pEnvironment::Ptr{Cchar}
    pDLLName::Ptr{Cchar}
end


mutable struct PROVIDOR_INFO_1W
    pName::Ptr{Cwchar_t}
    pEnvironment::Ptr{Cwchar_t}
    pDLLName::Ptr{Cwchar_t}
end

const PROVIDOR_INFO_1 = PROVIDOR_INFO_1W
const LPPROVIDOR_INFO_1 = Ptr{PROVIDOR_INFO_1W}

mutable struct PROVIDOR_INFO_2A
    pOrder::Ptr{Cchar}
end


mutable struct PROVIDOR_INFO_2W
    pOrder::Ptr{Cwchar_t}
end

const PROVIDOR_INFO_2 = PROVIDOR_INFO_2W
const LPPROVIDOR_INFO_2 = Ptr{PROVIDOR_INFO_2W}
const OLEVERB_PRIMARY  = 0

mutable struct OLETARGETDEVICE
    otdDeviceNameOffset::Cushort
    otdDriverNameOffset::Cushort
    otdPortNameOffset::Cushort
    otdExtDevmodeOffset::Cushort
    otdExtDevmodeSize::Cushort
    otdEnvironmentOffset::Cushort
    otdEnvironmentSize::Cushort
    otdData::SVector{1,Cuchar}
end

const OLECLIPFORMAT = Cushort
const HOBJECT = Ptr{Cvoid}
const LHSERVER = Int
const LHCLIENTDOC = Int
const LHSERVERDOC = Int
const WIN32  = 100
const TARGET_IS_NT100_OR_LATER  = 1
const TARGET_IS_NT100_OR_LATER  = 0
const TARGET_IS_NT63_OR_LATER  = 1
const TARGET_IS_NT63_OR_LATER  = 0
const TARGET_IS_NT62_OR_LATER  = 1
const TARGET_IS_NT62_OR_LATER  = 0
const TARGET_IS_NT61_OR_LATER  = 1
const TARGET_IS_NT61_OR_LATER  = 0
const TARGET_IS_NT60_OR_LATER  = 1
const TARGET_IS_NT60_OR_LATER  = 0
const TARGET_IS_NT51_OR_LATER  = 1
const TARGET_IS_NT51_OR_LATER  = 0
const TARGET_IS_NT50_OR_LATER  = 1
const TARGET_IS_NT50_OR_LATER  = 0
const TARGET_IS_NT40_OR_LATER  = 1
const TARGET_IS_NT40_OR_LATER  = 0
const TARGET_IS_NT351_OR_WIN95_OR_LATER  = 1
const TARGET_IS_NT351_OR_WIN95_OR_LATER  = 0
const USER_MARSHAL_FC_BYTE  = 1
const USER_MARSHAL_FC_CHAR  = 2
const USER_MARSHAL_FC_SMALL  = 3
const USER_MARSHAL_FC_USMALL  = 4
const USER_MARSHAL_FC_WCHAR  = 5
const USER_MARSHAL_FC_SHORT  = 6
const USER_MARSHAL_FC_USHORT  = 7
const USER_MARSHAL_FC_LONG  = 8
const USER_MARSHAL_FC_ULONG  = 9
const USER_MARSHAL_FC_FLOAT  = 10
const USER_MARSHAL_FC_HYPER  = 11
const USER_MARSHAL_FC_DOUBLE  = 12
const OLECHAR = Cwchar_t
const LPOLESTR = Ptr{Cchar}
const LPCOLESTR = Ptr{Cchar}
const SECURITY_DESCRIPTOR_CONTROL = Cushort
const PSID = Ptr{Cvoid}
const SCODE = Culong
const RPCOLEDATAREP = Culong
const CPFLAGS = Culong
const APARTMENTID = Culong
const COM_RIGHTS_EXECUTE  = 1
const COM_RIGHTS_EXECUTE_LOCAL  = 2
const COM_RIGHTS_EXECUTE_REMOTE  = 4
const COM_RIGHTS_ACTIVATE_LOCAL  = 8
const COM_RIGHTS_ACTIVATE_REMOTE  = 16
const COM_RIGHTS_RESERVED1  = 32
const COM_RIGHTS_RESERVED2  = 64
const CWMO_MAX_HANDLES  = 56
const PROPVAR_PAD1 = Cuchar
const PROPVAR_PAD2 = Cuchar
const PROPVAR_PAD3 = Culong
const CWCSTORAGENAME  = 32
const STGFMT = Culong
const STGFMT_STORAGE  = 0
const STGFMT_NATIVE  = 1
const STGFMT_FILE  = 3
const STGFMT_ANY  = 4
const STGFMT_DOCFILE  = 5
const STGFMT_DOCUMENT  = 0
const STGOPTIONS_VERSION  = 1
const STGOPTIONS_VERSION  = 2
const STGOPTIONS_VERSION  = 0
const CCH_MAX_PROPSTG_NAME  = 31
const MARSHALINTERFACE_MIN  = 500
const MKSYS_URLMONIKER  = 6
const URL_MK_LEGACY  = 0
const URL_MK_UNIFORM  = 1
const URL_MK_NO_CANONICALIZE  = 2
const CF_NULL  = 0
const WININETINFO_OPTION_LOCK_HANDLE  = 65534
const MAX_SIZE_SECURITY_ID  = 512

mutable struct SERIALIZEDPROPERTYVALUE
    dwType::Culong
    rgb::SVector{1,Cuchar}
end

const DISPID = Culong
const MEMBERID = DISPID
const HREFTYPE = Culong
const VTDATEGRE_MAX  = 2958465
const VARCMP_LT  = 0
const VARCMP_EQ  = 1
const VARCMP_GT  = 2
const VARCMP_NULL  = 3
const BORDERWIDTHS = RECT
const LPBORDERWIDTHS = Ptr{RECT}
const HOLEMENU = HGLOBAL
const OFN_SHAREFALLTHROUGH  = 2
const OFN_SHARENOWARN  = 1
const OFN_SHAREWARN  = 0
const CD_LBSELCHANGE  = 0
const CD_LBSELSUB  = 1
const CD_LBSELADD  = 2

mutable struct PRINTPAGERANGE
    nFromPage::Culong
    nToPage::Culong
end

const PD_RESULT_CANCEL  = 0
const PD_RESULT_PRINT  = 1
const PD_RESULT_APPLY  = 2

mutable struct DEVNAMES
    wDriverOffset::Cushort
    wDeviceOffset::Cushort
    wOutputOffset::Cushort
    wDefault::Cushort
end

const SERVICE_CONFIG_DESCRIPTION  = 1
const SERVICE_CONFIG_FAILURE_ACTIONS  = 2
const SERVICE_CONFIG_DELAYED_AUTO_START_INFO  = 3
const SERVICE_CONFIG_FAILURE_ACTIONS_FLAG  = 4
const SERVICE_CONFIG_SERVICE_SID_INFO  = 5
const SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO  = 6
const SERVICE_CONFIG_PRESHUTDOWN_INFO  = 7
const SERVICE_CONFIG_TRIGGER_INFO  = 8
const SERVICE_CONFIG_PREFERRED_NODE  = 9
const SERVICE_CONFIG_LAUNCH_PROTECTED  = 12
const SERVICE_NOTIFY_STATUS_CHANGE_1  = 1
const SERVICE_NOTIFY_STATUS_CHANGE_2  = 2
const SERVICE_CONTROL_STATUS_REASON_INFO  = 1
const SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL  = 1
const SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY  = 2
const SERVICE_TRIGGER_TYPE_DOMAIN_JOIN  = 3
const SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT  = 4
const SERVICE_TRIGGER_TYPE_GROUP_POLICY  = 5
const SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT  = 6
const SERVICE_TRIGGER_TYPE_CUSTOM_SYSTEM_STATE_CHANGE  = 7
const SERVICE_TRIGGER_TYPE_CUSTOM  = 20
const SERVICE_TRIGGER_TYPE_AGGREGATE  = 30
const SERVICE_TRIGGER_DATA_TYPE_BINARY  = 1
const SERVICE_TRIGGER_DATA_TYPE_STRING  = 2
const SERVICE_TRIGGER_DATA_TYPE_LEVEL  = 3
const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ANY  = 4
const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ALL  = 5
const SERVICE_DYNAMIC_INFORMATION_LEVEL_START_REASON  = 1
const SERVICE_LAUNCH_PROTECTED_NONE  = 0
const SERVICE_LAUNCH_PROTECTED_WINDOWS  = 1
const SERVICE_LAUNCH_PROTECTED_WINDOWS_LIGHT  = 2
const SERVICE_LAUNCH_PROTECTED_ANTIMALWARE_LIGHT  = 3
const SERVICE_TRIGGER_ACTION_SERVICE_START  = 1
const SERVICE_TRIGGER_ACTION_SERVICE_STOP  = 2

mutable struct SERVICE_DESCRIPTIONA
    lpDescription::Ptr{Cchar}
end


mutable struct SERVICE_DESCRIPTIONW
    lpDescription::Ptr{Cwchar_t}
end

const SERVICE_DESCRIPTION = SERVICE_DESCRIPTIONW
const LPSERVICE_DESCRIPTION = Ptr{SERVICE_DESCRIPTIONW}
@enum SC_ACTION_TYPE::Int32 SC_ACTION_NONE=0 SC_ACTION_RESTART=1 SC_ACTION_REBOOT=2 SC_ACTION_RUN_COMMAND=3 SC_ACTION_OWN_RESTART=4

mutable struct SERVICE_DELAYED_AUTO_START_INFO
    fDelayedAutostart::Cint
end


mutable struct SERVICE_FAILURE_ACTIONS_FLAG
    fFailureActionsOnNonCrashFailures::Cint
end


mutable struct SERVICE_SID_INFO
    dwServiceSidType::Culong
end


mutable struct SERVICE_REQUIRED_PRIVILEGES_INFOA
    pmszRequiredPrivileges::Ptr{Cchar}
end


mutable struct SERVICE_REQUIRED_PRIVILEGES_INFOW
    pmszRequiredPrivileges::Ptr{Cwchar_t}
end

const SERVICE_REQUIRED_PRIVILEGES_INFO = SERVICE_REQUIRED_PRIVILEGES_INFOW
const LPSERVICE_REQUIRED_PRIVILEGES_INFO = Ptr{SERVICE_REQUIRED_PRIVILEGES_INFOW}

mutable struct SERVICE_PRESHUTDOWN_INFO
    dwPreshutdownTimeout::Culong
end


mutable struct SERVICE_PREFERRED_NODE_INFO
    usPreferredNode::Cushort
    fDelete::Cuchar
end


mutable struct SERVICE_TIMECHANGE_INFO
    liNewTime::Int64
    liOldTime::Int64
end


mutable struct SERVICE_LAUNCH_PROTECTED_INFO
    dwLaunchProtected::Culong
end

@enum SC_STATUS_TYPE::Int32 SC_STATUS_PROCESS_INFO=0
@enum SC_ENUM_TYPE::Int32 SC_ENUM_PROCESS_INFO=0

mutable struct SERVICE_STATUS
    dwServiceType::Culong
    dwCurrentState::Culong
    dwControlsAccepted::Culong
    dwWin32ExitCode::Culong
    dwServiceSpecificExitCode::Culong
    dwCheckPoint::Culong
    dwWaitHint::Culong
end


mutable struct SERVICE_STATUS_PROCESS
    dwServiceType::Culong
    dwCurrentState::Culong
    dwControlsAccepted::Culong
    dwWin32ExitCode::Culong
    dwServiceSpecificExitCode::Culong
    dwCheckPoint::Culong
    dwWaitHint::Culong
    dwProcessId::Culong
    dwServiceFlags::Culong
end


mutable struct ENUM_SERVICE_STATUSA
    lpServiceName::Ptr{Cchar}
    lpDisplayName::Ptr{Cchar}
    ServiceStatus::SERVICE_STATUS
end


mutable struct ENUM_SERVICE_STATUSW
    lpServiceName::Ptr{Cwchar_t}
    lpDisplayName::Ptr{Cwchar_t}
    ServiceStatus::SERVICE_STATUS
end

const ENUM_SERVICE_STATUS = ENUM_SERVICE_STATUSW
const LPENUM_SERVICE_STATUS = Ptr{ENUM_SERVICE_STATUSW}

mutable struct ENUM_SERVICE_STATUS_PROCESSA
    lpServiceName::Ptr{Cchar}
    lpDisplayName::Ptr{Cchar}
    ServiceStatusProcess::SERVICE_STATUS_PROCESS
end


mutable struct ENUM_SERVICE_STATUS_PROCESSW
    lpServiceName::Ptr{Cwchar_t}
    lpDisplayName::Ptr{Cwchar_t}
    ServiceStatusProcess::SERVICE_STATUS_PROCESS
end

const ENUM_SERVICE_STATUS_PROCESS = ENUM_SERVICE_STATUS_PROCESSW
const LPENUM_SERVICE_STATUS_PROCESS = Ptr{ENUM_SERVICE_STATUS_PROCESSW}
const SC_LOCK = Ptr{Cvoid}

mutable struct QUERY_SERVICE_LOCK_STATUSA
    fIsLocked::Culong
    lpLockOwner::Ptr{Cchar}
    dwLockDuration::Culong
end


mutable struct QUERY_SERVICE_LOCK_STATUSW
    fIsLocked::Culong
    lpLockOwner::Ptr{Cwchar_t}
    dwLockDuration::Culong
end

const QUERY_SERVICE_LOCK_STATUS = QUERY_SERVICE_LOCK_STATUSW
const LPQUERY_SERVICE_LOCK_STATUS = Ptr{QUERY_SERVICE_LOCK_STATUSW}

mutable struct QUERY_SERVICE_CONFIGA
    dwServiceType::Culong
    dwStartType::Culong
    dwErrorControl::Culong
    lpBinaryPathName::Ptr{Cchar}
    lpLoadOrderGroup::Ptr{Cchar}
    dwTagId::Culong
    lpDependencies::Ptr{Cchar}
    lpServiceStartName::Ptr{Cchar}
    lpDisplayName::Ptr{Cchar}
end


mutable struct QUERY_SERVICE_CONFIGW
    dwServiceType::Culong
    dwStartType::Culong
    dwErrorControl::Culong
    lpBinaryPathName::Ptr{Cwchar_t}
    lpLoadOrderGroup::Ptr{Cwchar_t}
    dwTagId::Culong
    lpDependencies::Ptr{Cwchar_t}
    lpServiceStartName::Ptr{Cwchar_t}
    lpDisplayName::Ptr{Cwchar_t}
end

const QUERY_SERVICE_CONFIG = QUERY_SERVICE_CONFIGW
const LPQUERY_SERVICE_CONFIG = Ptr{QUERY_SERVICE_CONFIGW}

mutable struct SERVICE_CONTROL_STATUS_REASON_PARAMSA
    dwReason::Culong
    pszComment::Ptr{Cchar}
    ServiceStatus::SERVICE_STATUS_PROCESS
end


mutable struct SERVICE_CONTROL_STATUS_REASON_PARAMSW
    dwReason::Culong
    pszComment::Ptr{Cwchar_t}
    ServiceStatus::SERVICE_STATUS_PROCESS
end

const SERVICE_CONTROL_STATUS_REASON_PARAMS = SERVICE_CONTROL_STATUS_REASON_PARAMSW

mutable struct SERVICE_START_REASON
    dwReason::Culong
end

@enum SC_EVENT_TYPE::Int32 SC_EVENT_DATABASE_CHANGE=0 SC_EVENT_PROPERTY_CHANGE=1 SC_EVENT_STATUS_CHANGE=2

mutable struct MODEMDEVCAPS
    dwActualSize::Culong
    dwRequiredSize::Culong
    dwDevSpecificOffset::Culong
    dwDevSpecificSize::Culong
    dwModemProviderVersion::Culong
    dwModemManufacturerOffset::Culong
    dwModemManufacturerSize::Culong
    dwModemModelOffset::Culong
    dwModemModelSize::Culong
    dwModemVersionOffset::Culong
    dwModemVersionSize::Culong
    dwDialOptions::Culong
    dwCallSetupFailTimer::Culong
    dwInactivityTimeout::Culong
    dwSpeakerVolume::Culong
    dwSpeakerMode::Culong
    dwModemOptions::Culong
    dwMaxDTERate::Culong
    dwMaxDCERate::Culong
    abVariablePortion::SVector{1,Cuchar}
end


mutable struct MODEMSETTINGS
    dwActualSize::Culong
    dwRequiredSize::Culong
    dwDevSpecificOffset::Culong
    dwDevSpecificSize::Culong
    dwCallSetupFailTimer::Culong
    dwInactivityTimeout::Culong
    dwSpeakerVolume::Culong
    dwSpeakerMode::Culong
    dwPreferredModemOptions::Culong
    dwNegotiatedModemOptions::Culong
    dwNegotiatedDCERate::Culong
    abVariablePortion::SVector{1,Cuchar}
end

const MDM_SHIFT_BEARERMODE  = 12
const MDM_SHIFT_PROTOCOLID  = 16
const MDM_SHIFT_PROTOCOLDATA  = 20
const MDM_PIAFS_INCOMING  = 0
const MDM_PIAFS_OUTGOING  = 1
const HIMC = Culong
const HIMCC = Culong

mutable struct COMPOSITIONFORM
    dwStyle::Culong
    ptCurrentPos::POINT
    rcArea::RECT
end


mutable struct CANDIDATEFORM
    dwIndex::Culong
    dwStyle::Culong
    ptCurrentPos::POINT
    rcArea::RECT
end


mutable struct CANDIDATELIST
    dwSize::Culong
    dwStyle::Culong
    dwCount::Culong
    dwSelection::Culong
    dwPageStart::Culong
    dwPageSize::Culong
    dwOffset::SVector{1,Culong}
end


mutable struct REGISTERWORDA
    lpReading::Ptr{Cchar}
    lpWord::Ptr{Cchar}
end


mutable struct REGISTERWORDW
    lpReading::Ptr{Cwchar_t}
    lpWord::Ptr{Cwchar_t}
end

const REGISTERWORD = REGISTERWORDW
const LPREGISTERWORD = Ptr{REGISTERWORDW}

mutable struct RECONVERTSTRING
    dwSize::Culong
    dwVersion::Culong
    dwStrLen::Culong
    dwStrOffset::Culong
    dwCompStrLen::Culong
    dwCompStrOffset::Culong
    dwTargetStrLen::Culong
    dwTargetStrOffset::Culong
end

const STYLE_DESCRIPTION_SIZE  = 32
const IMEMENUITEM_STRING_SIZE  = 80

mutable struct IMECHARPOSITION
    dwSize::Culong
    dwCharPos::Culong
    pt::POINT
    cLineHeight::UInt32
    rcDocument::RECT
end

const IME_CONFIG_GENERAL  = 1
const IME_CONFIG_REGISTERWORD  = 2
const IME_CONFIG_SELECTDICTIONARY  = 3
const MAX_MODULE_NAME32  = 255

mutable struct HEAPLIST32
    dwSize::UInt64
    th32ProcessID::Culong
    th32HeapID::Int
    dwFlags::Culong
end

const HF32_DEFAULT  = 1
const HF32_SHARED  = 2

mutable struct HEAPENTRY32
    dwSize::UInt64
    hHandle::Ptr{Cvoid}
    dwAddress::Int
    dwBlockSize::UInt64
    dwFlags::Culong
    dwLockCount::Culong
    dwResvd::Culong
    th32ProcessID::Culong
    th32HeapID::Int
end


mutable struct PROCESSENTRY32W
    dwSize::Culong
    cntUsage::Culong
    th32ProcessID::Culong
    th32DefaultHeapID::Int
    th32ModuleID::Culong
    cntThreads::Culong
    th32ParentProcessID::Culong
    pcPriClassBase::Culong
    dwFlags::Culong
    szExeFile::SVector{260,Cwchar_t}
end


mutable struct PROCESSENTRY32
    dwSize::Culong
    cntUsage::Culong
    th32ProcessID::Culong
    th32DefaultHeapID::Int
    th32ModuleID::Culong
    cntThreads::Culong
    th32ParentProcessID::Culong
    pcPriClassBase::Culong
    dwFlags::Culong
    szExeFile::SVector{260,Cchar}
end


mutable struct THREADENTRY32
    dwSize::Culong
    cntUsage::Culong
    th32ThreadID::Culong
    th32OwnerProcessID::Culong
    tpBasePri::Culong
    tpDeltaPri::Culong
    dwFlags::Culong
end

