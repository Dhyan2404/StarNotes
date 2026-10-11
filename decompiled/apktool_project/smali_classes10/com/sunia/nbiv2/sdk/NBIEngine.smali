.class public abstract Lcom/sunia/nbiv2/sdk/NBIEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBIEngine"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/sunia/nbiv2/sdk/NBIEngine;
    .locals 1

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;

    invoke-direct {v0}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract clearPoints()Z
.end method

.method public abstract destroyBeatifyEngine()V
.end method

.method public abstract doBeautifyTransform(Lcom/sunia/commonv2/bean/NAIResult;JJ)Z
.end method

.method public abstract doBeautifyTransform(Ljava/util/List;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/naiv2/sdk/NAIPath;",
            ">;JJ)Z"
        }
    .end annotation
.end method

.method public abstract getErrorInfo()Ljava/lang/String;
.end method

.method public abstract isValidate()Z
.end method

.method public abstract nbiSetAxisOutput(Z)Z
.end method

.method public abstract nbiSetOutlineOutput(Z)Z
.end method

.method public abstract setCallback(Lcom/sunia/nbiv2/local/LocalNBIListener;)Z
.end method

.method public abstract setParameters([I)Z
.end method

.method public abstract start(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract stopBeautify()V
.end method
