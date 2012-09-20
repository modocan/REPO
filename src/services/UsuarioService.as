/**
 * Created with IntelliJ IDEA.
 * User: gonzalocedillo
 * Date: 14/09/12
 * Time: 12:39
 * To change this template use File | Settings | File Templates.
 */
package services {
import com.demonsters.debugger.MonsterDebugger;
import com.hexagonstar.util.debug.Debug;

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
        Debug.trace('[Conecta SERVICE]');
        cn = new NetConnection();
        cn.connect(GATEWAY);
        cn.call('ContactService.dameJugador',
                new Responder(function(_data:Object){

                    Debug.trace('[RESPUESTA]', Debug.LEVEL_ERROR);
                    Debug.inspect(_data);

                    MonsterDebugger.trace(this, _data);
                    MonsterDebugger.inspect(_data);
                    //modelo.setUsuario(_data);

                }, function(_fallo:Object){

                    Debug.inspect(_fallo);
                    MonsterDebugger.trace(this, _fallo);

                }),
                _id);
        cn.close();
    }


}
}
