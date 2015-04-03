package abrdeploiement is 
type abr_t is private
	procedure zig(a:in out abr_t);
	procedure zag(a:in out abr_t);
	procedure zigzag(a:in out abr_t);
	procedure zagzig(a:in out abr_t);
	procedure zagzag(a:in out abr_t);
	procedure zigzig(a:in out abr_t);
	procedure insertion(a:in out abr_t;v:in integer);
	procedure recherche(a:in out abr_t;v:in out integer;bool:in out boolean);
	
	private

	type abr_t;
	
	type noeud is record
	val:integer;
	g,d:abr_t;
	end record;
	
	type abr_t is access noeud;
	
end abrdeploiement;

