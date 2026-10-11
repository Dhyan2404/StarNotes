.class public interface abstract Lcom/sunia/graphv2/sdk/GraphCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/INoProguard;


# virtual methods
.method public abstract getMetrics(Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;)[F
.end method

.method public abstract onCancel()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onLoad()V
.end method

.method public abstract onResult(Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;)V
.end method
