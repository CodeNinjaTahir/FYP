Rails.application.routes.draw do
  get "/", to: "main#index"
  root :to => 'main#index'
  get "/login", to: "login#loginpage"
  post "/login", to: "login#create"
  get "/register", to: "register#signup"
  post "/register",to: "register#create"
  get "/owner", to: "owner#ownerdashboard"
  get "/client", to: "client#clientdashboard"
  delete "/logout" , to: "login#destroy"

  get "/addbillboard", to: "addbillboard#add"
  post "/addbillboard", to: "addbillboard#addboard"
  
  get "/showboards", to: "showboards#showboards"

  post '/showboards/:id/edit', to: 'showboards#update'
  delete '/showboards/:id/delete', to: 'showboards#destroy'

  resources :showboards

  get "/ownerprofile", to: "ownerprofile#Oprofile"
  post '/ownerprofile/:id/edit', to: 'ownerprofile#update'
  get "/clientprofile", to: "clientprofile#Oprofile"
  post '/clientprofile/:id/edit', to: 'clientprofile#update'
  get "/ownerpayment", to: "ownerpayment#ownerpaymentdetails"
  post '/ownerpayment/:id/edit', to: 'ownerpayment#update'

  get "/ownerpayment", to: "ownerpayment#ownerpaymentdetails"


  get "/book/:id", to: "book#show"

  get "/upload", to: "upload#uploadcontent"
  post "/upload", to: "upload#uploadcontent"
  get "/pay/:id", to: "pay#payment"
  post "/pay", to: "pay#pay"

  get "/viewrequest/viewrequests", to: "viewrequest#viewrequests"
  get "/viewrequest/openrequest/:id", to: "viewrequest#openrequest"
  get "/viewrequest/approvecontent/:id", to: "viewrequest#approvecontent"
  get "/viewrequest/rejectcontent/:id", to: "viewrequest#rejectcontent"
  get "/viewrequest/approvepayment/:id", to: "viewrequest#approvepayment"
  get "/viewrequest/rejectpayment/:id", to: "viewrequest#rejectpayment"
  get "/viewrequest/bookedbillboards", to: "viewrequest#bookedbillboards"
  get "/viewrequest/openpayment/:id", to: "viewrequest#openpayment"
  get "/pending/deleterecord/:id", to: "pending#deleterecord"

  get "/open", to: "open#openrequest"
  get "/viewbillboards", to: "viewbillboards#viewboards"

  get '/pendingrequest', to:'pendingrequest#pendingrequests'

  get '/pending', to: 'pending#requested'
  get "/pending/:id", to: "pending#openbill"
  get "bankdetails", to: "bankdetails#addbankdetails"
  post "bankdetails", to: "bankdetails#create"

  get '/ownerbooked', to: 'ownerbooked#ownerbookedbillboards'
  get '/clientbooked', to: 'clientbooked#clientbookedbillboards'

  resources :book
  resources :pendingrequest
  resources :ownerprofile
  resources :clientprofile
  resources :ownerpayment
  resources :pay
  resources :bankdetails

end
