package mediators
{
	import com.hexagonstar.util.debug.Debug;
	
	import org.robotlegs.mvcs.Mediator;
	
	import views.NombreView;
	import events.ConfiguradorEvent;
	
	public class NombreMediator extends Mediator {
		
		[Inject]
		public var vista:NombreView;
		
		public function NombreMediator() {
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, ConfiguradorEvent.NOMBRE_USUARIO, mostrarNombre);
			eventMap.mapListener(eventDispatcher, ConfiguradorEvent.PINTAR_MENUS, mostrar);
			eventMap.mapListener(eventDispatcher, ConfiguradorEvent.VOLVER, volver);
		}
		
		private function mostrarNombre(e:ConfiguradorEvent):void{
			vista.nombre = e.datos.nombre;
		}
		
		private function mostrar(e:ConfiguradorEvent):void{
			vista.entrar();
		}
		
		private function volver(e:ConfiguradorEvent):void{
			vista.borrar();
		}
		
		
	}
}