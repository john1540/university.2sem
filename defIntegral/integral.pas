type func = function(a:real):real; //NOT WORK

type info = record
	sum:real;
	y:real;
	end;

//type heap = array[0..1000] of info;

const POLENULLX = 30;
const POLENULLY = 300;
const POLEENDX = 330;
const POLEENDY = 0;

const DEL = 2;

var
i:integer;
from,too,y1,y2,e:real;
n:integer;


//test:func;

procedure importFromFile(var from,too,y1,y2,e:real; var n:integer; name:string);
	var f:text;
	i,n,l:integer;
	begin
	assign(f,name);
	reset(f);
	readln(f,from);
	readln(f,too);
	readln(f,y1);
	readln(f,y2);
	readln(f,e);
	readln(f,n);
	close(f);
	end;




//-------------------------------------------------- WORK FUNCTION
function work_func(a:real):real;
	begin
	work_func:=a*sin(a);
	end;
//--------------------------------------------------


{$F+}
{function test(a:real):real; // NOT WORK
	begin
	test:=a;
	end;}
{$F-}


//------------------------------------------------

//DELETE FUNCTION 'GET INTEGRAL SUM' | THIS IS VANDALISM!!

//------------------------------------------------

function getFunctionValue(f:func;t:real):real;// NOT WORK
	begin
	getFunctionValue:=f(t);
	end;
//==================================================================
	
procedure plotLine(x,y: real);
	begin end;


	
//--------------------------------------------------

begin

importFromFile(from,too,y1,y2,e,n,'input.txt');

//CHANGE OF INTEGRAL BRANCH
//CHANGE OF INTEGRAL BRANCH
//CHANGE OF INTEGRAL BRANCH
//CHANGE OF INTEGRAL BRANCH
//CHANGE OF INTEGRAL BRANCH

end.
