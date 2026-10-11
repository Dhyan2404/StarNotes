.class public abstract Lcom/sunia/npiv2/sdk/NPIEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NPIEngine"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sunia/npiv2/sdk/NPIEngine;
    .locals 1

    new-instance v0, Lcom/sunia/npiv2/sdk/NPIEngineNative;

    invoke-direct {v0, p0}, Lcom/sunia/npiv2/sdk/NPIEngineNative;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract getNpiTransformResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract npiCreateEngine()J
.end method

.method public abstract npiDestroyEngine()Z
.end method

.method public abstract npiEngineValid()Z
.end method

.method public abstract npiExtractFromData([B)Z
.end method

.method public abstract npiExtractFromFile(Ljava/lang/String;)Z
.end method

.method public abstract npiExtractFromObject(Landroid/media/Image;)Z
.end method

.method public abstract npiGetLineCount()I
.end method

.method public abstract npiGetLinePoints(I[D[D)I
.end method

.method public abstract npiGetLinePointsCount(I)I
.end method
