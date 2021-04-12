#!powershell

# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)

#Requires -Module Ansible.ModuleUtils.Legacy
#Requires -Module Ansible.ModuleUtils.Backup


## initialize ansible parameters (user inputs)
# The user inputs here reflect the inputs given in ansible original replace module

$path = Get-AnsibleParam -obj $params -name "path" -type "path" -failifempty $true -aliases "dest","destfile","name";
$regexp = Get-AnsibleParam -obj $params -name "regex" -type "str" -aliases "regex";