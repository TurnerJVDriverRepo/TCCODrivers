<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/TurnerJVDriverRepo/TCCODrivers">
    <img src="https://github.com/TurnerJVDriverRepo/TCCODrivers/blob/main/bin/Turner_Logo.png" alt="Logo" width="250" height="80">
  </a>

<h3 align="center">Off-network / JV Printer Script Repo</h3>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project was created out of a need to give our joint venture and off-network projects an avenue for an easy printer install process. This project tackles some of the hurdles with sourcing and installing printer drivers for people whom are not on the main network and do not have access to the on-network printer driver data share.

This repository of printer drivers is not an exhaustive list. If there is a missing driver please get in touch with rcurran@tcco.com to have the driver added. 


<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

Powershell & .NET

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get started, download the printer script creator from <Insert URL here>. This powershell script will provide a list of available drivers from the github repository, prompt for necessary information regarding the printer and create a printer install script in C:\Temp\Driver


### Prerequisites

For first-run only:
Open Powershell as an administrator and run the below command. This will enable you to run the PS1 script on your machine. If you are using the printer script on a non-Turner laptop, you may need the assistance of the JV's IS Department to make this change if they will allow it.

```Set-ExecutionPolicy Bypass -Scope CurrentUser```

### Installation

Download the script from: <URL>



<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage


#### Script Creation 

1. Right click on the Ps1 file and click "Run with Powershell"
2. Allow the window to elevate and open a powershell window as administrator (credentials may be required)
3. Select the printer required from the printer list and click "Submit"

  a.  ![image](https://github.com/TurnerJVDriverRepo/TCCODrivers/assets/15055337/41513c23-e231-4500-9945-5ddb70f031c4)

4. Enter the printer information that matches your printer setup. ```(IP, Displayname, Driver name)```

  a. Printer Driver Name can be found inside of the INF File for the respective printer driver. 

  
  b. ![image](https://github.com/TurnerJVDriverRepo/TCCODrivers/assets/15055337/dc0ed9ce-001c-46e9-992c-b23b7c6dd114)

5. Click "Submit" and navigate to the export location ```C:\Temp\Drivers\```

6. Take the printer driver .zip and transfer it to a flashdrive / fileshare site

#### Printer Install

1. Extract the .zip
2. Right-click on the extracted file and click "Run with Powershell"
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Publish Functional MVP Script with Winform
- [ ] Expand Driver List
- [ ] Convert Winform GUI to WPF 
- [ ] Automate driver name selection

See the [open issues](https://github.com/TurnerJVDriverRepo/TCCODrivers/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

rcurran@tcco.com

Project Link: ([https://github.com/TurnerJVDriverRepo/TCCODrivers](https://github.com/TurnerJVDriverRepo/TCCODrivers))

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
