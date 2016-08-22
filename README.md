# PowershellModuleInstallerTemplate
Visual Studio template for creating Wix projects for PowerShell module installation 

Instructions:
  1. Install the Wix toolset from: http://wixtoolset.org 
  2. Download the .msi from this repo: 
  3. Run the installer to install the template
  4. Make sure the module is installed in you C:\Program Files\WindowsPowerShell\Modules folder. (The idea is that it is probably there already if you have been developing it)
  5. Create a new project using the "PowerShellModuleInstaller" template in the "Windows Installer XML" template group
  6. Name the project with then name of the PowerShell module
  7. Build the "Release" configuration.
