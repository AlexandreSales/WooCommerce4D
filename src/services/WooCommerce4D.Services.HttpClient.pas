unit WooCommerce4D.Services.HttpClient;

interface

uses
  Data.DB,
  System.Generics.Collections;

type
  iParams<T> = interface;

  iHttpClient = interface
    function Url(Value : String) : iHttpClient;
    function Params : iParams<iHttpClient>;
    function Body(Value : String) : iHttpClient;
    function Get : iHttpClient;
    function GetAll : iHttpClient;
    function Post : iHttpClient;
    function Put : iHttpClient;
    function Delete : iHttpClient;
    function DataSet(Value : TDataSet) : iHttpClient;
    function Content : String;
  end;

  iParams<T> = interface
    function Context(Value : String) : iParams<T>;
    function Page(Value : String) : iParams<T>;
    function PerPage(Value : String) : iParams<T>;
    function Search(Value : String) : iParams<T>;
    function After(Value : String) : iParams<T>;
    function Before(Value : String) : iParams<T>;
    function Exclude(Value : String) : iParams<T>;
    function Include(Value : String) : iParams<T>;
    function Offset(Value : String) : iParams<T>;
    function Order(Value : String) : iParams<T>;
    function OrderBy(Value : String) : iParams<T>;
    function Code(Value : String) : iParams<T>;
    function &End : T;
  end;

implementation

end.