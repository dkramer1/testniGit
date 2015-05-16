//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "kovsyst2.h"
#include "ktsyst2.h"

USEFORM("BlagPOSDM.cpp", DM);
USEFORM("BlagPOS0100.cpp", frmBlagPOS0100);
USEFORM("untPostaviPOS.cpp", frmDefinePOS);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
  try
  {
     Application->Initialize();
     DefinirajPotDoDBNAMES(NULL);
     Application->Title =  MerT("Maloprodajni informacijski sistem");
     Application->CreateForm(__classid(TDM), &DM);
     Application->Run();
  }
  catch (Exception &exception)
  {
    Application->ShowException(&exception);
  }
  return 0;
  //
  // naistem mestu naredimo �e spremebno na veji-1
  /*
  delamo  spremembe na veji-2
  */
  // �e malo sprememb na MASTER veji
}
//---------------------------------------------------------------------------
