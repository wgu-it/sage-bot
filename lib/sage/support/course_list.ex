defmodule Sage.Support.CourseList do
  @moduledoc """
  The list of courses for IT programs with their names and descriptions.
  Please keep these in alphanumeric ascending order.
  """

  @courses %{
    "C100" => [
      name: "Introduction to Humanities",
      desc: "This introductory humanities course allows students to practice essential writing, communication, and critical thinking skills necessary to engage in civic and professional interactions as mature, informed adults. Whether through studying literature, visual and performing arts, or philosophy, all humanities courses stress the need to form reasoned, analytical, and articulate responses to cultural and creative works. Studying a wide variety of creative works allows students to more effectively enter the global community with a broad and enlightened perspective"
    ],
    "C132" => [
      name: "Elements of Effective Communication",
      desc: "This course introduces learners to elements of communication that are valued in college and beyond. Materials are based on five principles: being aware of communication with yourself and others; using and interpreting verbal messages effectively; using and interpreting nonverbal messages effectively; listening and responding thoughtfully to others, and adapting messages to others appropriately"
    ],
    "C164" => [
      name: "Introduction to Physics",
      desc: "This course provides students with a comprehensive overview of the basic principles and unifying concepts of physics and integrate conceptual knowledge with practical and laboratory skills."
    ],
    "C165" => [
      name: "Integrated Physical Science",
      desc: "This course provides students with an overview of the basic principles and unifying ideas of the physical sciences: physics, chemistry, and Earth sciences. Course materials focus on scientific reasoning and practical and everyday applications of physical science concepts to help students integrate conceptual knowledge with practical skills."
    ],
    "C168" => [
      name: "Critical Thinking and Logic",
      desc: "Reasoning and Problem Solving helps students internalize a systematic process for exploring issues that takes them beyond an unexamined point of view and encourages them to become more self-aware thinkers by applying principles of problem identification and clarification, planning and information gathering, identifying assumptions and values, analysis and interpretation of information and data, reaching well-founded conclusions, and identifying the role of critical thinking in the disciplines and professions."
    ],
    "C169" => [
      name: "Scripting and Programming - Applications",
      desc: "This course provides an introduction to programming. It covers data structures, algorithms, and programming paradigms. It presents the concept of an object as well as the object-oriented paradigm and its importance. A survey of languages is covered and the distinction between interpreted and compiled languages is introduced."
    ],
    "C170" => [
      name: "Data Management - Applications",
      desc: "This course covers conceptual data modeling and provides an introduction to MySQL. Students will learn how to create simple to complex SELECT queries including subqueries and joins, and will also learn how to use SQL to update and delete data. Topics covered in this course include exposure to MySQL; developing physical schemas; creating and modifying databases, tables, views, foreign keys/primary keys (FKs/PKs), and indexes; populating tables; and developing simple Select-From-Where (SFW) queries to complex 3+ table join queries."
    ],
    "C172" => [
      name: "Network and Security - Foundations",
      desc: "This course introduces students to the components of a computer network and the concept and role of communication protocols. The course will cover widely used categorical classifications of networks (i.e CAN, LAN, MAN, WAN) as well as network topologies, physical devices, and layered abstraction. The course will also introduce students to basic concepts of security, covering vulnerabilities of networks and mitigation techniques, security of physical media, and security policies and procedures."
    ],
    "C173" => [
      name: "Scripting and Programming - Foundations",
      desc: "This course provides an introduction to programming covering data structures, algorithms, and programming paradigms. The course presents the student with the concept of an object as well as the object-oriented paradigm and its importance. A survey of languages is covered and the distinction between interpreted and compiled languages is introduced."
    ],
    "C175" => [
      name: "Data Management - Foundations",
      desc: "This course introduces students to the concepts and terminology used in the field of data management. They will be introduced to Structured Query Language (SQL) and will learn how to use Data Definition Language (DDL) and Data Manipulation Language (DML) commands to define, retrieve, and manipulate data. This course covers differentiations of data—structured vs. unstructured and quasi-structured (relational, hierarchical, XML, textual, visual, etc); it also covers aspects of data management (quality, policy, storage methodologies). Foundational concepts of data security are included."
    ],
    "C176" => [
      name: "Business of IT - Project Management",
      desc: "This course introduces the student to the project management & business analysis process within the context of an IT project. Fundamental concepts of project management will be covered including all phase of project management during a system life cycle including business analysis, requirements capturing, issue tracking, and release planning. Additional topics to include: development environments (dev, integration, QA, production), help desk and support, IT planning for business continuity. This course prepares students for the following certification exam: CompTIA Project+."
    ],
    "C178" => [
      name: "Network and Security - Applications",
      desc: "This course prepares students for the following certification exam: CompTIA Security+."
    ],
    "C179" => [
      name: "Business of IT - Applications",
      desc: "This course introduces IT students to information systems (IS). The course includes important topics related to management of information systems (MIS), such as system development, and business continuity. The course also provides an overview of management tools and issue tracking systems."
    ],
    "C182" => [
      name: "Introduction to IT",
      desc: "This course introduces students to information technology as a discipline and the various roles and functions of the IT department as business support. Students are presented with various IT disciplines including systems and services, network and security, scripting and programming, data management, and business of IT, with a survey of technologies in every area and how they relate to each other and to the business."
    ],
    "C183" => [
      name: "Operating Systems",
      desc: "Students will master installation, configuration, and troubleshooting for one of the world's leading operating systems: Windows 8.1"
    ],
    "C184" => [
      name: "Operating Systems Management Policies",
      desc: "This course prepares a student to install and upgrade to Windows 8.1, support resource access and maintain Windows clients and devices."
    ],
    "C185" => [
      name: "Network Policies and Services Management",
      desc: "This course prepares students for the following certification exam: MCSA: Installing and Configuring Windows Server."
    ],
    "C186" => [
      name: "Server Administration",
      desc: "This course prepares students for the following certification exam: MCSA: Administering Windows Server."
    ],
    "C187" => [
      name: "Network Reliability and Fault Tolerance - 70-412 Configuring Advanced Windows Server 2012 Services exam",
      desc: "This course prepares a student to successfully pass the 70-412 Configuring Advanced Windows Server 2012 Services exam."
    ],
    "C188" => [
      name: "Software Engineering",
      desc: "This course introduces the concepts of software engineering to IT core graduates. It is a standalone course that is critical to the IT program. It emphasizes the need for a disciplined approach to software engineering by providing an overview of software and software engineering processes and why they are challenging. A generic process framework is covered to provide the groundwork for formal process models. Prescriptive process models (e.g., Waterfall Model) and Agile Development is included. An introduction to the"
    ],
    "C189" => [
      name: "Data Structures",
      desc: "Students will learn the fundamentals of dynamic data structures, such as bags, lists, stacks, queues, trees, hash tables, and their associated algorithms, using object-oriented design and abstract data types as a design paradigm. The course emphasizes problem solving and techniques applied to the design of efficient, maintainable software applications. Students will implement simple applications using the techniques learned."
    ],
    "C190" => [
      name: "Introduction to Biology",
      desc: "This course is a foundational introduction to the biological sciences. The overarching theories of life from biological research are explored as well as the fundamental concepts and principles of the study of living organisms and their interaction with the environment. Key concepts include how living organisms use and produce energy; how life grows, develops, and reproduces; how life responds to the environment to maintain internal stability; and how life evolves and adapts to the environment"
    ],
    "C191" => [
      name: "Operating Systems for Programmers",
      desc: "This course covers operating systems from the perspective of a programmer including the placement of the operating system in the layered application development model. Primarily OSs provide Memory Management, Task Scheduling, and CPU allocation. Secondarily, OSs provide tools for file storage/access, permission control, event handling, network access, and cross-process interaction. OSs also provide tools for debugging problems within a single process or within groups of programs."
    ],
    "C192" => [
      name: "Data Management for Programmers",
      desc: "This course introduces storage of various kinds and formats of data. Students will use standard SQL to demonstrate query capabilities provided by database management systems. The course will further cover data-related topics: data presentation, security (access and encryption), transaction management, and administration (backup, disaster recovery, and performance tuning). This course will address advanced topics such as data warehousing, data mining and distributed databases."
    ],
    "C193" => [
      name: "Client-Server Application Development",
      desc: "This course introduces students to client/server application programming classes, structures, and concepts. The course covers networking and client/server, streams, threads, URLs, URIs, HTTP, and socket programming concepts."
    ],
    "C195" => [
      name: "Software II - Advanced Java Concepts",
      desc: "Software II – Advanced Java Concepts refines object-oriented programming expertise and builds database and file server application development skills. You will learn about and put into action lambda expressions, collections, input/output, advanced error handling, and the newest features of Java 8 to develop software that meets business requirements. This course requires intermediate expertise in object-oriented programming and the Java language."
    ],
    "C196" => [
      name: "Mobile Application Development",
      desc: "This course introduces students to programming for mobile devices using a Software Development Kit (SDK). Students with previous knowledge of programming will learn how to install and utilize a SDK, build a basic mobile application, build a mobile applications using a graphical user interface(GUI), adapt applications to different mobile devices, save data, execute and debug mobile applications using emulators, and deploy a mobile application."
    ],
    "C200" => [
      name: "Managing Organizations and Leading People",
      desc: "This course covers principles of effective management and leadership that maximize organizational performance. The following topics are included: the role and functions of a manager, analysis of personal leadership styles, approaches to selfawareness and self-assessment, and application of foundational leadership and decision-making skills."
    ],
    "C202" => [
      name: "Managing Human Capital",
      desc: "This course focuses on strategies and tools that managers use to maximize employee contribution and create organizational excellence. Students will learn talent management strategies to motivate and develop employees as well as best practices to manage performance for added value. "
    ],
    "C206" => [
      name: "Ethical Leadership",
      desc: "This course examines the ethical issues and dilemmas managers face. This course provides a framework for analysis of management-related ethical issues and decision-making action required for satisfactory resolution of these issues. "
    ],
    "C207" => [
      name: "Data-Driven Decision Making",
      desc: "This course presents critical problem-solving methodologies, including field research and data collection methods that enhance organizational performance. Topics include quantitative analysis, statistical and quality tools. Students will improve their ability to use data to make informed decisions"
    ],
    "C211" => [
      name: "Global Economics for Managers",
      desc: "This course examines how economic tools, techniques, and indicators can be used for solving organizational problems related to competitiveness, productivity, and growth. Students will explore the management implications of a variety of economic concepts and effective strategies to make decisions within a global context."
    ],
    "C212" => [
      name: "Marketing",
      desc: "This course will focus on the marketing function and its impact on the overall success of an organization. Topics include consumer behavior, marketing theories and strategies, product positioning, the competitive environment, and effectiveness of the marketing function. A key element of the course will include the relationship of the “marketing mix” to strategic planning. "
    ],
    "C213" => [
      name: "Accounting for Decision Makers",
      desc: "This course provides accounting knowledge and skills to assess and manage a business. Topics include the accounting cycle, financial statements, taxes, and budgeting. Students will improve their ability to understand reports and use accounting information to plan and make sound business decisions."
    ],
    "C214" => [
      name: "Financial Management",
      desc: "This course covers practical approaches to analysis and decisionmaking in the administration of corporate funds, including capital budgeting, working capital management, and cost of capital. Topics include financial planning, management of working capital, analysis of investment opportunities, sources of long-term financing, government regulation, and global influences. Students will improve their ability to interpret financial statements and manage corporate finances."
    ],
    "C218" => [
      name: "MBA, Information Technology Management Capstone",
      desc: "This course is the culminating assessment of the MBA, IT Management curriculum and focuses on strategic management while allowing for the synthesis of previous assessment topics. Students will work in teams of three or four students to simulate running a business. One unique aspect of the simulation is that there are scheduled dates each week for simulation decisions. Since all teams are required to meet the deadlines and work at the same pace this aspect of the assessment cannot be accelerated. "
    ],
    "C220" => [
      name: "Operating Systems I",
      desc: "This course prepares students for Linux + Part 1 LX0-101 certification."
    ],
    "C221" => [
      name: "Operating Systems II",
      desc: "This course prepares the student for vendor assessment CompTIA Linux + Part 2 LX0-102."
    ],
    "C246" => [
      name: "Fundamentals of Interconnecting Network Devices",
      desc: "This course prepares students for the Cisco CCENT certification exam, Interconnecting Cisco Networking Devices Part I (ICND1). This is also the first of two exams that lead to Cisco Certified Networking Associate (CCNA) certification."
    ],
    "C247" => [
      name: "Interconnecting Network Devices",
      desc: "This course prepares students for the second Cisco CCNA certification exam, Interconnecting Cisco Networking Devices Part 2 (ICND2)."
    ],
    "C255" => [
      name: "Introduction to Geography",
      desc: "This course will discuss geographic concepts, places and regions, physical and human systems and the environment"
    ],
    "C268" => [
      name: "Spreadsheets",
      desc: "The Spreadsheets course will help students become proficient in using spreadsheets to analyze business problems. Students will demonstrate competency in spreadsheet development and analysis for business/accounting applications (e.g., using essential spreadsheet functions, formulas, charts, etc.)"
    ],
    "C278" => [
      name: "College Algebra",
      desc: "This course provides a detailed exploration into basic algebraic concepts and functions and their use in describing, interpreting, and modeling real-world situations. Topics include: real numbers, algebraic expressions, equations and inequalities, graphs and functions, polynomial and rational functions, exponential and logarithmic functions, and linear systems of equations."
    ],
    "C298" => [
      name: "Web Programming",
      desc: "This course focuses: on applying characteristics and features of web programming languages; creating, modifying, and utilizing variables and data; decision structures; understanding functions, methods, properties, and vents; client side web programming language; custom web programming language objects; controlling windows in a web programming language."
    ],
    "C299" => [
      name: "Designing Customized Security - CCNA Security",
      desc: "Designing Customized Security outlines the sequence of learning activities to help students develop competence in the subject area of securing networks, which deals specifically with Cisco networks. It prepares students for the Cisco 640-553 IINS certification exam."
    ],
    "C376" => [
      name: "Web Development Fundamentals",
      desc: "These courses introduce the fundamentals of web development, which will enable the student to design, develop, and deploy a website. Students will create web content using HTML 5 and gain the knowledge to style and create layouts using Cascading Style Sheets (CSS). Students will also learn how to host and upload a website to a free web server."
    ],
    "C389" => [
      name: "Science, Technology, and Society",
      desc: "This course engages students in the study of the nature, processes, and applications of science and technology and arms them with the knowledge and skills necessary to understand explain important science concepts. The course addresses the historical evolution of scientific ideas, scientific inquiry, as well as how science is used to inform decision making on current issues."
    ],
    "C391" => [
      name: "MS, Information Technology Management Capstone Written Project",
      desc: "Students will be able to choose from three areas of emphasis, depending on personal and professional interests. Students will complete a capstone project that deals with a significant real-world business problem that further integrates the components of the degree. Capstone projects will require an oral defense before a committee of WGU faculty."
    ],
    "C392" => [
      name: "MS, Information Technology Management Capstone Oral Defense",
      desc: "The final Master's exam will be a comprehensive oral"
    ],
    "C393" => [
      name: "IT Foundations",
      desc: "IT Foundations is the first course in a two-part series preparatory for the CompTIA A+ exam, Part I. Students will gain an understanding of personal computer components and their functions in a desktop system, as well as computer data storage and retrieval; classifying, installing, configuring, optimizing, upgrading, and troubleshooting printers, laptops, portable devices, operating systems, networks, and system security; recommending appropriate tools, diagnostic procedures, preventative maintenance and troubleshooting techniques for personal computer components in a desktop system; strategies for identifying, preventing, and reporting safety hazards and environmental/human accidents in"
    ],
    "C394" => [
      name: "IT Applications",
      desc: "IT Applications is a continuation of the IT Foundations course preparatory for the CompTIA A+ exam, Part II. Students will gain an understanding of personal computer components and their functions in a desktop system. Also covered is computer data storage and retrieval, including classifying, installing, configuring, optimizing, upgrading, and troubleshooting printers, laptops, portable devices, operating systems, networks, and system security. Other areas include recommending appropriate tools, diagnostic procedures, preventative maintenance and troubleshooting techniques for personal computer components in a desktop system. The course then finished with strategies for identifying, preventing, and reporting safety hazards and environmental/human accidents in a technological environments, and effective communication with colleagues and clients as well as job-related professional behavior."
    ],
    "C434" => [
      name: "Medical Terminology",
      desc: "This course focuses on the anatomy of word building and medical terminology as it relates to body organization and directional terms, the integumentary system, special senses of the eye and ear, the musculoskeletal system, the digestive system, blood, lymphatic, immunity and infections, cardiovascular and respiratory systems, nervous system and mental health, urinary system, endocrine system, male and female reproductive systems, and cancer."
    ],
    "C435" => [
      name: "Technical Writing",
      desc: "This course covers basic elements of technical writing, including research and professional written communication proficiency; the ability to think about and write for different audiences; and technical style, grammar, and syntax proficiency."
    ],
    "C436" => [
      name: "IT Capstone Written Project",
      desc: "The capstone project consists of a technical work product and a report that details various aspects of the product. The final product will also include a journal that contemporaneously describes the candidate’s experience in developing the capstone. The topic of the capstone must be presented and approved by the student’s mentor."
    ],
    "C451" => [
      name: "Integrated Natural Science",
      desc: "This course will strengthen the ability to discern between scientific and random claims. Students will become comfortable in understanding basic, everyday occurrences relative to physics and chemistry. Additionally, they will gain knowledge about structural elements of the earth, naturally occurring geological and atmospheric events, and the planet's relationship to other celestial objects"
    ],
    "C455" => [
      name: "English Composition I",
      desc: "This course introduces learners to the types of writing and thinking that is valued in college and beyond. Students will practice writing in several genres and several media, with emphasis placed on writing and revising academic arguments"
    ],
    "C456" => [
      name: "English Composition II",
      desc: "This course introduces learners to research writing and thinking that are valued in college and beyond. The Composition II courseat WGU should be seen as a foundational course designed to help undergraduate students build fundamental skills for ongoing development in writing and research. Students will complete an academic research paper."
    ],
    "C457" => [
      name: "Foundations of College Mathematics",
      desc: "This course focuses on basic numeracy and calculation skills, basic algebra skills, basic geometry principles, and basic data and probability skills"
    ],
    "C459" => [
      name: "Introduction to Probability and Statistics",
      desc: "In this course, candidates demonstrate competency in the basic concepts, logic, and issues involved in statistical reasoning. Topics include summarizing and analyzing data, sampling and study design, and probability"
    ],
    "C463" => [
      name: "Intermediate Algebra",
      desc: "This course provides an introduction of algebraic concepts and the development of the essential groundwork for College Algebra. Topics include: A review of basic mathematical skills, the real number system, algebraic expressions, linear equations, graphing, exponents and polynomials."
    ],
    "C464" => [
      name: "Introduction to Communication",
      desc: "This introductory communication course allows students to become familiar with the fundamental communication theories and practices necessary to engage in healthy professional and personal relationships. Students will survey human communication on multiple levels and critically apply the theoretical grounding of the course to interpersonal, intercultural, small group, and public presentational contexts. The course also encourages students to consider the influence of language, perception, culture, and media on their daily communicative interactions. In addition to theory, students will engage in the application of effective communication skills through systematically preparing and delivering an oral presentation. By practicing these fundamental skills in human communication, students become more competent communicators as they develop more flexible, useful, and discriminatory communicative practices in a variety of contexts"
    ],
    "C479" => [
      name: "Web Technologies",
      desc: "Web Technologies focuses on: using and updating web client software; web page creation and programming languages; dynamic web page fundamentals: e-commerce infrastructure; and identifying suspicious network activity and selecting the appropriate strategy to counter it. This course prepares students for the following certification exam: CIW Web Design Specialist."
    ],
    "C480" => [
      name: "Networks",
      desc: "Networks focuses on: network topologies including: protocols, ports, addressing schemes, routing, and wireless communication standards; physical and logical topologies, including wiring standards; differentiating, installing, and configuring network devices; and troubleshooting network connectivity. This course prepares students for the following certification exam: CompTIA Network+."
    ],
    "C482" => [
      name: "Software I",
      desc: "Software I builds object-oriented programming expertise and introduces powerful new tools for Java application development. You will learn about and put into action class design, exception handling, and other object-oriented principles and constructs to develop software that meets business requirements. This course requires foundational knowledge of object-oriented programming and the Java language."
      ],
    "C483" => [
      name: "Principles of Management",
      desc: "In this course students will learn about strategic planning, total quality, entrepreneurship, conflict and change, human resource management, diversity, and organizational structure."
    ],
    "C484" => [
      name: "Organizational Behavior and Leadership",
      desc: "This course explores how to lead and manage effectively in diverse business environments. Students are asked to demonstrate the ability to apply organizational leadership theories and management strategies in a series of scenario-based problems."
    ],
    "C498" => [
      name: "MS, Information Technology Management Capstone",
      desc: "The MSITM Capstone Project allows the student to demonstrate their application of the academic and professional abilities developed as a graduate student. The Capstone challenges students to integrate skills and knowledge of several domains in the program into one project."
    ],
    "C683" => [
      name: "Natural Science Lab",
      desc: "This course gives you an introduction to using the scientific method and engaging in scientific research to reach conclusions about the natural world. You will design and carry out an experiment to investigate a hypothesis by gathering quantitative data."
    ],
    "C688" => [
      name: "Cyber Warfare",
      desc: "This course introduces you to the real-world battlefield of cyberspace. It covers the history of cyberwarfare and the variety of new concerns its emergence has fostered. This course explores how cyberwarfare has become an important part of the modern military arsenal and provides strategies for protecting a threatened network, as well as strategies for dealing with specific cyber war actors and threats. It then concludes with an exploration of the future of cyberwarfare considering the evolution of cyber-related capabilities, current threats, and emerging technology"
    ],
    "C697" => [
      name: "Operating Systems I",
      desc: "This course prepares students for the following certification exam: CompTIA Linux+ Part I."
    ],
    "C698" => [
      name: "Operating Systems II",
      desc: "This course prepares students for the following certification exam: CompTIA Linux+ Part II."
    ],
    "C700" => [
      name: "Secure Network Design",
      desc: "This course provides an in-depth look at organizational challenges and threats to networks that are connected to the public Internet. Network security will be discussed in the context of how hackers gain access to networks and the use of Firewalls and VPNs to provide security countermeasures. Also covered are methods and technologies to prepare the student to disarm threats, plan for emerging technologies and future attacks."
    ],
    "C701" => [
      name: "Ethical Hacking - EC-CEH",
      desc: "Learner competence will be assessed through the EC-Council Certified Ethical Hacker Exam 312-50 for this course. Topics will include how to expose system vulnerabilities and learn solutions for eliminating and/or preventing vulnerabilities; and how to apply hacking skills on different types of networks and platforms."
    ],
    "C702" => [
      name: "Forensics and Network Intrusion - EC-CHFI",
      desc: "This course focuses on identifying vulnerabilities and neutralizing threats from outside entities and on investigating and preventing lose in the cyber-domain."
    ],
    "C706" => [
      name: "Secure Software Design",
      desc: "This course provides students with a practical guide to establishing proactive software security. The course focuses on analyzing risks, understanding likely points of attack and proactively deciding how software will handle attacks of the future. By looking at the systemic threats in any deployment environment and discussing vulnerabilities of various applications, this course shows the student how to construct software that can deal with both known and unknown attacks preemptively."
    ],
    "C740" => [
      name: "Fundamentals of Data Analytics",
      desc: "This courses provides an introduction to a variety of tools and techniques used in the field of data analytics. Students will summarize data, review statistical models, explore data mining techniques, and contemplate ethical considerations associated with the field of data analytics. This course presents a survey of concepts which will be explored more in-depth in subsequent courses in the MS Data Analytics program. "
    ],
    "C741" => [
      name: "Statistics for Data Analysis",
      desc: "This course covers a broad range of statistical techniques and methods applied in real-world settings. Topics presented include inferential, parametric and non-parametric statistics, as well as regression analysis and analysis of variance. "
    ],
    "C742" => [
      name: "Data Science Tools and Techniques",
      desc: "This course covers data science tools and techniques to perform data wrangling and exploration. You will be introduced to programming languages and web scraping tools along with machine learning models"
    ],
    "C743" => [
      name: "Data Mining and Analytics I",
      desc: "This course is an introduction to data mining and exploratory data analysis, including text and web mining. Topics include the use of data exploration methods to prepare data, familiarization with commercial data types commonly used for data mining, the use of statistical and data mining software, including R, SAS and SPSS, and the comparison and classification of data mining methods."
    ],
    "C744" => [
      name: "Data Mining and Analytics II",
      desc: "This course examines the application of descriptive and predictive data mining techniques to reveal information within a mass of data. Techniques include factor analysis, cluster analysis, classification methods, and neural networks to limit human subjectivity in decision making processes."
    ],
    "C745" => [
      name: "Advanced Data Visualization",
      desc: "The focus of this course is visualizing and telling stories with data. This course begins with a description of the growth of data and visualization in industry, news, and government. Actual human stories will be reviewed from a data-statistical perspective. The creation of graphs, displays and geospatial data presentations to communicate information supporting decision making while implementing best practices for effective storytelling will be examined."
    ],
    "C746" => [
      name: "Advanced SQL - Oracle SQL Certified Expert",
      desc: "This course prepares the student for the Oracle SQL Expert Certification (1Z0-047). Students will master the SQL language to restrict and sort data, manage data, objects and tables, create schema objects, and control user access."
    ],
    "C747" => [
      name: "SAS Programming I: Fundamentals - SAS Base Programmer",
      desc: "This course prepares the student for the Base Programmer for SAS 9 Certification (A00-211). Students will achieve competencies in SAS programming that will allow them to import and export raw data files, manipulate and transform data, combine SAS data sets, identify and correct syntax errors, and write SAS code on the SAS platform."
    ],
    "C748" => [
      name: "SAS Programming II: Business Analytics Applications - SAS Statistical Business Analyst",
      desc: "This course prepares the student for the SAS Statistical Business Analyst for SAS 9 Certification (A00-240). Students will gain competency to conduct, interpret, and present complex statistical data analysis in the SAS platform."
    ],
    "C749" => [
      name: "Introduction to Data Science",
      desc: "This Introduction to Data Science course introduces the data analysis process and common statistical techniques necessary for the analysis of data. Students will ask questions that can be solved with a given data set, set up experiments, use statistics and data wrangling to test hypotheses, find ways to speed up their data analysis code, make their data set easier to access, and communicate their findings"
    ],
    "C750" => [
      name: "Data Wrangling with MongoDB",
      desc: "This course elaborates on concepts covered in Introduction to Data Science, helping to develop skills crucial to the field of data science and analysis. It explores how to wrangle data from diverse sources and shape it to enable data-driven applications— a common activity in many data scientists' routine. Topics covered include gathering and extracting data from widely-used data formats, assessing the quality of data, and exploring best practices for data cleaning. This course also introduces MongoDB, covering the essentials of storing data and the MongoDB query language together with exploratory analysis using the MongoDB aggregation framework."
    ],
    "C751" => [
      name: "Data Analysis with R",
      desc: "This course focuses on exploratory data analysis (EDA) utilizing R. EDA is an approach for summarizing and visualizing the important characteristics of a data set. Exploratory data analysis focuses on exploring data to understand the data’s underlying structure and variables to develop intuition about the data set, to consider how that data set came into existence, and to decide how it can be investigated with more formal statistical methods."
    ],
    "C752" => [
      name: "Data Visualization",
      desc: "This course covers the application of design principles, human perception, color theory, and effective storytelling in the context of data visualization. It addresses presenting data to others, facilitating aspirations to be an analyst or data scientist, and advancing technology with visualization tools. Additionally, this course focuses on how to visually encode and present data to an audience."
    ],
    "C753" => [
      name: "Machine Learning",
      desc: "This course presents the end-to-end process of investigating data through a machine learning lens. Topics covered include: techniques for extracting data, identifying useful features that best represent data, a survey of commonly-used machine learning algorithms, and methods for evaluating the performance of machine learning algorithms"
    ],
    "C754" => [
      name: "Structured Query Language - Oracle DB 12c SQL Fundamentals",
      desc: "This course focuses on structured query language (SQL). It starts with a review of the basic statements and continues on to the creation of complex queries that affect multiple tables and utilize SQL functions. Data manipulation language (DML) and data definition language (DDL) are also covered, thus enabling the student to create and maintain database objects and modify data by using SQL commands"
    ],
    "C755" => [
      name: "Database Server Administration - Oracle DB 12c Installation and Administration",
      desc: "This course covers the installation, configuration, and administration of database servers. Students will be introduced to all the logical and physical components of a database server and learn to set up a server in a network environment. Tools and strategies for access and space management will be covered, as well as backup, restoration, and upgrade techniques."
    ],
    "C756" => [
      name: "Data Analytics - CIW Data Analyst",
      desc: "This course covers the most common tools, techniques, and procedures involved in data analytics. Students will review all the disciplines involved with data analytics learned in previous courses and get a better understanding of how they all relate to one another."
    ],
    "C768" => [
      name: "Technical Communication",
      desc: "This course covers basic elements of technical communication, including professional written communication proficiency; the ability to strategize approaches for differing audiences; and technical style, grammar, and syntax proficiency."
    ],
    "C769" => [
      name: "IT Capstone Written Project",
      desc: "The capstone project consists of a technical work product and a report that details various aspects of the product. The final product will also include a journal that contemporaneously describes the candidate’s experience in developing the capstone. The topic of the capstone must be presented and approved by the student’s mentor."
    ],
    "C772" => [
      name: "Data Analytics Graduate Capstone",
      desc: "The Data Analytics Graduate Capstone course allows the student to demonstrate their application of the academic and professional abilities developed as a graduate student. The capstone challenges students to integrate skills and knowledge from several program domains into one project."
    ],
    "C773" => [
      name: "User Interface Design",
      desc: "This course prepares you for the CIW User Interface Designer certification. This course assumes an existing knowledge of HTML5 (Hypertext Markup Language) and CSS (cascading stylesheets) and covers material such as web design principles, typography, wireframing, and SEO."
    ],
    "C777" => [
      name: "Web Development Applications",
      desc: "This course prepares students for the CIW Advanced HTML5 and CSS3 Specialist certification exam. This course builds upon a student's manual coding skills by teaching how to develop web documents and pages using the Web Development Trifecta: HTML5 (Hypertext Markup Language version 5) and CSS3 (Cascading Style Sheets version 3) and JavaScript. Students will utilize the skills learned in this course to create web documents and pages that easily adapt to display on both traditional and mobile devices. In addition, students will learn techniques for code validation and testing, form creation, inline form field validation, and mobile design for browsers and apps, including Responsive Web Design (RWD)"
    ],
    "C779" => [
      name: "Web Development Foundations - CIW Site Development Fundamentals",
      desc: "This course introduces students to web design and development by presenting them with HTML5 and CSS, the foundational languages of the web, by reviewing media strategies, and by using tools and techniques commonly employed in web development."
    ],
    "C836" => [
      name: "Fundamentals of Information Security",
      desc: "This course lays the foundation for understanding terminology, principles, processes and best practices of information security at local and global levels. It further provides an overview of basic security vulnerabilities and countermeasures for protecting information assets through planning and administrative controls within an organization. ",
    ],
    "C837" => [
      name: "Managing Web Security - CIW WSA",
      desc: "Almost all businesses and organizations require a web presence. The security needs, demands, and defenses for these online environments differ from those of an isolated single computer or intranet. This course introduces best practices for preventing security breaches by applying web security protocols, firewalls, and system configurations. This course prepares students for the Web Security Associate (CIW WSA) certification exam",
    ],
    "C838" => [
      name: "Managing Cloud Security - ISC2 CCSP",
      desc: "Many of today’s companies and organizations have outsourced data management, availability, and operational processes through cloud computing. In this course, students design solutions for cloud-based platforms and operations that maintain data availability while protecting the confidentiality and integrity of information. This includes security controls, disaster recovery plans, and continuity management plans that address physical, logical, and human factors. This course prepares students for the Certified Cloud Security Professional (ISC2 CCSP) certification exam.",
    ],
    "C839" => [
      name: "Introduction to Cryptography - EC-Council ECES",
      desc: "This course provides students with knowledge of cryptographic algorithms, protocols, and their uses in the protection of information in various states. This course prepares students for the Certified Encryption Specialist (EC-Council ECES) certification exam.",
    ],
    "C840" => [
      name: "Digital Forensics in Cybersecurity",
      desc: "Digital forensics, the science of investigating cybercrimes, seeks evidence that reveals who, what, when, where, and how threats compromise information. This course examines the relationships between incident categories, evidence handling, and incident management. Students identify consequences associated with cyber threats and security laws using a variety of tools to recognize and recover from unauthorized, malicious activities",
    ],
    "C841" => [
      name: "Legal Issues in Information Security",
      desc: "Security information professionals have the role and responsibility for knowing and applying ethical and legal principles and processes that define specific needs and demands to assure data integrity within an organization. This course addresses the laws, regulations, authorities, and directives that inform the development of operational policies, best practices, and training to assure legal compliance and to minimize internal and external threats. Students analyze legal constraints and liability concerns that threaten information security within an organization and develop disaster recovery plans to assure business continuity.",
    ],
    "C842" => [
      name: "Cyber Defense and Countermeasures - EC-Council ECIH",
      desc: "Traditional defenses such as firewalls, security protocols, and encryption sometimes fail to stop attackers determined to access and compromise data. This course provides the fundamental skills to handle and respond to the computer security incidents in an information system. The course addresses various underlying principles and techniques for detecting and responding to current and emerging computer security threats. Students learn how to handle various types of incidents, risk assessment methodologies, and various laws and policy related to incident handling. This course prepares students for the Certified Incident Handler (EC-Council ECIH) certification exam",
    ],
    "C843" => [
      name: "Managing Information Security",
      desc: "This course expands on fundamentals of information security by providing an in-depth analysis of the relationship between an information security program and broader business goals and objectives. Students develop knowledge and experience in the development and management of an information security program essential to ongoing education, career progression, and value delivery to enterprises. Students apply best practices to develop an information security governance framework, analyze mitigation in the context of compliance requirements, align security programs with security strategies and best practices, and recommend procedures for managing security strategies that minimize risk to an organization. ",
    ],
    "C844" => [
      name: "Emerging Technologies in Cybersecurity",
      desc: "The continual evolution of technology means that cybersecurity professionals must be able to analyze and evaluate new technologies in information security such as wireless, mobile, and internet technologies. Students review the adoption process which prepares an organization for the risks and challenges of implementing new technologies. This course focuses on comparison of evolving technologies to address the security requirements of an organization. Students learn underlying principles critical to the operation of secure networks and adoption of new technologies.",
    ],
    "C845" => [
      name: "Information Systems Security - ISC2 SSCP",
      desc: "IT security professionals must be prepared for the operational demands and responsibilities of security practitioners, including authentication, security testing, intrusion detection and prevention, incident response and recovery, attacks and countermeasures, cryptography, and malicious code countermeasures. This course provides a comprehensive, up-to-date global body of knowledge that ensures students have the right information security knowledge and skills to be successful in IT operational roles to mitigate security concerns and guard against the impact of malicious activity. Students demonstrate how to manage and restrict access control systems; administer policies, procedures, and guidelines that are ethical and compliant with laws and regulations; implement risk management and incident handling processes; execute cryptographic systems to protect data; manage network security; and analyze common attack vectors and countermeasures to assure information integrity and confidentiality in various systems. This course prepares students for the Systems Security Certified Practitioner (ISC2 SSCP) certification exam",
    ],
    "C846" => [
      name: "Business of IT - Applications",
      desc: "Business of IT – Applications examines Information Technology Infrastructure Library (ITIL) terminology, structure, policies, and concepts. Focusing on the management of Information Technology (IT) infrastructure, development, and operations, students will explore the core principles of ITIL practices for service management to prepare them for careers as IT professionals, business managers, and business process owners. This course has no prerequisites."
    ],
    "C849" => [
      name: "Cloud Foundations",
      desc: "More and more companies are shifting to a cloud computing model of doing business. The Cloud Foundations course focuses on the real-world issues and practical solutions of cloud computing in business and IT. Competency in this course will be demonstrated by the successful completion of the CompTIA Cloud Essentials certification exam."
    ],
    "C850" => [
      name: "Emerging Technologies",
      desc: "The Emerging Technology course examines emerging technologies, identifies the benefits and drawbacks of technology adoption, and provides students with a process to evaluate technologies. The course will examine three technologies that may have an impact on Information Technology services in the coming years."
    ],
    "C851" => [
      name: "Linux Foundations",
      desc: "Linux Foundations is an introduction to Linux as an operating system as well as an introduction to open source concepts and the basics of the Linux command line. Expert content, a Linux virtual machine, and step-by-step labs give you hands-on access to practice Linux command line concepts. Linux is widely used in different industries for all kinds of functions including web servers, firewalls, and graphic design, and provides robust functionality and a stable, secure environment that is not often found in any other client operating system."
    ],
     "C856" => [
      name: "User Experience Design",
      desc: "User Experience Design explores multiple tools and techniques used in user experience design. Students are presented with an in-depth view of activities involved in the design of user experience and have the opportunity to create several deliverables including persona profiles, information architectures, and prototypes of different levels of fidelity. In addition, the course also covers usability testing and the evaluation of quantitative and qualitative data derived from these and other experiments."
    ],
    "C857" => [
      name: "Software Quality Assurance",
      desc: "Software Quality Assurance applies a QA focus to every phase of the software development life cycle. This course investigates best practices for quality analysis, quality planning, and testing strategies as they pertain to the everyday practice of software development. Students will come to understand how their work fits into the bigger picture: how QA, testing, and code-writing practices interact within specific process models; the potential impact of new code on existing code or on other applications; the importance of usability and the influence users have on the ultimate success of an application. Students will explore test plans, test cases, unit tests, integration tests, regression tests, usability tests, and test and review tools."
    ],
    "C867" => [
      name: "Scripting and Programming - Applications",
      desc: "In this undergraduate course students explore the various aspects of the C++ programming language by examining its syntax, the development environment, and tools and techniques to solve some real-world problems."
    ],
    "C868" => [
      name: "Software Development Capstone",
      desc: "The capstone assessment challenges students to demonstrate mastery of all the BSITSW program outcomes. Students will develop a software application to solve a problem of their choice constrained only by the technology requirements provided in the assessment DRF."
    ],
    "C949" => [
      name: "Data Structures and Algorithms I",
      desc: "Data Structures and Algorithms I covers the fundamentals of dynamic data structures, such as bags, lists, stacks, queues, trees, hash tables, and their associated algorithms. With Python software as the basis, the course discusses object-oriented design and abstract data types as a design paradigm. The course emphasizes problem solving and techniques for designing efficient, maintainable software applications. Students will implement simple applications using the techniques learned. This course has one prerequisite: Software 1."
    ],
    "C950" => [
      name: "Data Structures and Algorithms II",
      desc: "Data Structures and Algorithms II explores the analysis and implementation of high-performance data structures and supporting algorithms, including graphs, hashing, self-adjusting data structures, set representations, and dynamic programming. The course also introduces students to NP-complete problems. The course discusses how to use Python techniques to implement software solutions for problems of memory management and data compression. This course has one prerequisite: Data Structures and Algorithms I (C949)."
    ],
    "C951" => [
      name: "Introduction to Artificial Intelligence",
      desc: "Introduction to Artificial Intelligence explores the foundational principles and practices of artificial intelligence (AI), machine learning, and robotics. The course prepares students to analyze relationships, build agents, and create models relevant to AI problems. The prerequisites for this course are Introduction to Probability and Statistics as well as Data Structures and Algorithms II."
    ],
    "C952" => [
      name: "Computer Architecture",
      desc: "Computer Architecture introduces students to concepts and characteristics of organization and architecture applied to modern computer systems, including performance, processor, memory, I/O, and multiprocessors to optimize system design, performance, and efficiency."
    ],
    "C958" => [
      name: "Calculus I",
      desc: "Calculus students apply theoretical concepts of calculus to real-world situations, demonstrating a developing mathematical mindset. This course focuses on limits, derivatives, integrals, and differential equations; it also prepares students for Discrete Mathematics. Prerequisites may include an entrance exam that assesses pre-calculus skills, or readiness; alternatively, completion of pre-calculus within the past 3 – 5 years."

    ],
    "C959" => [
      name: "Discrete Math I",
      desc: "Discrete Mathematics 1 is designed to help students develop competence in the use of abstract discrete structures fundamental to computer science. In particular, this course will introduce students to logic and proofs, Boolean algebra and functions, set theory, finite and infinite sequences and series, and relations, graphs and trees. There is an emphasis on applications in computer science. Calculus is a prerequisite for this course."
    ],
    "C960" => [
      name: "Discrete Math II",
      desc: "Discrete Mathematics II addresses abstract discrete computational methods used in computer science. In particular, this class introduces searching and sorting algorithms, big-O estimates, number theory and cryptography, recursion and induction, counting and advanced counting techniques, discrete probability, and modeling computation. There is also an emphasis on applications in computer science. Discrete Mathematics I is a prerequisite for this course."
    ],
    "C964" => [
      name: "Computer Science Capstone",
      desc: "The Computer Science Capstone course allows the student to demonstrate their application of the academic and professional abilities developed during the BSCS program. The capstone challenges students to integrate skills and knowledge from all program domains into one project."
    ],
    "CNV1" => [
      name: "Designing Customized Security",
      desc: "Designing Customized Security outlines the sequence of learning activities to help students develop competence in the subject area of securing networks, which deals specifically with Cisco networks. It prepares students for the Cisco 640-553 IINS certification exam."
    ],
    "CPV1" => [
      name: "IT Fundamentals III",
      desc: "IT Applications is a continuation of the IT Foundations course preparatory for the CompTIA A+ exam, Part II. Students will gain an understanding of personal computer components and their functions in a desktop system, as well as computer data storage and retrieval; classifying, installing, configuring, optimizing, upgrading, and troubleshooting printers, laptops, portable devices, operating systems, networks, and system security; recommending appropriate tools, diagnostic procedures, preventative maintenance and troubleshooting techniques for personal computer components in a desktop system; strategies for identifying, preventing, and reporting safety hazards and environmental/human accidents in a technological environments; and effective communication with colleagues and clients as well as job-related professional behavior."
    ],
    "CPW2" => [
      name: "IT-Network Administration Capstone Project",
      desc: "The capstone project consists of a technical work proposal, the proposal’s implementation, and a post-implementation report that describes the graduate’s experience in developing and implementing the capstone project. The capstone project should be presented and approved by the mentor in relation to the graduate’s technical emphasis. "
    ],
    "CUV1" => [
      name: "Web Technologies",
      desc: "Web Technologies focuses on: using and updating web client software; web page creation and programming languages; dynamic web page fundamentals: e-commerce infrastructure; and identifying suspicious network activity and selecting the appropriate strategy to counter it."
    ],
    "DIV1" => [
      name: "Windows Server Admin Fundamentals",
      desc: "Windows Server Admin Fundamentals focuses on server installation and roles, active directory, storage technologies, and server performance and maintenance. It is designed to provide candidates with an assessment of their knowledge of fundamental server administration concepts. It can also serve as a stepping stone to the Microsoft Certified Technology Specialist exams."
    ],
    "DQV1" => [
      name: "Information and Communication Technology Foundations",
      desc: "Information and Communication Technology Foundations introduces IT concepts such as PC components, setting up a PC workstation, conducting basic software installation, identifying compatability issues, recognizing and preventing basic security risks, preventative maintenance of computers, and green IT. The course prepares the student for the CompTIA Strata Fundamentals certification examination."
    ],
    "EAV1" => [
      name: "IT Fundamentals II",
      desc: "IT Fundamentals II helps students gain an understanding the personal computer components, and their function, in a desktop system as well as computer data storage and retrieval; classifying, installing, configuring, optimizing, upgrading, and troubleshooting printers, laptops, portable devices, operating systems, networks, and system security; recommending appropriate tools, diagnostic procedures, preventative maintenance and troubleshooting techniques for personal computer components in a desktop system; strategies for identifying, preventing, and reporting safety hazards and environmental/human accidents in a technological environments; and effective communication with colleagues and clients as well as job-related professional behavior."
    ],
    "EBV1" => [
      name: "IT Fundamentals III",
      desc: "IT Fundamentals III helps students gain an understanding the personal computer components, and their function, in a desktop system as well as computer data storage and retrieval; classifying, installing, configuring, optimizing, upgrading, and troubleshooting printers, laptops, portable devices, operating systems, networks, and system security; recommending appropriate tools, diagnostic procedures, preventative maintenance and troubleshooting techniques for personal computer components in a desktop system; strategies for identifying, preventing, and reporting safety hazards and environmental/human accidents in a technological environments; and effective communication with colleagues and clients as well as job-related professional behavior."
    ],
    "EDV1" => [
      name: "Software I",
      desc: "This course focuses on skills and concepts students need to know, to understand, and to apply"
    ],
    "EUC1" => [
      name: "Web Development Fundamentals",
      desc: "Web Development Fundamentals supports the objective assessment for Web Development Fundamentals (EUC1). This objective assessment concludes the work students complete in the Web Development Fundamentals project course (EUP1)."
    ],
    "EUP1" => [
      name: "Project in Web Development Fundamentals",
      desc: "Project in Web Development Fundamentals introduces the fundamentals of web development, which will enable the student to design, develop, and deploy a website. Students will create web content using HTML 5 and gain the knowledge to style and create layouts using Cascading Style Sheets (CSS). Students will also learn how to host and upload a website to a free web server. Students will have to successfully develop one web project and complete an objective assessment."
    ],
    "FEC1" => [
      name: "Operating Systems",
      desc: "Students will master installation, configuration, and troubleshooting for one of the world's leading operating systems: Windows 7."
    ],
    "FXT2" => [
      name: "Disaster Recovery Planning, Prevention and Response",
      desc: "This course prepares students to plan and execute industry best practices related to conducting organization-wide information assurance initiatives and to preparing an organization for implementing a comprehensive Information Assurance Management program. "
    ],
    "JIT2" => [
      name: "Risk Management",
      desc: "Content focuses on categorizing levels of risk and understanding how risk can impact the operations of the business through a scenario involving the creation of a risk management program and business continuity program for a company and a business situation reacting to a crisis/disaster situation affecting the company."
    ],
    "LQT2" => [
      name: "Information Security and Assurance Capstone Project",
      desc: "Students will be able to choose from three areas of emphasis, depending on personal and professional interests. Students will complete a capstone project that deals with a significant real-world business problem that further integrates the components of the degree. Capstone projects will require an oral defense before a committee of WGU faculty."
    ],
    "LYT2" => [
      name: "Current and Emerging Technology",
      desc: "This course focuses on the tools and skills to evaluate the acceptance and adoption of technology within various types of organizational cultures. The course will address topics such as diffusion, innovation, hype theory, needs analysis, change agents, implementation planning, and adoption models. Students will demonstrate the ability to make sound judgments regarding the selection, adoption, implementation, and evaluation of technologies as they related to organizational culture, strategy, and objective."
    ],
    "MAT2" => [
      name: "Information Technology Management",
      desc: "This course will prepare students to cope with information technology resources in a manner beneficial to their company. Such skill includes estimating both the cost and value of IT to the company, setting priorities for project selection, management of IT projects, and handling risk. These responsibilities imply an ability to align technology with an organization’s strategic goals. In total, students will develop the ability to effectively administer and manage current and emerging technologies within an organization."
    ],
    "MBT2" => [
      name: "Technological Globalization",
      desc: "This course is designed to equip students to better understand the fundamental, galvanizing and transformational role of advanced IT communications, networks and services in all major industries; advanced IT is an unparalleled force multiplier in scientific research, energy production and use, health and medicine. IT is a critical resource in the global community, economically, socially, politically and culturally."
    ],
    "MCT2" => [
      name: "Technical Writing",
      desc: "As IT professionals are frequently required to interface with customers, clients, other departments, organizational leaders, and even other institutions, strong communication skills are vital. In this course, students learn to communicate accurately, effectively, and ethically to a variety of audiences. Students design communication to fit oral, print, and multi-media contexts. They develop rhetorical sensitivity in both their writing and their design decisions."
    ],
    "MGT2" => [
      name: "IT Project Management",
      desc: "This course provides an overview of the Project Management Institute’s project management methodology. Topics cover various process groups and knowledge areas and application of knowledge in case studies for planning a project that has not started yet and monitoring/controlling a project that is already underway."
    ],
    "MMT2" => [
      name: "IT Strategic Solutions",
      desc: "In the course the learner will have the opportunity to identify strategic opportunities and emerging technologies as they research and decide on a system to support a growing company. Topics will include technology strategy; gap analysis; researching new technology; strengths, opportunities, weaknesses, and threats; ethics; risk mitigation; data security, communication plans; and globalization."
    ],
    "SBT1" => [
      name: "Technical Writing",
      desc: "The technical writing requirement draws from the evidence students have accumulated in improved proficiency in research and professional written communication; the ability to think about and write for different audiences; and improved style, grammar and syntax."
    ],
    "SJT2" => [
      name: "Advanced Networking Technology",
      desc: "This course prepares students to support the ever growing interconnectivity needs of organizations. Students will learn about advanced networking concepts, devices and strategies to provide superior network connectivity to organizations. A review of common yet critical network devices and technologies will be provided such as switches, routers, hubs, firewalls, T-1s, ATM, fiber and others. Students will also be prepared to review existing network environments and provide specifications to upgrade and enhance such networks."
    ],
    "TFT2" => [
      name: "Cyberlaw, Regulations, and Compliance",
      desc: "Cyberlaw, Regulations and Compliance prepares students to participate in legal analysis of relevant cyberlaws and address governance, standards, policies, and legislation. Students will conduct a security risk analysis for an enterprise system. In addition, students will determine cyber requirements for third‐party vendor agreements. Students will also evaluate provisions of both the 2001 and 2006 USA PATRIOT Acts."
    ],
    "TPV1" => [
      name: "Project Management",
      desc: "This course focuses on skills and concepts students need to know to plan and implement projects. The project initiation and planning process is covered in-depth, culminating in the creation of a project schedule. Learning how to manage business concerns such as cost and risk is balanced by thorough coverage of best practices in managing people and resources. Students will also learn how to manage change and the steps necessary in closing a project."
    ],
    "VLT2" => [
      name: "Security Policies and Standards - Best Practices",
      desc: "This course focuses on the practices of planning and implementing organization-wide security and assurance initiatives as well as auditing assurance processes."
    ],
    "WPV1" => [
      name: "Software II",
      desc: "Learner competence will be assessed as they complete the WPV1 CIW Perl Specialist Exam 1D0-437 exam. Dynamic programming; Regular Expressions, Hashes, and Arrays; Flow Control; and Object-Oriented Concepts are topics in this course."
    ],
  }

  @doc """
  Get all the courses.
  """
  def list_courses, do: @courses

  @doc """
  Get a course by its code.
  """
  def find_by_code(code) do
    Enum.find(@courses, fn {key, _val} ->
      key === code
    end)
  end
end
