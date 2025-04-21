# Celer Media – Tracking Tag

The official tag template for Celer Media's user behavior tracking system.

## Description

This tag allows website owners to automatically load the Celer Media `tracking.js` script, which anonymously tracks user interactions such as clicks, scroll depth, device information, and time spent on site. All data is sent securely and anonymously to the Celer Media DMP platform via a user-defined endpoint.

## Features

- Tracks user interactions (clicks, scroll, time on page)
- Detects device, browser, language, and screen size
- Sends data anonymously using `navigator.sendBeacon`
- 100% compliant with GDPR and other privacy laws
- Fully compatible with GTM and BigQuery

## Setup

1. Add the tag from the GTM Template Gallery
2. Provide your custom endpoint (provided by Celer Media)
3. Set the tag to trigger on All Pages or where needed

## Privacy

This tag collects only anonymized behavioral data. No personal data like email, name, or IP address is collected.

For more information, visit: [https://celermediagroup.com](https://celermediagroup.com)
