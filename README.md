# guidelines

> **Deprecated (2026-10-23). Do not use or copy anything from this repository.** It will be archived.

This repository held an early Apex template (`Templates - APEX/TemplateInvocable.cls` and its test).
It is superseded:

- **Apex class templates** (invocable, collection invocable, selector, batch, queueable, finalizer,
  scheduler, callout, controller, REST resource, exception, status-code constants) are the assets of
  the `sf-apex-scaffold` skill, maintained in `k1-ai-context` and shipped with the K1 Salesforce
  development template (`k1-template-sf-development`). The invocable there follows the K1 contract
  (CLS-R32 to CLS-R35): status codes from the catalogue, error handling per request, logging, and
  the method never throws. The copy here does none of that.
- **K1 guidelines** are in `k1-ai-context` and are copied into every project as `docs/guidelines/`.
- **Shared Salesforce source that projects use as is** (for example the test data factory) is in
  `kreis-1/k1-sf-templates`.
