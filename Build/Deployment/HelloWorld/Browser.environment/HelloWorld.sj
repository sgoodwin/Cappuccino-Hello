@STATIC;1.0;p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;15;AppController.jt;1297;@STATIC;1.0;I;21;Foundation/CPObject.jt;1252;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("theWindow"),new objj_ivar("helloString"),new objj_ivar("hellos"),new objj_ivar("i")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("helloString"),function(_3,_4){
with(_3){
return helloString;
}
}),new objj_method(sel_getUid("setHelloString:"),function(_5,_6,_7){
with(_5){
helloString=_7;
}
}),new objj_method(sel_getUid("hellos"),function(_8,_9){
with(_8){
return hellos;
}
}),new objj_method(sel_getUid("setHellos:"),function(_a,_b,_c){
with(_a){
hellos=_c;
}
}),new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_d,_e,_f){
with(_d){
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_10,_11){
with(_10){
objj_msgSend(theWindow,"setFullPlatformWindow:",YES);
objj_msgSend(_10,"setHellos:",objj_msgSend(CPArray,"arrayWithObjects:","HEY SUP?","SUP?","HEY DUDE","HI",nil));
i=0;
}
}),new objj_method(sel_getUid("sayHello:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(objj_msgSend(_12,"hellos"),"objectAtIndex:",i);
objj_msgSend(_12,"setHelloString:",_15);
i++;
if(i>=objj_msgSend(objj_msgSend(_12,"hellos"),"count")){
i=0;
}
}
})]);
