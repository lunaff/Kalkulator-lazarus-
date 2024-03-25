unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    titik: TButton;
    AC: TButton;
    tambah: TButton;
    kurang: TButton;
    kali: TButton;
    bagi: TButton;
    hitung: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    edthasil: TEdit;
    procedure ACClick(Sender: TObject);
    procedure bagiClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure hitungClick(Sender: TObject);
    procedure kaliClick(Sender: TObject);
    procedure kurangClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure edthasilChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure titikClick(Sender: TObject);
  private

  public
    bilanganPertama: integer;
    bilanganKedua: integer;
    hasil: integer;
    perintahTerakhir: string;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button8Click(Sender: TObject);
begin

end;

procedure TForm1.Button11Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ACClick(Sender: TObject);
begin
          edthasil.Text := '0';
end;

procedure TForm1.bagiClick(Sender: TObject);
begin
          bilanganPertama := StrToInt(edthasil.Text);
       edthasil.Text:= '';
       edthasil.Clear;
       perintahTerakhir := 'bagi';
end;

procedure TForm1.hitungClick(Sender: TObject);
begin
     if perintahTerakhir = 'tambah' then
     begin
        bilanganKedua := StrToInt(edthasil.Text);
        hasil := bilanganPertama + bilanganKedua;
        edthasil.Text := FloatToStr(hasil);
     end;
     if perintahTerakhir = 'kurang' then
     begin
        bilanganKedua := StrToInt(edthasil.Text);
        hasil := bilanganPertama - bilanganKedua;
        edthasil.Text := FloatToStr(hasil);
     end;
     if perintahTerakhir = 'kali' then
     begin
        bilanganKedua := StrToInt(edthasil.Text);
        hasil := bilanganPertama * bilanganKedua;
        edthasil.Text := FloatToStr(hasil);
     end;
     if perintahTerakhir = 'bagi' then
     begin
        bilanganKedua := StrToInt(edthasil.Text);
        hasil := bilanganPertama DIV bilanganKedua;
        edthasil.Text := FLoatToStr(hasil);
     end;

end;

procedure TForm1.kaliClick(Sender: TObject);
begin
     bilanganPertama := StrToInt(edthasil.Text);
       edthasil.Text:= '';
       edthasil.Clear;
       perintahTerakhir := 'kali';

end;

procedure TForm1.kurangClick(Sender: TObject);
begin
     bilanganPertama := StrToInt(edthasil.Text);
       edthasil.Text:= '';
       edthasil.Clear;
       perintahTerakhir := 'kurang';

end;


procedure TForm1.tambahClick(Sender: TObject);
begin
       bilanganPertama := StrToInt(edthasil.Text);
       edthasil.Text:= '';
       edthasil.Clear;
       perintahTerakhir := 'tambah';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
          edthasil.Text := edthasil.Text + TButton(Sender).Caption;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin


end;

procedure TForm1.edthasilChange(Sender: TObject);
begin
     edthasil.Text := edthasil.Text
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

procedure TForm1.titikClick(Sender: TObject);
begin
     edthasil.Text := edthasil.Text + '.';

end;

end.

