pipeline {
  agent any
  stages {
    stage('Lint HTML') {
      steps {
        sh 'tidy -q -e landsat-scroll/index.html'
      }
	}
    stage('Upload to AWS') {
      steps {
        withAWS(region:'us-west-1',credentials:'mromero') {
        s3Upload(bucket: 'esri-imagery-apps', pathStyleAccessEnabled: true, payloadSigningEnabled: true, file: 'landsat-scroll/index.html')
		}
	}
  }
}
}