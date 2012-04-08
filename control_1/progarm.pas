program control_1;

type people = record
	fio:string;
	zp:real;
	nzp:real;
	end;

const MIN = 10000;
	
var

f1,f2,res:text;
buf:people;
p:real;
o:real;

procedure changeZp(var a:people; p:real); begin a.nzp:=a.zp+a.zp*(p/100); end;

procedure addPeopleRes(var f:text; var a:people); begin writeln(f,a.fio,' ',a.zp:0:2,' ',a.nzp:0:2); end;
	
function discoverFile(var f:text; p:real):real;
	var buf:people;
	omg:real;
	num, i:integer;
	begin
	omg:=0;
	readln(f,num);
	for i:=1 to num do
		begin
		readln(f,buf.fio);
		readln(f,buf.zp);
		if(buf.zp < MIN) then
			begin
			changeZp(buf,p);
			addPeopleRes(res,buf);
			omg:=omg+buf.nzp-buf.zp;
			end;
		end;
	discoverFile:=omg;
	end;
	
begin


assign(f1,'base1.txt');
assign(f2,'base2.txt');
assign(res,'result.txt');

reset(f1);
reset(f2);
rewrite(res);

readln(p);
o:=0;
o:=discoverFile(f1,p) + discoverFile(f2,p);
//discoverFile(f1,p);
//discoverFile(f2,p);

writeln('We need +',o:0:2);

close(f1);
close(f2);
close(res);

end.
