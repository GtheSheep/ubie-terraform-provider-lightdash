# Copyright 2023 Ubie, inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "lightdash_project_role_member" "test_admin_user" {
  project_uuid = var.test_lightdash_project_uuid
  user_uuid    = data.lightdash_organization_member.test_admin_user.user_uuid
  role         = "admin"
}

output "lightdash_project_role_member__test_admin_user" {
  value     = lightdash_project_role_member.test_admin_user
  sensitive = true
}

resource "lightdash_project_role_member" "test_member_user" {
  count = (length(data.lightdash_organization_member.test_member_user) > 0 ? 1 : 0)

  project_uuid = var.test_lightdash_project_uuid
  user_uuid    = data.lightdash_organization_member.test_member_user[0].user_uuid
  role         = "editor"
}

output "lightdash_project_role_member__test_member_user" {
  value     = lightdash_project_role_member.test_member_user
  sensitive = true
}
