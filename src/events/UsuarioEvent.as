/**
 * Created with IntelliJ IDEA.
 * User: gonzalocedillo
 * Date: 18/09/12
 * Time: 17:41
 * To change this template use File | Settings | File Templates.
 */
package events {
import flash.events.Event;

public class UsuarioEvent extends Event{

    public static const FB_INICIADO:String = 'UsuarioEvent.FB_INICIADO';

    public function UsuarioEvent(tipo:String) {
        super(tipo);
    }
}
}
