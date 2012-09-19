/**
 * Created with IntelliJ IDEA.
 * User: gonzalocedillo
 * Date: 14/09/12
 * Time: 12:39
 * To change this template use File | Settings | File Templates.
 */
package services {
import com.demonsters.debugger.MonsterDebugger;
import com.google.analytics.debug.Debug;

import flash.net.NetConnection;
import flash.net.Responder;

import models.IUsuarioModel;

import org.robotlegs.mvcs.Actor;

public class UsuarioService extends Actor implements IUsuarioService{


    private const GATEWAY:String = 'http://aquariustest.cocacola.es/appsaquarius/escuela/pruebas_GONZALO/amfphp/gateway.php';
    private var cn:NetConnection;

    public function UsuarioService() {
        super ();
        MonsterDebugger.initialize(this);
    }


    public function dameUsuario(_id:String):void
    {
        cn = new NetConnection();
        cn.connect(GATEWAY);
        cn.call('ContactService.dameUsuario',
                new Responder(function(_data:Object){

                    MonsterDebugger.trace(this, _data);
                    //modelo.setUsuario(_data);

                }),
                _id);
        cn.close();
    }


}
}
