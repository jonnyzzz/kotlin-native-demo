plugins {
  kotlin("multiplatform") version "1.3.21"
}

repositories {
  mavenCentral()
}

kotlin {

  // uncomment the next line for Windows  
  //mingwX64("native") {

  // uncomment the next line for Linux 
  //linuxX64("native) { 

  // uncomment the next line for macOS
  macosX64("native") {

    binaries {
      executable()
    }
  }
}


tasks.withType<Wrapper> {
  gradleVersion = "5.3.1"
  distributionType = Wrapper.DistributionType.ALL
}

