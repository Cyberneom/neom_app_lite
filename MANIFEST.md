# Open Neom: MANIFEST.md

**Project Overview**

Open Neom is an open-source technology initiative designed to serve as an innovation ecosystem
at the intersection of Information Technology, neuroscience, digital health, and education.
It represents the open version of Cyberneom (www.cyberneom.xyz), a platform dedicated to guided
meditation and conscious well-being. This initiative is a foundational step towards the broader
vision of Tecnozenism, advocating for decentralization, open research, and a more harmonious
integration of technology and human consciousness. Open Neom is not just a project;
it's a commitment to a larger future of open innovation.

More than just a simple application, Open Neom has been conceived as a modular and generic platform
for integrating wearables and IoT devices, with the purpose of democratizing access to cognitive 
and biofeedback technologies. Its robust, professional-grade software architecture,
based on Clean Architecture principles, modularity, and decoupling, is key to its flexibility,
scalability, and collaborative capabilities, driving innovation for the entire community.

**Fundamental Architectural Principles**

Open Neom is built upon solid architectural pillars that ensure its sustainability, maintainability,
and adaptability, fostering a truly open and collaborative environment:
•	Modular Architecture ("Plug-and-Play"): The system is composed of independent modules with single responsibilities,
    allowing for flexible development and integration. This design significantly lowers the barrier to entry for new
    contributors and enables specialized development, accelerating the pace of innovation.
•	Dependency Inversion (Decoupling): Communication between modules is managed through abstract interfaces,
    minimizing coupling and facilitating the replacement of implementations without affecting other parts of the system.
    This ensures the project's longevity and adaptability to future technological advancements and evolving research needs.
•	Single Responsibility Principle (SRP): Each component (class, module) has only one reason to change, which improves clarity,
    code navigability, and testability. This leads to higher code quality, easier maintenance, and more reliable contributions.
•	Composition Root (Orchestra Conductor): A centralized point (RootBinding) manages dependency injection and module connection,
    maintaining the purity and decoupling of individual functionalities. This allows for flexible application configurations
    (e.g., for commercial or research versions) and facilitates robust testing.

**Module Structure**

The Open Neom platform is organized into the following module categories, reflecting its decoupled and functional design,
and highlighting its comprehensive approach to digital well-being and open research:

Core Modules
These modules form the foundation of the entire application, containing the central business logic and shared components
essential for any part of the Open Neom ecosystem.
•	neom_core: The absolute core of the application. It contains the main business logic, fundamental data models,
    and the abstract interfaces (services) that define the contracts for communication between all other modules.
    It embodies the foundational principles for integrating neuroscience and biofeedback.
•	neom_commons: Houses all reusable widgets, shared UI components, and generic utility functions that are transversal
    to the application. This module ensures consistency in design and functionality across the entire Open Neom platform.

Main Feature Modules
These modules represent the key features that directly interact with the user, providing the core functionalities
of the Cyberneom experience in an open framework.
•	neom_auth: Responsible for all user authentication logic and user interface elements, ensuring secure and decentralized
    access to the platform.
•	neom_home: Defines the main application screen and manages base navigation between different sections, serving as the central
    hub for user interaction and discovery.
•	neom_timeline: Responsible for displaying the content feed or activity timeline, allowing users to track their progress,
    engage with shared experiences, and participate in open research data streams (where applicable and consented).
•	neom_posts: Allows users to create, edit, and view posts, fostering a vibrant community interaction and open content sharing,
    aligned with decentralization principles.
•	neom_events: Manages the creation, viewing, and participation in events, promoting collective well-being activities
    and open research collaborations.
•	neom_settings: Contains the logic and UI for general application configuration and user preferences, enabling personalization
    of the experience while respecting user autonomy.
•	neom_notifications: Handles the reception, display, and management of notifications, keeping users informed and engaged with
    the evolving ecosystem.
•	neom_search: Implements robust search functionality within the platform, allowing users to find relevant content,
    research, and connections.
•	neom_itemlists: Manages the creation and display of various item lists, providing structured information and resources
    for users and researchers.

Media Feature Modules
These modules specialize in handling and playing multimedia content, which are crucial for delivering guided experiences,
biofeedback, and data visualization in the context of neuroscientific research.
•	neom_audio_player: The main audio player for the platform, central to delivering personalized sound experiences
    and integrating audio-based biofeedback.
•	neom_media_player: A more generic media player, adaptable to different types of media content (audio, video),
    enhancing multimedia delivery for both user experience and research data presentation.
•	neom_camera: Provides camera functionality for capturing images and videos, enabling visual data collection
    and interaction for personal use and research purposes.
•	neom_video_editor: (Proposed) Module for video content editing, expanding the platform's multimedia
    creation and analysis capabilities.

Integration and Other Modules
These modules facilitate connection with external services or have very specific functions, extending Open Neom's reach
    and data integration capabilities, and supporting its role as a hub for open innovation.
•	neom_google_books: Integration with the Google Books API, potentially for accessing educational resources or research
    literature relevant to neuroscience and well-being.
•	neom_maps_services: Services related to maps and geolocation, for location-based features, event discovery,
    or geographical data analysis in research.
•	neom_google_places: Integration with the Google Places API, enhancing location-based functionalities and community engagement.
•	neom_woo: (Proposed) Integration with the WooCommerce platform, for e-commerce functionalities related to open-source hardware,
    devices, or educational materials.
•	neom_bank: (Mentioned) Potential module for banking or financial functionalities, if relevant to future decentralized
    economic models within the Tecnozenismo initiative.

**For Developers: Learn & Contribute**

Open Neom is designed not only as a functional platform but also as a comprehensive learning resource for Flutter developers
of all levels. Its modular and clean architecture provides a practical environment to understand and apply best practices
in modern application development. To help you navigate and contribute effectively, we have prepared a detailed guide:
Learning Flutter Through Open Neom: A Comprehensive Path. This guide maps the project's structure and features to key
Flutter concepts, allowing you to learn everything from fundamental Dart syntax to advanced architectural patterns,
state management, platform integration, and CI/CD. Whether you're a beginner or an experienced architect, 
Open Neom offers valuable insights and hands-on experience.

**Contribution and Collaboration**

Open Neom's modular architecture is specifically designed to foster extensive and decentralized collaboration.
Developers can contribute to specific modules without needing to understand the entirety of the system,
significantly reducing the learning curve and accelerating development. We actively invite the global community
to participate in improving, extending, and validating this platform. This open approach is fundamental to the
Tecnozenism philosophy, promoting shared knowledge, collective advancement, and a truly democratic technological future.

**Roadmap and Future Vision**

This strong architectural foundation allows Open Neom to evolve as:
•	A cutting-edge research laboratory for academia, enabling rigorous scientific validation of digital health
    interventions and neuroscientific hypotheses.
•	A dynamic ecosystem for talent development, fostering a polymath model where diverse skills 
    (from software engineering to neuroscience) converge to create impactful solutions.
•	A solid base for robust and scalable commercial products, representing the open core of the Cyberneom vision,
    allowing for both open innovation and sustainable development.
•	A transparent and collaborative open-source project that invites global participation, driving decentralization
    and open innovation in health, neuroscience, and conscious technology.

The rigorous refactoring work has laid the groundwork for Open Neom not only to function but to grow, adapt,
and potentially fulfill its promise of connecting devices, integrating the future of neuroscience and digital health,
and leading the charge for Tecnozenism – a harmonious blend of technology and inner balance for a decentralized and open future.
