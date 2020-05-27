unit UmicheleCalc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnMais: TButton;
    btnMenos: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtRetorno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lbResultado: TLabel;
    procedure btnDividirClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure edtValor1Change(Sender: TObject);
    procedure edtValor2Change(Sender: TObject);
  private
      valor1, valor2, resultado: integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnMaisClick(Sender: TObject);
begin
  valor1 := strToInt(edtValor1.text);
  valor2 := strToInt(edtValor2.text);
  resultado := valor1 + valor2;

  edtRetorno.text:= IntToStr(resultado);

end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  valor1 := strToInt(edtValor1.text);
  valor2 := strToInt(edtValor2.text);
  resultado := valor1 div valor2;

  edtRetorno.text:= IntToStr(resultado);
end;

procedure TForm1.btnMenosClick(Sender: TObject);
begin
  valor1 := strToInt(edtValor1.text);
  valor2 := strToInt(edtValor2.text);
  resultado := valor1 - valor2;

  edtRetorno.text:= IntToStr(resultado);
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  valor1 := strToInt(edtValor1.text);
  valor2 := strToInt(edtValor2.text);
  resultado := valor1 * valor2;

  edtRetorno.text:= IntToStr(resultado);
end;

procedure TForm1.edtValor1Change(Sender: TObject);
begin

end;

procedure TForm1.edtValor2Change(Sender: TObject);
begin

end;

end.

