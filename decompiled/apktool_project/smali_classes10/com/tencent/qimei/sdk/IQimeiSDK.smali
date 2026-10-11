.class public interface abstract Lcom/tencent/qimei/sdk/IQimeiSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
.end method

.method public abstract getBeaconTicket()Ljava/lang/String;
.end method

.method public abstract getDebugger()Lcom/tencent/qimei/sdk/debug/IDebugger;
.end method

.method public abstract getQimei()Lcom/tencent/qimei/sdk/Qimei;
.end method

.method public abstract getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)Z
.end method

.method public abstract isQimeiValid(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setAppVersion(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
.end method

.method public abstract setChannelID(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
.end method

.method public abstract setLogAble(Z)Lcom/tencent/qimei/sdk/IQimeiSDK;
.end method

.method public abstract setLogObserver(Lcom/tencent/qimei/log/IObservableLog;)Lcom/tencent/qimei/sdk/IQimeiSDK;
.end method

.method public abstract setSdkName(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
.end method
