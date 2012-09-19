package context {

import commands.FBIniciadoCommand;

import events.UsuarioEvent;

import flash.display.DisplayObjectContainer;
		
	import com.hexagonstar.util.debug.Debug;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	// Imports del proyecto
	
	import models.IDBModel;
	import models.DBModel;
	import models.IUsuarioModel;
	import models.UsuarioModel;
	import services.IFBService;
	import services.FBService;
	
	import events.ConfiguradorEvent;
	
	import commands.CreacionCommand;
	import commands.MenuCategoriasCommand;
	import commands.FBCommand;
	
	import mediators.MainMediator;
	import mediators.InterfazMediator;
	import mediators.MenuCategoriasMediator;
	import mediators.SubMenuCategoriasMediator;
	import mediators.MunecoMediator;
	import mediators.PersonajesMediator;
	import mediators.BtnVolverMediator;
	import mediators.BtnFinMediator;
	import mediators.NombreMediator;
	import mediators.AmigosListMediator;
	
	import views.MainView;
	import views.InterfazView;
	import views.MunecoView;
	import views.PersonajesView;
	import views.MenuCategoriasView;
	import views.SubMenuCategoriasView;
	import views.BtnVolverView;
	import views.BtnFinView;
	import views.NombreView;
	import views.AmigosListView;


	public class MainContext extends Context {
	
	    public function MainContext(contextView:DisplayObjectContainer=null) {
	        super(contextView);
	    }
	
	    override public function startup():void
	    {
	        mapCommands();
	        mapModels();
	        mapViews();
	
	        super.startup();
	    }
	
	    private function mapCommands():void
	    {
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, CreacionCommand, ContextEvent);
	        commandMap.mapEvent(ConfiguradorEvent.PINTAR_MENUS, MenuCategoriasCommand, ConfiguradorEvent);
			commandMap.mapEvent(ConfiguradorEvent.CARGAR_AMIGOS, FBCommand, ConfiguradorEvent);
			commandMap.mapEvent(UsuarioEvent.FB_INICIADO, FBIniciadoCommand, UsuarioEvent);
	    }
	
	    private function mapModels():void
	    {
			injector.mapSingletonOf(IUsuarioModel, UsuarioModel);
	        injector.mapSingletonOf(IDBModel, DBModel);
			injector.mapSingletonOf(IFBService, FBService);
	    }
	
	    private function mapViews():void
	    {
			mediatorMap.mapView(MainView, MainMediator);
			mediatorMap.mapView(InterfazView, InterfazMediator);
			mediatorMap.mapView(MenuCategoriasView, MenuCategoriasMediator);
			mediatorMap.mapView(SubMenuCategoriasView, SubMenuCategoriasMediator);
			mediatorMap.mapView(MunecoView, MunecoMediator);
			mediatorMap.mapView(PersonajesView, PersonajesMediator);
			mediatorMap.mapView(BtnVolverView, BtnVolverMediator);
			mediatorMap.mapView(BtnFinView, BtnFinMediator);
			mediatorMap.mapView(NombreView, NombreMediator);
			mediatorMap.mapView(AmigosListView, AmigosListMediator);
	    }
	
	}
}
