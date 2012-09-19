package commands
{

import org.robotlegs.mvcs.Command;

import services.IFBService;

import views.InterfazView;
import views.MainView;
import views.PruebaView;

public class CreacionCommand extends Command {

    [Inject]
    public var fb:IFBService;
	
	    public function CreacionCommand() {
	        super();
	    }
	
	    override public function execute():void
	    {
			contextView.addChild(new InterfazView());

            fb.init();

			// TODO de momentos instanciamos "a pelo" el configurador. Luego habrá que comprobar para decidir
			//contextView.addChildAt(new MainView(), 0);
            //

            //contextView.addChildAt(new PruebaView(), 0);
	    }
	
	}
}
