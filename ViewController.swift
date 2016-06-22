//
//  ViewController.swift
//  IOS_Project
//
//  Created by MasterBoot on 16/3/17.
//  Copyright © 2016年 MasterBoot. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lv: UITextField!//定义输入框
    var loop=0;
    var x:Double=0.0;//左操作数
    var y:Double=0.0;//右操作数
    var point=false;//判断小数点，为false时可以按点
    @IBAction func x_y(sender: UIButton) {
        X();
        lv.text! = "";
        point=false;
        loop=6;
    }
    @IBAction func x_2(sender: UIButton) {
        X();
        lv.text!="\(x*x)";
        
    }
    @IBAction func Delstr(sender: UIButton) {
        if( lv.text!.isEmpty||lv.text!=="0")
        {
            lv.text!="0";
        }
        else if((lv.text!.characters.count)==1)
        {
            lv.text!="0";
        }
        else
        {
            var str=lv.text!;
            str.removeAtIndex(str.endIndex.predecessor());
            lv.text!=str;
        }
        
    }
    @IBAction func Sqrt(sender: UIButton) {
        X();
        var str:String;
        str="\(sqrt(x))";
        cutSet(str);
    }
    @IBAction func num1(sender: AnyObject) {
        Zero();
        lv.text! += "1";
    }
    @IBAction func num2(sender: UIButton) {
        Zero();
        lv.text! += "2";
    }
    @IBAction func num3(sender: UIButton) {
        Zero();
        lv.text! += "3";
    }
    @IBAction func num4(sender: UIButton) {
        Zero();
        lv.text! += "4";
    }
    @IBAction func num5(sender: UIButton) {
        Zero();
        lv.text! += "5";
    }
    @IBAction func num6(sender: UIButton) {
        Zero();
        lv.text! += "6";
    }
    @IBAction func num7(sender: UIButton) {
        Zero();
        lv.text! += "7";
    }
    @IBAction func num8(sender: UIButton) {
        Zero();
        lv.text! += "8";
    }
    @IBAction func num9(sender: UIButton) {
       Zero();
        lv.text! += "9";
    }
    @IBAction func num0(sender: UIButton) {
        if(lv.text!.isEmpty){
            lv.text! = "0";
        }
        else{
            Zero();
            lv.text! += "0";
        }
        
    }
    @IBAction func setPai(sender: UIButton) {
        lv.text!="3.14";
    }
    
    @IBAction func Point(sender: UIButton) {
        if(!point)
        {
            if(!(lv.text!=="")){
                lv.text! += ".";
                point=true;
            }
        }
    }
    @IBAction func JIA(sender: UIButton) {
        X();
        lv.text! = "";
        point=false;
        loop=1;
    }
    @IBAction func JIAN(sender: UIButton) {
        X();
        lv.text!="";
        point=false;
        loop=2;
    }
    @IBAction func CHENG(sender: UIButton) {
        X();
        lv.text!="";
        point=false;
        loop=3;
    }
    
    @IBAction func CHU(sender: UIButton) {
        X();
        lv.text!="";
        point=false;
        loop=4;
    }
   
    @IBAction func mode(sender: UIButton) {
        X();
        lv.text!="";
        point=false;
        loop=5;
    }
    
    @IBAction func Count(sender: UIButton) {
        Y();
        switch (loop){
        case 0:
            lv.text!="0";break;
        case 1:
            lv.text="\(x+y)";break;
        case 2:
            lv.text="\(x-y)";break;
        case 3:
            lv.text="\(x*y)";break;
        case 4:
            lv.text="\(x/y)";break;
        case 5:
            lv.text="\(fmod(x,y))";break;
        case 6:
            lv.text="\(pow(x,y))";break;
        default:
            lv.text!="0";
        }
    }
    @IBAction func del(sender: UIButton) {
        lv.text!="0";
        x=0.0;
        y=0.0;
        point=false;
    }
    //左操作数语句
     func X(){
        if(!lv.text!.isEmpty){
            x=(Double)(lv.text!)!;
        }
        else{
            lv.text!="0";
        }
    }
    //右操作数语句
    func Y(){
        if(!lv.text!.isEmpty){
            y=(Double)(lv.text!)!;
        }
        else{
            lv.text!="0";
        }
    }
    func Zero(){
        if(lv.text!=="0"){
            lv.text!="";
        }
    }
    func cutSet(var str:String){
        let strend=(str as NSString).substringFromIndex(str.characters.count-2);
        if(strend==".0")
        {
            str.removeAtIndex(str.endIndex.predecessor());
            str.removeAtIndex(str.endIndex.predecessor());
            lv.text!=str;
        }
        else
        {
            lv.text!=str;
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
