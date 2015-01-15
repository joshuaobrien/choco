﻿# Copyright 2011 - Present RealDimensions Software, LLC & original authors/contributors from https://github.com/chocolatey/chocolatey
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function Write-ChocolateyFailure {
param(
  [string] $packageName,
  [string] $failureMessage
)
  Write-Warning "Write-ChocolateyFailure is deprecated. If you are the package maintainer, please use 'throw `$_.Exception' instead."
    
  $errorMessage = "$packageName did not finish successfully. Boo to the chocolatey gods!
  $failureMessage"
  $error | %{ $_.Exception | fl * | Out-String }
  #throw $errorMessage
}
