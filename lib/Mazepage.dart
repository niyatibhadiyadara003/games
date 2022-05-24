import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class Mazepage extends StatefulWidget {
  const Mazepage({Key? key}) : super(key: key);

  @override
  _MazepageState createState() => _MazepageState();
}

class _MazepageState extends State<Mazepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Maze Game"),),
      backgroundColor: Colors.blue.withOpacity(0.5),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/back.png",height:200),
              const SizedBox(height:50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          rowcolum r1 = rowcolum(r:8,c:8,mycolor: Colors.red);
                          Navigator.of(context).pushNamed('Mazepage1',arguments: r1);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        primary: Colors.green,
                      ),
                      child: Text("Easy",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  const SizedBox(width:30),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          rowcolum r1 = rowcolum(r:15,c:15,mycolor: Colors.green);
                          Navigator.of(context).pushNamed('Magepage1',arguments: r1);

                        });
                      },style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.black,
                    ),
                      child: Text("Normal",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  const SizedBox(width:30),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          rowcolum r1 = rowcolum(r:20,c:20,mycolor: Colors.green);
                          Navigator.of(context).pushNamed('Mazepage1',arguments: r1);
                        });
                      },style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.black,
                    ),
                      child: Text("Hard",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
//-----------
class Mazepage1 extends StatefulWidget {

  @override
  _Mazepage1State createState() => _Mazepage1State();
}

class _Mazepage1State extends State<Mazepage1> {


  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Game"),centerTitle: true,backgroundColor: Colors.black,),
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Maze(player: MazeItem("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEBUSExMWFRUXGBYVFRgYGBcXGBoYFR0XGBgVFhUYHSghHRolGxUdITEhJSkrLi4uGiAzOTMtNygtLisBCgoKDg0OGxAQGy0mICUtLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAQkAvgMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYCBAcBAwj/xABGEAACAQMBBQMIBwUGBgMBAAABAgMABBESBSExQVEGE2EHFCIycYGRoSNCQ1JicpIzgrHB8BUkNFNjc4OTorLR4URUszX/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFAgEG/8QANBEAAQMBBQUHBAICAwAAAAAAAQACAxEEEiExQQVRYXGBEyKRobHB0TLh8PEUI0JSM4KS/9oADAMBAAIRAxEAPwDuNKUoiUpSiJSlKIvDVT7W9uYLIiIK89ywysEWC2DwaQ8EXxPwr7dv+1A2dZtMAGlYiOBD9aRuHuA3n2eNcj7P29xNqeFRI7ktPeTZ0u/MRgDU6jgMYXdUE8jmN7oqfAcyVNDHfdQq3ReUTaPrNs+HT9wTkOPeVKk1Y+zXlAtbuQQuHtrjlFNhS3+0+dLj2b93CqTPsK+QallgmI4oY2iz4K+tt/tFRkiRXaNHLGySIcMrDTJG3Jlb+DDcaofzJ4u9K0Fu9unNXHWOM4MJB46rvQr2uX9hO2MkUq2F++pm3Wtwftf9KQ8pByJ4+3j08VqMe17Q5pqDks5zS03XDFe0pXldLxe14TUZt7b1vZRGa4lWNB14k9FUb2PgKpl5tOa5he9vFa12dGutYDunufu99j1UY4AiHrZ35HEil+2nbJLSFO5xNcTZFugO444ysR9mvHPOuZ31lJcOouGa8uZMkB3ZYkA9Zgg9FI1yBnBO8da2bRZJZWu5xiaUABRwhiHqQJ0AHHqc1MdkbfV3tyeLsY08I4iV+b6j8OlZD7SbRMWMPdbnQ58KjRacFmDGguGLvIfKjdkXF3sSVJJpu9sZHCTINZFvqwFdNZJ0gnf16ZIrtSsCARvHI1QNq2KzwSQuMq6FT7+B9x3+6pTyW7QefZVuZM60VoXzvOqEmPeeuFFaUT7wxVa1QCN3dyKt1KUqVVUpSlESlKURKUpRErwmva0Nt34t7Wec8IopJT+4pbHyoi5H2qi/tfbLRNvtLD0HH35W3soI8V0noEPWrjHGFAVQAAMADcABwAHIVWvJ1Z6LBJG3yTlriRupkOR8sVZ6pyuq7ktmyxBkYOpSq72u2aSnnUQzNCCSBxki4vGep+sviPGrFSozjWqnc2ooqLc28V1Dg+kjgMpHEZ3qynkRmrT2C7YMrCwvX+kA/u853CZF+qxP2oHHrVUsYe4nntOCxsHi/wBqbLAD8ral91fTamz47iMxyDIPA81PJlPI1lw2h1imMZxbXrTfzpmoZrOJ2Xhg74+66rtTtVZW+6W5iDckDBpD+WNcsfcKqW0+3k0oItIDEOHe3A9L2pApJ39XIx908Ko+xYVt8QtGiHgsiqAsnt6P4HjxFTVTWrarwbrBTicfsoYbC0irz0ULFZXAuvPJ5FnlA9DvIzMVOc5UFlXPT0Qo5AVl2l2zfXaBJI7iRAyuFzbRLqQ5VvRBbd0Jx4VMUqmNpzf5Gvl6KybHFp8+qpP9oyD9uJoOpfv3X9cbAVbuyWz2mtYpIr51BUEpEchGb0ipDs2/J5jjmtkioS72Bh+/tX83nHNfUb8LoNxB/rNWbPb471CLvLLwz9Vy6B7cRj5H4Vzj2dcLwvHb88UR/wC0LWz5JEmSO8jLIyR3s68CrZIjckbyNJL8OW/eaheynac3DG3uFEV0g3qPVkX/ADI/Dw5VY/JO2qO+k5Nfz6fEKsS5+KmtmDX2VO1lrmgjeVehXtKVYVBKUpREpXmarnb/AGy1ps+aaP8Aa4WOL/clYIpx4Fs+6iKb88j193rTX9zUNX6c5rZr8+PsWOHupVybhZoG74kmRnMiAlmJyc5O6u+tMoIBYAncATjJ8OtV7PaWztLmZVopZoXREB2oqvtVV8qL42Nen/RYfEgfzq1VVfKiudjXo/0WPwIP8qsKJQewYO7tLdPuwxL8FUVvVrbLfVBE3WOM/FQa2azzmvoW5Be15Wrs+67wMeBWSSMj8jEDPjpwffW1QiiAgioVQ7ULp2hbMPtIpo2/cKOv8WrOvO1cmb60QfVS4kPgDoQfMmvaxtpU7UU/1Hv7L2H/AC5n2WDICMEZHQ7xWdKiLzb0SOY1DyyDisal9OfvHgPjVFkbnmjcV25zWYlS9K1LK87zjG6Ho64+BGR86268c0tNCvQQRUJSlK5XqjdsbNMoV420TxnVDIOIYcj1U8CKuPkh2gi2MMH2ha5MueInVwzxsOpWQMPAGq8xwM/1uqryzXUFwt3FOtux1SiMrqXEaEDvc8WZW0nA58yBW1sq1XKsecNOeJ++4dVm2+Gvebnru5r9DWV0JFLLwDSJ743ZD81NbFVPyZbR842bHIchzJOZVPFZWlkd1x0Bfd4Yq2V9AspKUpRFyJu3F/cSTSWzxRwrI6QI0evWIzgtI+oEBiD6uMCna3tIL+32YFGDLJJLMnHQ1qpVkPgJWGDzwKr/AGfjMRubYjDQXEyYPHSWLKfeDWez9liG5mkA3S4YHoT6645ZOG3cd/SsOW3va6aN3/X09DXoVpx2UPbG5vVZdoELRoqsVJliwy4yuHB1DPMYrRuzPdecSXT95cwkCGTGNHdoskbxqNyljhjjifdU+6A4yM4II9o4GtHai6YpSp9JwEX8zfRr82HwrOs1oe1vZN1I8a/gVyaJpJkO4+FD+12TYF95xaQT4x3sUUuOneIrY+dfPtRY+cWNzAOMkMqD2sjAH4mtvZ1oIYY4l4RoiD2IAo/hWya+tWAuVdg7zvdm27c1QRnPHMXoEH9NT1V3Ylt5ptC9sTuXvPO4PGKc7wPysMVYqpSCjituzvvRgqq7VvDs+7NwwJtrkqJSBnuplAVZMD6rjAPitTI27bd2ZPOItAySdY3Y45HHPhjNbd1bJKjRyKGRgVZTwIPKqNf7CW1nhUaZY5C4TvFBkj0LqwJPrLwHpbx1qOSS6y9TLolHMOGXosrWVri5kvGBVWCxwKwwwjXeXI5amJOOmKkaUr5yeYzPLz+BWo23BTqtDa0jiPTGcO5Eanpq4t7lDH3VgiJaxhUjcjnoUsxPMsRxJ61uyAbieRyPbgjn4GtC+7hPSaXuvZLoz+7nHyrphq0MFd547vDRcuGN78C17ftRbs/dszRPyEilPZvO6poVVLbYkV9e2sZWcwPKFeR3fLeizaY1Y7lOnBbA47qse3+zU+yW1oXnsCcb98ltn7x+tHv48v43zsy/FfiOOoP29Cqgtl2S4/Lf8rZr2sUcEAg5B3gjgQeBFM78c6yVfXjHrUbc9mZ7i2O1ywEcCmWCFgT3sSek8rHO4sBlR+Fc8a+214WlVLdDhriSOAHoHI1n3IGNdJ7d6YtkXMa4UGE26Dp3mIl+Gr5VubJszbpldxHTVZlumcCGN4H4UJ5ImP8Af1HqC5Vl9rRoW/kffXRaofkgtMWDTkEG4mlmGcj0Ae7Q48VjB8cg1fK2Ym3Y2g6AeizpDV5I3n1SlKVIuFyPyi7NNptBL5R9Dc6YZ+izLujkPQMBpz4eNatdX2ts2O5gkgmUNHIpVx4HoeRHEHka4/dwSWNx5ncEkHPm0x4SoOCk8BKBgEc+POsXalkLv7mDgemvytKw2gN/rceS2605JEe4tYtaZa6t8jI4RuJDkZ6JitqvlcWySDDorjowBHzrFs8gjka8gmhrgtGZhewtBzXaq9riln5xbY80uZIQOEZ+lh9ndyZ0j8pXFTtn5RbmHdd2neqPtLU5OOpgfBHuY19PDtCCXAOodxw+yxZLJLHmMOH5VS3lH2U+mPaEClprXUWReMkD7pY8cyB6Y8VPM18bW5WWNZEOpHAZSOYO8GpjY/bnZ90Qsdyiud3dyHupM9NEmCT7M1WNq2Y2XLrH+AmbII4W0rnJDdIHO/PBWOOBFTzMqKhd2ScMN05FStVjtkMS2bcu9dD+/E5H/ZVnzUB22T+6GUDPcvHMfyofTx+4Wqm9t9pbvB9FpvPdr+YLSpWKsCARvB3j31i6Z5kew18wrJO5eTQK4wyqw6MAR8DXwg2XAhykESnqsaA/ECvZLRjwmkHujP8A3IaxMUw4SI3gyEH9St/KpBWmD/X491GeLV9bq47rTMPsXSbrujYMwA/KCMeNdkKq6b8MrDeDvBVhwI5giuHXRn5DSfw4kQ+DIwV/0mrz5Le04mtvNZsRz2/oaWJGqLf3brrwSAuFJ6r41u7IJDHMwIz9Fl7QFXBw5KE7UbDGzW1qcWbthcn9g7cE3/ZE8PundwxiEW5V7lQhDaY3LkEEDUU0g45nB+BqK8tW02utqpa98ghiRAMuugM41O7HONWMDf0HWpS02lZgaY5YQOiug9+Aag2pCxj77Qbzga0y56qWxSuc26SKDxU52ZgEm1bUHhGlxPj8QCRL/wDsx91a3lA7Xw7RRbOydnYTKjtpIUux7qIAn1hrcvkf5QNfaw2ddszzW8DZa2ngR3IjAaUx6XAb0io0E5A37sZqrbF2a+zJLdJoCZopvOCmRiYBXT6CQHSWQMCFODkb+INW7M4R2ZjTgdeAJNSeFPVV7QL8ziOngu+7Ns0hhjhQYSNVRR4KAB/Ctqq3bdt9ntEspvIEVs4EkiRuCNxVo2IYMDuIxXsfbjZzcL2DfwOsAfE7q1FSVjpWraXkcq6opEkXhqRgwz0ypxW1RF5iontJsCG+gaCdcqcFSNzIw4OjcmFS9KIuD7ViudlSiK8BktydMN0BuPRZQM6W/rfxqSjcMAQQQRkEbwQeYrr13apKjRyIrowIZWAKkHiCDXM9s+TuW1LS7NOuPJZ7SRt3/AkPqn8LbvGse2bLEneiwO7Q8t3otCz24t7r8t+5RtK0bDaaSM0eGjlQ4kikGmRTzyp/jW9WA9jmG44UWqx4cKtK172wilGJI0cfiUH4HlWsuy3jVkguZ4kYFWjL97CQ24gwy6lxjdUnSpI7RLF9DiPRcvhjf9TQonY0l/Zp3StFcxjOkSao2UfdVhkaegPD5VLr2t9Erc2cyAjDadM6EHcfU9LH7teUq2zacg+poPl6fC47Cgo0nriPnzVZ2Hty3WRrUShlU/QOwZCUO8RsHAIdfV38QM1YpJFUZYgDqTgfE1r3+zYZxiWNX9o3+48RUFJs2ez9O2JmiG9oXOWA/wBJuPu/jUb+ytD6t7pOhpTodPBeDtI20OI3jMdNVNNtWPgNbfljkYfqC6fnQ3zfVt5j7e7X5M4rPZW0UuIhJGcg7iDxUjirDrX3m1Y9HTn8WcfKoCA110toeJ/QUoqRUHDgtQ3kn/1pP1Q/P6StfYCRXu0A72rzRW8ciTAKkoDS4EYIRjnADndnpVj7O9lBe26TXNy7K2oNDD9EgZSVZHfJdsMCNxWp1uxiIkTWz+bXEKaEkRRpdR9SaPcHU8TwOScEVsWSzNhN92fCvv5LMtE5kF0ZcaVXz2Y9tDhLd1jTOO5uIXi/5ckiK3x1jkMVXvKptee2uLfMMvmGNU5gJjZ2y3oGVd6Abjyzv39LfabXuY8Jd2zZ/wA22zLEfHu/2qZ440sB1qbjYMuRwI6Y3eIP8DVwOuOqVWpULhw7Ym+uIbbZVq9tIZFJlMrs2ket3i50lMcdWrPtxVx8raxGKIOZTJ3sfdKqtoGDmVhoXJPdauZ5bqsc6Wez++mjhUSSAySCMDWwUZyckBUHHJIUZPM1zu72xJLi9nUmaXCW8I3lVf1IEHNmyCx555AAV5aLRSjgMTgBqTu+V3DFeOJwzPAKc8ks9t57fIvdqCLYorAI2siUPpVgG4Bc+PtrrHdr0HwFVbsj2SSGxENykc0kpaW41KrqZH4qMjeFGFH5a3JdhSQ+lZztHj7GTMsB8ACdcfhobA+6auxsuMDdw5qs915xKsGK9qv2PaIa1guozbTMcIGIMUp4nuJuDH8JCt+HG+p8Gu1yvaUpREpSlEVc7Vdj7a/Ud6hWVR9HNGdMqHwYcR4HIrmG2tn32zP8SpubYf8AyYlwyjrNFvx7QceNdyrFlB41DPZ45m3XivqOSkjlfGatK4pYX0cyB4nDqeY/gRxB8DX3qwdp/JbBM5ns3Nncccxj6JieOuMfy67wao20J77Z507Rtz3eQBcQ+lGc49bp78HwrCtGyZGYx4jdr8LUht7HYPwPl9lN0rVsb6OZdUTq48Dw9o4itqslwLTQ5q+CCKhKxrKvK8XqgLxFtJ/OBkRSkLMoBIDn1JQo37z6JA45qYtbuOQZR1YeBzj2jl76x2hb95E6c2UgHoeR9xwawuNmRSek6DV94eiw9jrv+dWS5kjRfrXKvDSoOe7kFCGua43cvyqlNh7aNjKxfPm0pzJxPdSHA73H3CAAwHDGrrXR45AwDAggjIIOQQeBBHKuMtsmQfs7qZR0bRIPZlxq+JrY2Ot7a5EN2FQ/ZmIGPJ3lgmr0SeenAOeFaEFqjDKPeMMs9N+FPAlU5YHl1Wt8x8rsNYSOACSQAN5JOAB1JNc2fbe0CMG7VfFIEB+ZNRl1YNOc3U81z+GRsRj2RIFT4iu3WyBo+qvIH3ouBZpTp5hfftr2yW7ZrOzQzpkd+6+ikhU7ozKR+zBG879XAbia+HZubzO6F5eR+cejpVowf7tn1mjiPrgjcWHpDkME1txRKoCqAoHAAAD4Cs6rHaTmvDmNFBvxNOenTHiVOLE24Q44ldW2XtKG4iWWGRZI29VlOR7PA+BrerhaW81vKbixl7iU+unGGX/cj4Z/EN9WrYflTi1LDtCM2kp3a/Wt3PVX4rnx4da3bNbIrQO6cd2qzJrO+I97Ler9tDZ8c8ZilRXQ8VYZHgR0I5EbxXlhaGNAhd3C7lLHLaeQZuLY4ZO888nfX3hmV1DIwZTvBUggjqCONfarSgSlKURKUpREpSlESvnLGGBBAIO4gjIIPIivpSiLn23/ACVWczGa2LWc/HXF6hP4oicY8FxVYvth7Ssx9NELqIcZrf8AaAdXhO/x9HNdnxTFQT2aOYUeKqWOZ8Zq0ridjfRzJrjYMPmD0I4g+BrDat+sELzNwQZx1PAAe0nFXztb2IjuC1xbYguxvDqMJKRwSdR6wPDVxHXlXPbO0N7dxWssZTumaW7jb6pi3JGeqs5BB4FRmsObZpikBrVmvADErTjtt9h0cvpbXLKsQmSRDKuUZk0q5A1MFHEbs4DAHArcqydtbJprNyi6pIys8QHHXEdWB4ldS+xiOdVH+0Y+6Eur0GxpxvJJ4IF4ls7scc1UngrQxg4kimeOnipoZagh/ivvPcKg1McDcPaTuAAG8k9BXzW79NUeOWMsCU7xGTWBx06uY6HB8KsXZfYZGLm4Ud8f2aHB7lDy6d4c+kw66RwOd3tXszzi1cKPpU+lhPSRN67+QPqnwY1I2zRjuuz3g4BcunJNRl5lVesq+FrOHjVxwZVYfvAH+dat3tFozjuJmH3kCMPgG1fKqTY3ON0ZqyXgCpUjSoWLtRbE6WkMZ4YkVk3jiMsMc6l4pVYBlIYHgQQQfYRXr4ZI8HNI5heMka/6TVZ18rm3SRSrqGU8QwyK+tK4BINQu81EbPjutmv3thITHnMlo5LRuOfdk+q3iN/8K692S7Rw7QtxPEcfVkRvWjcesjDqOvMVzaq1J2qfZG0ZJIVBWeFTIh3KXDHEmOuAf1GvoNl218ruyfiaYHXDesm22ZrG32YcF+i6UpWys5KUpREpSlESlKURKUpRF4aoGyz3m0NoT44Sx2wP4YI1J/6pW/oVfzXPOyRz56efn978pCB8gKpW40h6hT2cd9T1aMWxbdZjOsEYlOcuFGrJ4nOOJ61IUrEDiMir9AlY1lWJrxerm2z10qyfckmi/wCXI6fyrbry7XRd3Kf6gkA/DKitn9QavaqWj/kdXX3x91chP9Y5KT8n92iXdxZyhStwBcQhgCCyqEmTB56QjY9tR/lI2ZBaTxGwQJdSEvLAm6J4VB1SOnBGLaQGGMnPGovbeFj73WYmiIkjkX1kdeBHXPAjnnFZbNWaQtc3R1XE2DJyCqB6MSjkoHLqTWu23t/iUeKn6aaHj0Cz3WR38irTQZ13LcjbIB3jIBweO/r41nSsTWGtRKiexvZlNr391PICbeJRCjb8NJkE6TzwAT+8OtZ2cM205ja2ZxGDi5ufqop4pGfrOR/XMdm2BseKzt0t4F0xoMDqTzZjzYneTX0OyrG6Ksr8yMB8rIt1oa/+tuWqk6UpWws9KUpREpSlESlKURKUpRF4a572cUR3O0Yfu3jy+64SOTP6i1dDrnd99Dt6RTuW6tY3U9ZLdmVgP3GB9/hVW2svQnhipoDR4U/XtY1lWAtFKxrKlEVI7ZWpjvIbgerKnm8ng6kvET7cuM9SBWpV02xs1LmF4XzpYcRxVhvV1PJgQCPZVEtzIjNDONMyetjg6n1ZU/C3yORyqO0MvNDxoKHlofbhgpYHUNzqFFXzma+jg+pEvfuPvNkhB7iNXtxU5UFtzZk3fLdWxHeouhkbcsibzpzyO8/Klp2oiJ0ThreTmsgIH7r8CPhXj4jIxpjxoMRqDmcOPDSi7bIGOcHanA7x9tylrm8VOOWbkqjUx9w5eJ3VELbSXqBpWMcDcIkPpsP9Vsbvyjod9S4vYsZ7xMddS/8AmtBNoDPm9opubhixWOPeAWJOXf1VUZ4kivYGPJpG03sMSMvEYUSUsze4Xd1R+1ePIzJptJrTdi2nZFOAMq4Eg1Y4sCxHuFdEqsdg+zRsLXu3fvJpGMs78mkfGceAAAHs8as9fVtqAATisEkEmiUpSul4lKUoiUpSiJSlKIlKUoiVz7ytp3MdrtFRvtJwX/2p/o5B8StdBrR2zs5Lm3lt5BlJUZG9jDGR4jjXhAIoUGBqoZHDAMpyCMg9QeBrOqd5Ob5xFJYTn+8WbmFvxR/ZuPDG73DrVwr5uWMxvLStVjrzQV7SlKjXSVE7e2Klyg36JUyYpBxUniCOaHAyvPHUA1LVjXoJBwSlVzuN2DtFKuiVPXXORg8HQ80PI+44IIrKaFXGGUMOhAI+Bqzdq9imeMSRYFxFloieDDdqib8LAeODg8t9XtLgSIHGRnkeII3FSOoIIPsqvNHd77Mj5HdXzCtQyXxdd+1pf2Ba5z5vF+hf/FfeyaWwkNxYqobAEsGNMcyLnA3D0ZBk4Yew5rcrGvIrVLG4ODj1OfBeyQxvbdI8l0vsr2kgv4BNATx0ujbnjccUdeR/jU3XBxfPs27G0IQTGcJeRjg8ZP7UDhrXr/5NdwsrlJo0lQhkdVdGHAqwBBHuNfU2a0Nnjvt68CsKWJ0TrrlsUpSrCiSlKURKUpREpSlESlKURK8r2lEXKvKhs2SzuottW6k6MRXaAetCeDn2bl9yHgDVosbxJokljbUjqGUjmDVmuYVkRkdQysCrKd4KtuII6EVye0hbYl55pISbC4Ym1lPCGQ7zC7cgc7iemfvYo26z9o2+3MeYViCW6aHJXulY1lWIr6UpSiLyue7WTudpSxAYWWNblfBixjkHvIDe1ia6HVA7SNq2ru+ytQrfmlkLAfpjB/eo7Fjhw9xRdM+ttN68pSlZyvLCaIMpVgCrAqQeYO4irT5H7tjYvbPkm1mkgBPHRueP/pfHuFVep/yNQs1vdXBPozXUhj8VjAjB+Kn4VtbHc688aUHj+VWbtKlG7/ZdHpSlfQLKSlKURKUpREpSlESlKURKUpREqO2zsqG6heCdA8bjDKfkQeRB3g8iKkaURcfXbjbIuhs+9dngKh7a5IJIj4aJsD6pGNQ8CRg1d4ZVdQyEMpGVIIII6gitPyobCa4tBPEMz2pM0Y++oBEsR8GT5gVz/ZWUUTWUxhEmH0gB4mJ+9E24HqV0msa3xxxuDjhXwrx1HTwV+zFzwQMaaLp9e1SbftXdpulto5fxQyaSf+HIN3uY0btlct6liB4yTqvyRGzVK7reH/ofIVjHcfAq1bV2lHbQtNK2EUe8k8FUc2J3AVQbFXJeaXdLM3eOOS7gFjHgqgD25POsNo3EjkXF2+vu96Ii4jizuLgZyzAcWPAZwBW4jggEEEEZBG8EHoahnkAZdZiDmeWgU0DDevOz0GvNZUpWJqirXJRvaO7aOAhN8shEMQHEySeiuPEZz7q7F2Z2QtpZwWy/ZRqpPVgPSb3tk++uZeTzZ3n9+b1hm2tSUg6POcapB1Cjh4kV2LFfV7OsxhixzOJ9gsK2TdpJhkMPnzXtKUq+qqUpSiJSlKIlKUoiUpSiJSlKIlKUoixIriV1YeY7QnssYib+8W3Tu5Dl0H5XJ3dK7fVB8rGw3lt0u4VzPaEyADi8Rx3se7juGfd41XtUAmiLPDmpoJezkDvHkqvWVa9jdLLGsiHKsAw9/I+NbFfHEEGhzX0IOGBXjDNQPms1oWMCd9CcnudWlkJ/y2O7T+H4VP0qSOUswpUHMHX835hcPYHc96q1j2iuZ2Kx2yKRxEkwDD2pjV8q+0uxruVWEt3p1DBWJAFGeWTvNWEj/wBVlUptAa6sTQ3zPia+yj7Ekd9xPVTPks2yIQuypVRHjQvA6AhZkzlyQeEgJyRnfnNdLrgW15zFebOmXc63cS+JVyFdfYRurvtfTWOczQh7s9eixrTEI5C0ZJSlKtKBKUpREpSlESlKURKUpREpSlESlKURK8Ne14aIuJdqtl/2TeEgYsblyyH6sExyWjPRG4j/ANGtivv5QNrf2heNYrvtbfBuCPrz78RZ6JxPj7KqVvFdWXoqpuYPq4P0qD7uD6w/rdXz+0oo3y9w0dqND1/2otaySPZH3h3dOH2VorGode0akfsLoH7vctn4jd861LvtJJ3iwxWshlcZAkKrhfvMFJIX24rMbZpXGlOOmW/krhnjAzVjzQHNQjRjUBdXKljwiUiNP051N7zjwqYUqFyMBQPYAB/KvHx3ANelB0OFfBdtfU/cVUZ5t5xtnZ1uOCyecPz3RYcZ8DoI99d8rkfkf2f5xd3O1GHof4a2J+6uNbD2kAZ8WFdcr6uyRdlA1hzpjzKwLRJ2khcEpSlWVClKUoiUpSiJSlKIlKUoiUpSiJSlKIla185WKRlGWCMVHiASB8a2a8Ioi4D2PX+5o+dTSFpJG5s7k6ifHl7qm6j9vWZ2TeNFICLOd2kt5Pqxs5JaBzyA5eHXfjeB58q+T2hC+OdxdriDvW/ZZWujF3QLyYMRhTpPXGceOM8ajDsRQGKO6StvM2dTk/iB3Ffw4wOWKlK1LvaCxb3WQKPrBSw9+nJA9tQROkHdZ+/nl4BTPDTi73URsq5jtfop1ET4z3p3rLji/eHfq6qa27DZlztl+6gDRWWfprgjGsDikSnef6z0P22jaRXlsVyGVlJRhvwd+GB9tdL8me1vOtl28hADBe6cAADXEdBIA3DOM48a2NnRxyvMrh3wctAd/wCZLMtb3xtDGkXTqNeCntl7Ojt4UghUJHGAqqOQH8Tzz1repSttZqUpSiJSlKIlKUoiUpSiJSlKIlKUoiUpSiJSlKItDauzYbmJoZo1kjbcysNx6eII6jeK5pfeTW5tSW2dOJIt582nJ3eEco4ew48TXWTWJrh7GvbdcKhdMcWuq00XC7jab2+68tZ7Y/eZC8XulQEEViO0VpjPnEf6hn4ca7ff/sn9lfmPtH//AEx/ufzrOdsaFzu6SFcbtGQEAgFS/Z2G9u5512fbnuJGBWaQFI4zjDuCdzZIzpGfZXbuxHZ5dn2UdqG1lcl2xjU7HUxA6ZO7wFSeyP8ADx/lFborQjiZH9I58aYYqo6Rz817SlKkXC//2Q==", ImageType.network),
          columns:args.c,
          rows: args.r,
          wallThickness: 3.0,
          wallColor: args.mycolor,
          finish: MazeItem("data:image/png;base64,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",ImageType.network),
          onFinish: ()
          {
            setState(() {
              Navigator.of(context).pushNamed("Mazepage2");
            });
          },
        ),
      ),
    );
  }
}


class rowcolum
{
  late int r;
  late int c;
  late Color mycolor;
  rowcolum({required this.r,required this.c,required this.mycolor});

}
//--------------------
class Mazepage2 extends StatefulWidget {
  const Mazepage2({Key? key}) : super(key: key);

  @override
  State<Mazepage2> createState() => _Mazepage2State();
}

class _Mazepage2State extends State<Mazepage2> {
  bool animated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/fire-cracker.png",height:200),
              const SizedBox(height:50),
              AnimatedDefaultTextStyle(
                child: const Text('Congratulation'), style: animated?const TextStyle(
                color: Colors.yellow,
                fontSize: 60,
              ):const TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.linear,),
              const SizedBox(height:50),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.of(context).pushNamedAndRemoveUntil("/", (route) => false);
                    });
                  }, child: const Text("Restart",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.black,
                  ),),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    animated=!animated;
                  });
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}