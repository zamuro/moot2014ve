class Ability
  include CanCan::Ability

  def initialize(usuario)
    usuario ||= Usuario.new 
    can :read, :all
    can :update, DatosRegistro do |datos_registro|
    	datos_registro.usuario_id == current_usuario.id
    end
	can :update, DatosUsuario do |datos_usuario|
	    	datos_usuario.usuario_id == current_usuario.id
	end
	can :update, Alergy do |alergies|
	    	alergies.usuario_id == current_usuario.id
	end
	can :update, Enfermedade do |enfermedades|
	    	enfermedades.usuario_id == current_usuario.id
	end
	can :update, Padecimiento do |padecimientos|
	    	padecimientos.usuario_id == current_usuario.id
	end
	can :update, Vacuna do |vacunas|
	    	vacunas.usuario_id == current_usuario.id
	end
  end

  def initialize(admin)
	can :manage, :all
  end
end
