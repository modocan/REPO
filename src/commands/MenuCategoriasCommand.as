package commands {
	
import com.hexagonstar.util.debug.Debug;

import events.ConfiguradorEvent;

import models.IDBModel;

import org.robotlegs.mvcs.Command;

	public class MenuCategoriasCommand extends Command {
	
	    [Inject]
	    public var _evt:ConfiguradorEvent;
	
	    [Inject]
	    public var _modelo:IDBModel;
	
	
	    public function MenuCategoriasCommand() {
	        super();
	    }
	
	    override public function execute():void
	    {
			Debug.trace('Comando MenuCategoriasCommand');
			Debug.traceObj(Object(_evt.datos.sexo));
			_modelo.cargarElementos(_evt.datos.usuario);
	    }
	
	}
}
