# Hi there 👋 I'm Kirill
* Ex Backend Developer at @yandex, worked at FinTech and ML Infra
* Studying at Saint Petersburg State University & YSDA
* Learning Distributed Systems

```
fun writeBloodyEnterpriseLikeOpenSource(basKirill: Developer) {
  val deployedProject = Project(developer = basKirill)
    .requirements(
      Requirements(trustToManagers = true, featureOrientedMind = true, userStories = true)
    )
    .core(howToBuild = DomainDrivenDesignStrategy())
    .architecture(
      philosophy = EvolutionaryArchitecture(FuturePredictionStrategy(), Flexability = 10),
      lowLevelArchitecture = UncleBob.theBest.hexagonalArchitecture,
      microservices = DomainGuidedArchitecture()
    )
    .codeQuality(SOLID, GoF, TDD)
    .monitoring(Monitor.business + Monitor.techEssentials)
    .infrastructure(RightInfrastructure().include(CI).include(CD))
    api(Api
        .Rest.enable()
        .GRPC.enable()
        .asPlugin()
    )
    .securityBuiltIn(true)
    .testing(manual = false, tdd = true, additional = ChaosTesting.maximize())
    deploy(CloudProviders.randomOf(AWS, GoogleCloud, Azure))

  assert(deployedProject.status == Status.SUCCESS)
}
```
