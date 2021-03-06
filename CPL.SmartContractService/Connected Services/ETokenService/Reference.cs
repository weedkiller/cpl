﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     //
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ETokenService
{
    using System.Runtime.Serialization;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenSetting", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenSetting : object
    {
        
        private string AbiField;
        
        private string ContractAddressField;
        
        private ETokenService.Environment EnvironmentField;
        
        private ETokenService.Platform PlatformField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Abi
        {
            get
            {
                return this.AbiField;
            }
            set
            {
                this.AbiField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string ContractAddress
        {
            get
            {
                return this.ContractAddressField;
            }
            set
            {
                this.ContractAddressField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Environment Environment
        {
            get
            {
                return this.EnvironmentField;
            }
            set
            {
                this.EnvironmentField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Platform Platform
        {
            get
            {
                return this.PlatformField;
            }
            set
            {
                this.PlatformField = value;
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Environment", Namespace="http://schemas.datacontract.org/2004/07/FHCore.API.Core")]
    public enum Environment : int
    {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        PRIVATENET = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        MAINNET = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        TESTNET = 0,
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Platform", Namespace="http://schemas.datacontract.org/2004/07/FHCore.API.Core")]
    public enum Platform : int
    {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        BTC = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        NEO = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ETH = 0,
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenSetResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenSetResult : object
    {
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Status", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Misc")]
    public partial class Status : object
    {
        
        private int CodeField;
        
        private string TextField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Code
        {
            get
            {
                return this.CodeField;
            }
            set
            {
                this.CodeField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Text
        {
            get
            {
                return this.TextField;
            }
            set
            {
                this.TextField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenIsValidResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenIsValidResult : object
    {
        
        private bool IsValidField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool IsValid
        {
            get
            {
                return this.IsValidField;
            }
            set
            {
                this.IsValidField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenTransferResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenTransferResult : object
    {
        
        private ETokenService.Status StatusField;
        
        private string TxIdField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string TxId
        {
            get
            {
                return this.TxIdField;
            }
            set
            {
                this.TxIdField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenBalanceResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenBalanceResult : object
    {
        
        private decimal BalanceField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public decimal Balance
        {
            get
            {
                return this.BalanceField;
            }
            set
            {
                this.BalanceField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Symbol", Namespace="http://schemas.datacontract.org/2004/07/FHCore.API.Core")]
    public enum Symbol : int
    {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        GAS = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        NEO = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ETH = 0,
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenRateResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenRateResult : object
    {
        
        private decimal RateField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public decimal Rate
        {
            get
            {
                return this.RateField;
            }
            set
            {
                this.RateField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenAllRatesResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenAllRatesResult : object
    {
        
        private ETokenService.RateResult[] RateResultsField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.RateResult[] RateResults
        {
            get
            {
                return this.RateResultsField;
            }
            set
            {
                this.RateResultsField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="RateResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class RateResult : object
    {
        
        private System.DateTime DateTimeField;
        
        private decimal RateField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime DateTime
        {
            get
            {
                return this.DateTimeField;
            }
            set
            {
                this.DateTimeField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public decimal Rate
        {
            get
            {
                return this.RateField;
            }
            set
            {
                this.RateField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenTotalAmountResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenTotalAmountResult : object
    {
        
        private ETokenService.Status StatusField;
        
        private decimal TotalAmountField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public decimal TotalAmount
        {
            get
            {
                return this.TotalAmountField;
            }
            set
            {
                this.TotalAmountField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenTotalSupplyResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenTotalSupplyResult : object
    {
        
        private ETokenService.Status StatusField;
        
        private decimal TotalSupplyField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public decimal TotalSupply
        {
            get
            {
                return this.TotalSupplyField;
            }
            set
            {
                this.TotalSupplyField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenDecimalsResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenDecimalsResult : object
    {
        
        private uint DecimalsField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public uint Decimals
        {
            get
            {
                return this.DecimalsField;
            }
            set
            {
                this.DecimalsField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenNameResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenNameResult : object
    {
        
        private string NameField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Name
        {
            get
            {
                return this.NameField;
            }
            set
            {
                this.NameField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenSymbolResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenSymbolResult : object
    {
        
        private ETokenService.Status StatusField;
        
        private string SymbolField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Symbol
        {
            get
            {
                return this.SymbolField;
            }
            set
            {
                this.SymbolField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenICOStartResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenICOStartResult : object
    {
        
        private System.DateTime ICOStartField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime ICOStart
        {
            get
            {
                return this.ICOStartField;
            }
            set
            {
                this.ICOStartField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenICOEndResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenICOEndResult : object
    {
        
        private System.DateTime ICOEndField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime ICOEnd
        {
            get
            {
                return this.ICOEndField;
            }
            set
            {
                this.ICOEndField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenFundRaisedResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenFundRaisedResult : object
    {
        
        private decimal FundRaisedField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public decimal FundRaised
        {
            get
            {
                return this.FundRaisedField;
            }
            set
            {
                this.FundRaisedField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenIssueTokenResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenIssueTokenResult : object
    {
        
        private ETokenService.Status StatusField;
        
        private string TxIdField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string TxId
        {
            get
            {
                return this.TxIdField;
            }
            set
            {
                this.TxIdField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenCallFunctionResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenCallFunctionResult : object
    {
        
        private string ResultField;
        
        private ETokenService.Status StatusField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Result
        {
            get
            {
                return this.ResultField;
            }
            set
            {
                this.ResultField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ETokenCallTransactionResult", Namespace="http://schemas.datacontract.org/2004/07/FHCore.WCF.Token")]
    public partial class ETokenCallTransactionResult : object
    {
        
        private ETokenService.Status StatusField;
        
        private string TxIdField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ETokenService.Status Status
        {
            get
            {
                return this.StatusField;
            }
            set
            {
                this.StatusField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string TxId
        {
            get
            {
                return this.TxIdField;
            }
            set
            {
                this.TxIdField = value;
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ETokenService.IEToken")]
    public interface IEToken
    {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/Set", ReplyAction="http://tempuri.org/IEToken/SetResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenSetResult> SetAsync(string authenticatedToken, ETokenService.ETokenSetting setting);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/IsValid", ReplyAction="http://tempuri.org/IEToken/IsValidResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenIsValidResult> IsValidAsync(string authenticatedToken, string address);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/Transfer", ReplyAction="http://tempuri.org/IEToken/TransferResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenTransferResult> TransferAsync(string authenticatedToken, string fromAddress, string fromPassword, string toAddress, decimal value, int durationInSeconds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetBalanceOf", ReplyAction="http://tempuri.org/IEToken/GetBalanceOfResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenBalanceResult> GetBalanceOfAsync(string authenticatedToken, string address);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetRate", ReplyAction="http://tempuri.org/IEToken/GetRateResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenRateResult> GetRateAsync(string authenticatedToken, ETokenService.Symbol symbol);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetAllRates", ReplyAction="http://tempuri.org/IEToken/GetAllRatesResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenAllRatesResult> GetAllRatesAsync(string authenticatedToken, ETokenService.Symbol symbol);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetTotalAmount", ReplyAction="http://tempuri.org/IEToken/GetTotalAmountResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenTotalAmountResult> GetTotalAmountAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetTotalSupply", ReplyAction="http://tempuri.org/IEToken/GetTotalSupplyResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenTotalSupplyResult> GetTotalSupplyAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetDecimals", ReplyAction="http://tempuri.org/IEToken/GetDecimalsResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenDecimalsResult> GetDecimalsAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetName", ReplyAction="http://tempuri.org/IEToken/GetNameResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenNameResult> GetNameAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetSymbol", ReplyAction="http://tempuri.org/IEToken/GetSymbolResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenSymbolResult> GetSymbolAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetICOStart", ReplyAction="http://tempuri.org/IEToken/GetICOStartResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenICOStartResult> GetICOStartAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetICOEnd", ReplyAction="http://tempuri.org/IEToken/GetICOEndResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenICOEndResult> GetICOEndAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/GetFundRaised", ReplyAction="http://tempuri.org/IEToken/GetFundRaisedResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenFundRaisedResult> GetFundRaisedAsync(string authenticatedToken);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/IssueToken", ReplyAction="http://tempuri.org/IEToken/IssueTokenResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenIssueTokenResult> IssueTokenAsync(string authenticatedToken, string ownerAddress, string ownerPassword, string toAddress, decimal amount, int durationInSeconds, decimal gasPriceMultiplication);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/CallFunction", ReplyAction="http://tempuri.org/IEToken/CallFunctionResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenCallFunctionResult> CallFunctionAsync(string authenticatedToken, string functionName, string paramsInJson);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IEToken/CallTransaction", ReplyAction="http://tempuri.org/IEToken/CallTransactionResponse")]
        System.Threading.Tasks.Task<ETokenService.ETokenCallTransactionResult> CallTransactionAsync(string authenticatedToken, string senderAddress, string senderPassword, string functionName, decimal gasPriceMultiplication, int durationInSeconds, string paramsInJson);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    public interface IETokenChannel : ETokenService.IEToken, System.ServiceModel.IClientChannel
    {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("dotnet-svcutil", "1.0.0.0")]
    public partial class ETokenClient : System.ServiceModel.ClientBase<ETokenService.IEToken>, ETokenService.IEToken
    {
        
    /// <summary>
    /// Implement this partial method to configure the service endpoint.
    /// </summary>
    /// <param name="serviceEndpoint">The endpoint to configure</param>
    /// <param name="clientCredentials">The client credentials</param>
    static partial void ConfigureEndpoint(System.ServiceModel.Description.ServiceEndpoint serviceEndpoint, System.ServiceModel.Description.ClientCredentials clientCredentials);
        
        public ETokenClient() : 
                base(ETokenClient.GetDefaultBinding(), ETokenClient.GetDefaultEndpointAddress())
        {
            this.Endpoint.Name = EndpointConfiguration.BasicHttpBinding_IEToken.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ETokenClient(EndpointConfiguration endpointConfiguration) : 
                base(ETokenClient.GetBindingForEndpoint(endpointConfiguration), ETokenClient.GetEndpointAddress(endpointConfiguration))
        {
            this.Endpoint.Name = endpointConfiguration.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ETokenClient(EndpointConfiguration endpointConfiguration, string remoteAddress) : 
                base(ETokenClient.GetBindingForEndpoint(endpointConfiguration), new System.ServiceModel.EndpointAddress(remoteAddress))
        {
            this.Endpoint.Name = endpointConfiguration.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ETokenClient(EndpointConfiguration endpointConfiguration, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(ETokenClient.GetBindingForEndpoint(endpointConfiguration), remoteAddress)
        {
            this.Endpoint.Name = endpointConfiguration.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ETokenClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress)
        {
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenSetResult> SetAsync(string authenticatedToken, ETokenService.ETokenSetting setting)
        {
            return base.Channel.SetAsync(authenticatedToken, setting);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenIsValidResult> IsValidAsync(string authenticatedToken, string address)
        {
            return base.Channel.IsValidAsync(authenticatedToken, address);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenTransferResult> TransferAsync(string authenticatedToken, string fromAddress, string fromPassword, string toAddress, decimal value, int durationInSeconds)
        {
            return base.Channel.TransferAsync(authenticatedToken, fromAddress, fromPassword, toAddress, value, durationInSeconds);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenBalanceResult> GetBalanceOfAsync(string authenticatedToken, string address)
        {
            return base.Channel.GetBalanceOfAsync(authenticatedToken, address);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenRateResult> GetRateAsync(string authenticatedToken, ETokenService.Symbol symbol)
        {
            return base.Channel.GetRateAsync(authenticatedToken, symbol);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenAllRatesResult> GetAllRatesAsync(string authenticatedToken, ETokenService.Symbol symbol)
        {
            return base.Channel.GetAllRatesAsync(authenticatedToken, symbol);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenTotalAmountResult> GetTotalAmountAsync(string authenticatedToken)
        {
            return base.Channel.GetTotalAmountAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenTotalSupplyResult> GetTotalSupplyAsync(string authenticatedToken)
        {
            return base.Channel.GetTotalSupplyAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenDecimalsResult> GetDecimalsAsync(string authenticatedToken)
        {
            return base.Channel.GetDecimalsAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenNameResult> GetNameAsync(string authenticatedToken)
        {
            return base.Channel.GetNameAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenSymbolResult> GetSymbolAsync(string authenticatedToken)
        {
            return base.Channel.GetSymbolAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenICOStartResult> GetICOStartAsync(string authenticatedToken)
        {
            return base.Channel.GetICOStartAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenICOEndResult> GetICOEndAsync(string authenticatedToken)
        {
            return base.Channel.GetICOEndAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenFundRaisedResult> GetFundRaisedAsync(string authenticatedToken)
        {
            return base.Channel.GetFundRaisedAsync(authenticatedToken);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenIssueTokenResult> IssueTokenAsync(string authenticatedToken, string ownerAddress, string ownerPassword, string toAddress, decimal amount, int durationInSeconds, decimal gasPriceMultiplication)
        {
            return base.Channel.IssueTokenAsync(authenticatedToken, ownerAddress, ownerPassword, toAddress, amount, durationInSeconds, gasPriceMultiplication);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenCallFunctionResult> CallFunctionAsync(string authenticatedToken, string functionName, string paramsInJson)
        {
            return base.Channel.CallFunctionAsync(authenticatedToken, functionName, paramsInJson);
        }
        
        public System.Threading.Tasks.Task<ETokenService.ETokenCallTransactionResult> CallTransactionAsync(string authenticatedToken, string senderAddress, string senderPassword, string functionName, decimal gasPriceMultiplication, int durationInSeconds, string paramsInJson)
        {
            return base.Channel.CallTransactionAsync(authenticatedToken, senderAddress, senderPassword, functionName, gasPriceMultiplication, durationInSeconds, paramsInJson);
        }
        
        public virtual System.Threading.Tasks.Task OpenAsync()
        {
            return System.Threading.Tasks.Task.Factory.FromAsync(((System.ServiceModel.ICommunicationObject)(this)).BeginOpen(null, null), new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndOpen));
        }
        
        public virtual System.Threading.Tasks.Task CloseAsync()
        {
            return System.Threading.Tasks.Task.Factory.FromAsync(((System.ServiceModel.ICommunicationObject)(this)).BeginClose(null, null), new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndClose));
        }
        
        private static System.ServiceModel.Channels.Binding GetBindingForEndpoint(EndpointConfiguration endpointConfiguration)
        {
            if ((endpointConfiguration == EndpointConfiguration.BasicHttpBinding_IEToken))
            {
                System.ServiceModel.BasicHttpBinding result = new System.ServiceModel.BasicHttpBinding();
                result.MaxBufferSize = int.MaxValue;
                result.ReaderQuotas = System.Xml.XmlDictionaryReaderQuotas.Max;
                result.MaxReceivedMessageSize = int.MaxValue;
                result.AllowCookies = true;
                return result;
            }
            throw new System.InvalidOperationException(string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration));
        }
        
        private static System.ServiceModel.EndpointAddress GetEndpointAddress(EndpointConfiguration endpointConfiguration)
        {
            if ((endpointConfiguration == EndpointConfiguration.BasicHttpBinding_IEToken))
            {
                return new System.ServiceModel.EndpointAddress("http://api.famhopperchain.com/Token/EToken.svc");
            }
            throw new System.InvalidOperationException(string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration));
        }
        
        private static System.ServiceModel.Channels.Binding GetDefaultBinding()
        {
            return ETokenClient.GetBindingForEndpoint(EndpointConfiguration.BasicHttpBinding_IEToken);
        }
        
        private static System.ServiceModel.EndpointAddress GetDefaultEndpointAddress()
        {
            return ETokenClient.GetEndpointAddress(EndpointConfiguration.BasicHttpBinding_IEToken);
        }
        
        public enum EndpointConfiguration
        {
            
            BasicHttpBinding_IEToken,
        }
    }
}
