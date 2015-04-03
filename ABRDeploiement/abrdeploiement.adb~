with TEXT_IO;
use TEXT_IO;
with abrdeploiement;
use abrdeploiement;

package abrdeploiement is

procedure zig(a:in out abr_t) is
a1:abr_t;
begin
	a1:=a;
	a:=a1.all.g;
	a1.all.g:=a.all.d;
	a.all.d:=a1;
end zig;

procedure zag(a:in out abr_t) is
a1:abr_t;
begin
	a1:=a;
	a:=a.all.d;
	a1.all.d:=a.all.g;
	a.all.g:=a1;
end zag;


procedure zigzag(a:in out abr_t) is
a1,a2:abr_t;
begin
	a1:=a.all.g;
	a2:=a1.all.d;
	--etape du zig
	a.all.g:=a2;
	a1.all.d:=a2.all.g;
	a2.all.g:=a1;
	--etape du zag
	a.all.g:=a2.all.d;
	a2.all.d:=a;
	--renommage
	a:=a2;
end zigzag;

procedure zagzig(a:in out abr_t) is
a1,a2:abr_t;
begin
	a1:=a.all.d;
	a2:=a1.all.g;
	--etape du zag
	a.all.d:=a2;
	a1.all.g:=a2.all.d;
	a2.all.d:=a1;
	--etape du zig
	a.all.d:=a2.all.g;
	a2.all.g:=a;
	--renommage
	a:=a2;
end zagzig;

procedure zagzag(a:in out abr_t) is
a1,a2:abr_t;
begin
	a1:=a.all.d;
	a2:=a1.all.d;
	--etape du zag1
	a.all.d:=a2;
	a1.all.d:=a2.all.g;
	a2.all.g:=a1;
	--etape du zag2
	a.all.d:=a1;
	a2.all.g:=a;
	--renommage
	a:=a2;
end zagzag;

procedure zigzig(a:in out abr_t);
a1,a2:abr_t;
begin
	a1:=a.all.g;
	a2:=a1.all.g;
	--etape du zig1
	a.all.g:=a2;
	a1.all.g:=a2.all.d;
	a2.all.d:=a1;
	--etape du zig2
	a.all.g:=a1;
	a2.all.d:=a:;
	--renommage
	a:=a2;
end zigzig;

procedure insertion(a:in out abr_t;v:in integer) is
a1,a2:abr_t;
begin
	if a=null then
		a.all.val:=v;
		a.all.g:=null;
		a.all.d:=null;
	else
		if v>a.all.val then
			a1:=a.all.d;
			if a1=null then 
				a1.all.val:=v;
				zag(a);
			else
				if v>a1.all.val then
					a2:=a1.all.d;
					insertion(a2,v);
					zagzag(a);
				else
					a2:=a1.all.g;
					insertion(a2,v);
					zagzig(a);
				end if;
			end if;
		else
			a1:=a.all.g;
			if a1:=null then
				a1.all.val:=v;
				zig(a);
			else
				if v>a1.all.val then
					a2:=a1.all.d;
					insertion(a2,v);
					zigzag(a);
				else
					a2:=a1.all.g;
					insertion(a2,v);
					zigzig(a);
				end if;
			end if;
		end if;
	end if;
end insertion;

procedure recherche(a:in out abr_t,v:in integer;bool:in out boolean);
a1,a2:abr_t;
begin
	if a=null then
		bool:=false;
	else
		if a.all.val=v then
			bool:=true;
		else
			if a.all.val<v then
				a1:=a.all.d;
				if a1/=null then
					if a1.all.val=v then
						bool:=true;
						zag(a);
					else
						if a1.all.val<v then
							a2:=a1.all.d;
							recherche(a2,v);
							zagzag(a);
						else
							a2:=a1.all.g;
							recherche(a2);
							zagzig(a);
						end if;
					end if;
				end if;
			else
				a1:=a.all.g;
				if a1/=null then
					if a1.all.val=v then
						bool:=true;
						zig(a);
					else
						if a1.all.val>v then
							a2:=a1.all.g;
							recherche(a2);
							zigzig(a);
						else
							a2:=a1.all.d;
							recherche(a2);
							zigzag(a);
						end if;
					end if;
				end if;
			end if;
		end if;
	end if;
end recherche;

end abrdeploiement;
