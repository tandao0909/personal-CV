// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Dao Xuan Tan",
  title: "Dao Xuan Tan - CV",
  footer: context { [#emph[Dao Xuan Tan -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 16,
  ),
)


= Dao Xuan Tan

  #headline([Python Software Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
)


== Summary

Python software engineer with experience building and improving production systems across trading infrastructure and AI applications. Delivered latency improvements for an internal DSL-based backtest pipeline, built supporting scheduling, monitoring, and API components, and worked hands-on with Kafka, Postgres, Redis, Docker, and Linux. Earlier experience includes LLM\/VLM evaluation, model serving, and applied AI feature delivery.

== Education

#education-entry(
  [
    #strong[Ho Chi Minh University of Science], Mathematics and CS

    - GPA: 8.74\/10.0 (3.74\/4.0)

  ],
  [
    Ho Chi Minh City

    Oct 2022 – present

  ],
  degree-column: [
    
  ],
)

== Experience

#regular-entry(
  [
    #strong[Trading startup], Python Software Engineer

    #summary[Python, Kafka, Postgres, Redis, Docker, Linux]

    - Inherited and improved an in-house backtest pipeline built around an internally developed DSL for trading strategy evaluation

    - Reduced critical-path processing time to under 1 second by optimizing pipeline execution and data flow

    - Built and maintained data acquisition and processing components to support backtest inputs and downstream system reliability

    - Implemented commission calculation logic and overnight fee conventions using IBKR documentation as the reference standard

    - Handled backend responsibilities across scheduling, monitoring, and API development for internal platform workflows

  ],
  [
    Ho Chi Minh City

    Jan 2026 – present

    3 months

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer

    #summary[Python, FastAPI, VLM, LLM, LangChain, vLLM, PyTorch]

    - Evaluated and tested LLM and VLM outputs for accuracy, performance, and quality assurance

    - Performed model fine-tuning and dataset preparation to improve inference accuracy and reduce latency

    - Conducted comprehensive testing of AI-generated responses and implemented quality assurance protocols

    - Engineered and deployed self-hosted LLMs using FastAPI and LangChain with vLLM for optimized inference

    - Developed 3 out of 14 core AI functionalities for Fortune 500 beta user companies

  ],
  [
    Ho Chi Minh

    June 2025 – Dec 2025

    7 months

  ],
)

== Certifications

- IELTS 6.5 (2022)

- GPA 3.74\/4.0 (2022-Present)

== Skills

#strong[Programming:] Python, SQL, JavaScript, TypeScript

#strong[Data & Backend Systems:] Kafka, Postgres, Redis, REST APIs, scheduling, monitoring, Docker, Linux

#strong[Trading Infrastructure:] Backtest pipelines, internal DSL workflows, commission calculation, overnight fee conventions, IBKR references

#strong[AI\/ML Technologies:] LLM, VLM, FastAPI, LangChain, vLLM, PyTorch, model evaluation, fine-tuning, dataset preparation

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5 - Working Proficiency)
