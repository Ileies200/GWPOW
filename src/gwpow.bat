::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcC2OOWK/FYk47fvw++WXnkMJRus4cJvIlLGWJYA=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDJYSQ2HL1eeA6YX/Ofr0+aIpUJTXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErTXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXrZg==
::ZQ05rAF9IAHYFVzEqQIXHCt7e2Q=
::eg0/rx1wNQPfEVWB+kM9LVsJDAqWLGStA6dS7fD+jw==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIROwhdSwrCC2K0AroL+6jp5u2Ptl5dQO1/YYDOyKeLLOZz
::dhA7uBVwLU+EWHCI8Us1O1t4YCfi
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfCO5T/VOuLqrr8OLp0QYR6ITVKy7
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDJYSQ2HL1eeA6YX/Ofr082zkmIqGucnfe8=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal EnableDelayedExpansion
set "string="
echo Type Y to get the right or N to leave it out.
echo Rights you already have are not removed.
echo.
echo Note that every program you execute has the same right's like you^^!
echo.
pause
for %%i in (
  Audit#Generate_security_audits
  Security#Manage_auditing_and_security_log
  Backup#Backup_files_and_directories
  CreateSymbolicLink#Create_symbolic_links
  MachineAccount#Add_workstations_to_the_domain
  Shutdown#Shut_down_the_system
  RemoteShutdown#Force_shutdown_from_a_remote_system
  CreatePagefile#Create_a_pagefile
  IncreaseQuota#Increase_quotas
  Restore#Restore_files_and_directories
  SystemTime#Change_the_system_time
  TimeZone#Change_the_time_zone
  TakeOwnership#Take_ownership_of_files
  EnableDelegation#Enable_user_accounts_to_be_trusted_for_delegation
  Undock#Remove_computer_from_docking_station
  CreatePermanent#Create_permanent_shared_objects
  CreateToken#Create_a_token_object
  AssignPrimaryToken#Replace_a_process-level_token
  Impersonate#Impersonate_a_client_after_authentication
  IncreaseBasePriority#Increase_scheduling_priority
  Tcb#Act_as_part_of_the_operating_system
  ProfileSingleProcess#Profile_a_single_process
  LoadDriver#Load_and_unload_device_drivers
  LockMemory#Lock_pages_in_memory
  CreateGlobal#Create_global_objects
  Debug#Debug_programs
  ChangeNotify#Bypass_traverse_checking
  SyncAgent#Synch_directory_service_data
  SystemEnvironment#Edit_firmware_environment_values
  ManageVolume#Perform_volume_maintenance_tasks
  SystemProfile#Profile_system_performance
) do for /f "tokens=1,2 delims=#" %%j in ("%%i") do set k=%%k&set "k=!k:_=!"&choice /m "!k! "&if !errorlevel!==1 ntrights -u %username% +r Se%%jPrivilege
exit