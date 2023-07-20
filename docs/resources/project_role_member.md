---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "lightdash_project_role_member Resource - terraform-provider-lightdash"
subcategory: ""
description: |-
  Lightash project role member
---

# lightdash_project_role_member (Resource)

Lightash project role member



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `project_uuid` (String) Lightdash project UUID.
- `role` (String) Lightdash user's role.
- `user_uuid` (String) Lightdash user UUID.

### Optional

- `send_email` (Boolean) Send email to the user.

### Read-Only

- `email` (String, Sensitive) Lightdash user email.
- `id` (String) Resource identifier.
- `last_updated` (String) Last updated time.