CREATE DEFINER=`root`@`localhost` PROCEDURE `creer_categorie`(IN `nom_categorie` VARCHAR(50))
    READS SQL DATA
begin

insert into categorie(categorie_nom)
values(nom_categorie);

end

CREATE DEFINER=`root`@`localhost` PROCEDURE `creer_role`(IN `nom_role` VARCHAR(50))
    READS SQL DATA
begin
insert into role(role_nom)
values(nom_role);
end