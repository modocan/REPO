package models {

import events.ConfiguradorEvent;

import org.robotlegs.mvcs.Actor;

	public class UsuarioModel extends Actor implements IUsuarioModel {

        private var login_cocacola:String;
        private var nombre_usuario:String = 'Gonzalo CEdillo';
        private var id_facebook:String = '1829890023';


	    public function UsuarioModel() {
	        super();
	    }


        public function get_idFB():String
        {
            return id_facebook;
        }

        public function set_idFB(valor:String):void
        {
            id_facebook = valor;
        }

        public function setNombreUsuario(valor:String):void
        {
            this.nombre_usuario = valor;
        }

        public function getNombreUsuario():String
        {
            return this.nombre_usuario;
        }

        public function setUsuario(datos:Object)
        {

        }
	
	}
}
