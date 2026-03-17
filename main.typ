#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Mark LeMoine"
#let location = "Orange, CA"
#let email = "linclelinkpart5@gmail.com"
#let github = "github.com/linclelinkpart5"
// #let linkedin = "linkedin.com/in/LINKEDIN-ID"
#let phone = "+1 (562) 569-4766"
// #let personal-site = "stuxf.dev"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of California, Los Angeles",
  // location: "Los Angeles, CA",
  dates: dates-helper(start-date: "Sep 2005", end-date: "Jun 2010"),
  degree: "Bachelor's of Science, Computer Science",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true
)
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

== Work Experience

#work(
  title: "Senior Software Engineer, AI Center of Excellence (AICOE)",
  location: "Remote",
  company: "Veradigm",
  dates: dates-helper(start-date: "Apr 2024", end-date: "Present"),
)
- Productionized an API that provided patient record linking and identity matching.
- Assisted with research experiments to provide training data for parsing transcribed doctor visits.
- Rolled out new testing, staging, and prod environments for AICOE machine learning projects on Azure.
- Deployed and maintained a Streamlit dashboard to analyze and find trends in clinical trial data.
- Built out the backend and cloud infrastructure for a service that generates SOAP notes for clinicians.

#work(
  title: "Senior Software Engineer, API & Backend",
  location: "Remote",
  company: "ScienceIO",
  dates: dates-helper(start-date: "May 2021", end-date: "Apr 2024"),
)
- Developed new functionality and APIs for existing microservices, including account management, product serving, PHI redaction, and more.
- Created a new microservice to split large requests into small parallelized chunks, increasing processing throughput 3x.
- Crafted documentation and playbooks for onboarding, to help new team members set up their dev environments quickly.
- Maintained and created AWS CDK infrastructure to support all of our microservices.

#work(
  title: "Senior Software Engineer, SRE",
  location: "Remote",
  company: "CasperLabs",
  dates: dates-helper(start-date: "Oct 2020", end-date: "Apr 2021"),
)
- Automated testing of the Casper blockchain in preparation for a successful global launch.
- Maintained suites of Python tools to orchestrate real-world usage simulations on a network of blockchain nodes.
- Developed new functionality using Rust in Casper node itself, including logging and data serialization improvements.
- Created Ansible playbooks and AWS instances for large-scale test networks.

#work(
  title: "Software Engineer, Investment Systems",
  location: "Newport Beach, CA",
  company: "Research Affiliates",
  dates: dates-helper(start-date: "Feb 2017", end-date: "Apr 2020"),
)
- Developed new and refactored existing methodologies for generating financial portfolios.
- Created automated routines to perform quality control and validation of these portfolios.
- Led a team effort to create Python packages to perform financial calculations and research data lookup, both internal and open-source.
- Contributed to the team’s open-source `static-frame` library, an alternative to the Python `pandas` library that focuses on speed, immutability, and memory safety.

#work(
  title: "DevOps Engineer",
  location: "San Jose, CA",
  company: "ThreatMetrix",
  dates: dates-helper(start-date: "Jun 2014", end-date: "Dec 2016"),
)
- Deployed and updated global production API and fingerprinting applications on a regular basis.
- Monitored, repaired, and escalated emergency production issues, as part of an on-call rotation.
- Helped set up a new co-located Amsterdam data center, including physically installing server and networking hardware.
- Created an internal Django dashboard to assist with onboarding new customers and assigning them security certificates.

#work(
  title: "DevOps & Research Development Engineer",
  location: "Palo Alto, CA",
  company: "AOL/Advertising.com",
  dates: dates-helper(start-date: "Aug 2010", end-date: "Mar 2014"),
)
- Managed deployments, monitoring, and rollbacks of network-scale production ad-serving application fleets.
- Replicated production suite into a sandbox environment to facilitate testing.
- Monitored, repaired, and escalated emergency production issues, as part of an on-call rotation.
- Parallelized a legacy Python engine to optimize ad targeting for ads with sparse data.
- Developed tests to measure performance and correctness on research datasets.

== Projects

#project(
  name: "sampara",
  // URL is also optional
  url: "https://github.com/linclelinkpart5/sampara",
)
- A digital signal processing toolkit written in Rust, intended to provide fundamental building blocks for DSP projects.

#project(
  name: "tp-phase",
  // URL is also optional
  url: "https://github.com/linclelinkpart5/tp-phase",
)
- Primitive Rust types that are intended to represent intervals between 0.0 to 1.0, both inclusive and exclusive.

== Extracurricular Activities

#extracurriculars(
  activity: "Salsa & Bachata Social Dancing",
  dates: dates-helper(start-date: "Aug 2021", end-date: "Present"),
)
- Very active in the SoCal salsa and bachata social dance community.
- Volunteered as a teacher for new students in both styles.
- Travel often in my free time to dance festivals around the US.

#extracurriculars(
  activity: "Tabletop & Board Gaming",
  dates: dates-helper(start-date: "2010", end-date: "Present"),
)
- Host of several regular board game events in OC.
- Great deal of experience with teaching games to new players, regardless of the game complexity or skill level of the players.

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Programming Languages*: Python, Rust, C\#, HTML/CSS, Bash
- *Technologies*: Git, UNIX, Linux, Docker, NGINX, AWS, Azure, FastAPI, SQLalchemy, Snowflake
