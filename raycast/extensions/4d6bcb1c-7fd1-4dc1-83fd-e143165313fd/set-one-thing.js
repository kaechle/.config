"use strict";var c=Object.defineProperty;var s=Object.getOwnPropertyDescriptor;var p=Object.getOwnPropertyNames;var d=Object.prototype.hasOwnProperty;var u=(t,e)=>{for(var o in e)c(t,o,{get:e[o],enumerable:!0})},T=(t,e,o,r)=>{if(e&&typeof e=="object"||typeof e=="function")for(let a of p(e))!d.call(t,a)&&a!==o&&c(t,a,{get:()=>e[a],enumerable:!(r=s(e,a))||r.enumerable});return t};var f=t=>T(c({},"__esModule",{value:!0}),t);var A={};u(A,{default:()=>m});module.exports=f(A);var n=require("@raycast/api"),i=require("react/jsx-runtime"),h=new n.Cache,g=["Eat more healthily","Exercise","Reply to Sarah\u2019s email","Be happy","Stop procrastinating","Finish the \u{1F984} project","Important meeting today"],y=g[Math.floor(Math.random()*g.length)];function l(){(0,n.launchCommand)({name:"show-one-thing",type:n.LaunchType.Background}),(0,n.popToRoot)(),(0,n.closeMainWindow)()}function m(t){if(t.arguments?.oneThing)return h.set("onething",t.arguments.oneThing),l(),null;let e=h.get("onething");return(0,i.jsx)(n.Form,{actions:(0,i.jsxs)(n.ActionPanel,{children:[(0,i.jsx)(n.Action.SubmitForm,{icon:n.Icon.Pencil,title:"Set the Thing",onSubmit:o=>{h.set("onething",o.text),l()}}),e?(0,i.jsx)(n.Action,{icon:n.Icon.Trash,title:"Remove the Thing",onAction:()=>{h.remove("onething"),l()}}):null]}),children:(0,i.jsx)(n.Form.TextField,{id:"text",placeholder:y,title:"One Thing"})})}0&&(module.exports={});
