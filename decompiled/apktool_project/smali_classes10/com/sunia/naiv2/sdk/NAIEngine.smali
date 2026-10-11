.class public abstract Lcom/sunia/naiv2/sdk/NAIEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NAIEngine"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/sunia/naiv2/sdk/NAIEngine;
    .locals 1

    new-instance v0, Lcom/sunia/naiv2/sdk/NAIEngineNative;

    invoke-direct {v0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract addRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)I
.end method

.method public abstract getErrorInfo()Ljava/lang/String;
.end method

.method public abstract getNAIResult(I)Lcom/sunia/commonv2/bean/NAIResult;
.end method

.method public abstract getNAIResult(Ljava/lang/String;I)Lcom/sunia/commonv2/bean/NAIResult;
.end method

.method public abstract getNAIResultForGraphic(II)Lcom/sunia/commonv2/bean/NAIResult;
.end method

.method public abstract naiClearPoints()Z
.end method

.method public abstract naiDestroyEngine()Z
.end method

.method public abstract naiEngineValid()Z
.end method

.method public abstract naiRemoveLines([I)Z
.end method

.method public abstract naiResetConfig()Z
.end method

.method public abstract naiSetConfig(Ljava/lang/String;)V
.end method

.method public abstract naiSupportLayout(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;Z)Z"
        }
    .end annotation
.end method
