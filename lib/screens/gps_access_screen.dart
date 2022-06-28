import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/blocs/blocs.dart';


class GpsAccessScreen extends StatelessWidget {
  
  const GpsAccessScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:BlocBuilder<GpsBloc, GpsState>(
          builder: (context,state){
            //print('state: $state');
          return !state.isGpsEnebled
          ? const _EnebleGpsMessage()
          : const _AccessButton();
        }
        ) 
        //_AccessButton(),
     ),
   );
  }
}

class _AccessButton extends StatelessWidget {
  const _AccessButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Es necesario el acceso a GPS'),
        MaterialButton(
          child: const Text('Solicitar acceso', style: TextStyle( color: Colors.white),),
          color: Colors.black,
          shape: const StadiumBorder(),
          elevation: 0,
          splashColor: Colors.transparent,
          onPressed: (){
            
            final gpsBloc = BlocProvider.of<GpsBloc>(context);
            gpsBloc.askGpsAccess();

          }
        )
      ],
    );
  }
}

class _EnebleGpsMessage extends StatelessWidget {
  const _EnebleGpsMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Debe de habilitar el GPS',
      style: TextStyle( fontSize: 25, fontWeight: FontWeight.w300),
    );
  }
}