// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Dao Xuan Tan",
  footer: context { [#emph[Dao Xuan Tan -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Jan 2026] ],
  locale-catalog-language: "en",
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
    month: 1,
    day: 8,
  ),
)


= Dao Xuan Tan

  #headline([AI Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
)


== Summary

Native Vietnamese speaker with working proficiency in English. Data Science graduate with hands-on experience in AI model development, evaluation, and testing. Proficient in LLM and Vision-Language Model (VLM) technologies with expertise in model fine-tuning, dataset preparation, and quality assurance. Strong foundation in Python, PyTorch, and modern AI frameworks.

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
    #strong[AcamarAI], AI Engineer

    #summary[Python, FastAPI, VLM, LLM, LangChain, vLLM, PyTorch]

    - Evaluated and tested LLM and VLM (Vision-Language Model) outputs for accuracy, performance, and quality assurance

    - Performed model fine-tuning and dataset preparation to improve inference accuracy and reduce latency

    - Conducted comprehensive testing of AI-generated responses and implemented quality assurance protocols

    - Engineered and deployed self-hosted LLMs using FastAPI and LangChain with vLLM for optimized inference

    - Developed 3 out of 14 core AI functionalities for Fortune 500 beta user companies

  ],
  [
    Ho Chi Minh

    June 2025 – present

    8 months

  ],
)

#regular-entry(
  [
    #strong[EyeCodeTech], Fullstack Developer

    #summary[TypeScript, JavaScript, Python, ReactJS, Django, MongoDB, NextJS]

    - Conducted code reviews to ensure code quality, maintainability, and adherence to best practices

    - Implemented real-time audio and video processing pipeline for IELTS speaking assessment module

    - Built scoring logic and evaluation algorithms for spoken language assessment

    - Solely responsible for full-stack development of mock IELTS speaking module with UI, camera\/microphone input, and scoring

    - Designed database schema and backend APIs using MongoDB for secure data management

  ],
  [
    Ho Chi Minh

    Apr 2025 – June 2025

    3 months

  ],
)

== Certifications

- IELTS 6.5 (2022)

- GPA 3.74\/4.0 (2022-Present)

== Skills

#strong[AI Training & Evaluation:] Model evaluation, fine-tuning, dataset preparation, QA testing, prompt engineering, VLM\/LLM assessment

#strong[AI\/ML Technologies:] LLM, VLM (Vision-Language Models), RAG, LangChain, vLLM, PyTorch

#strong[Programming:] Python, TypeScript, JavaScript

#strong[Web & APIs:] FastAPI, Django, ReactJS, NextJS

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5 - Working Proficiency)
