.class public Lcom/onyx/engine/sdk/VisiblePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field granularity:Lcom/onyx/engine/sdk/TextGranularity;

.field offset:I

.field text:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "engine_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kWord:Lcom/onyx/engine/sdk/TextGranularity;

    iput-object v0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->granularity:Lcom/onyx/engine/sdk/TextGranularity;

    return-void
.end method

.method private native nativeExpandWithGranularity(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public expandWithGranularity()Lcom/onyx/engine/sdk/SelectionRange;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/VisiblePosition;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/engine/sdk/VisiblePosition;->nativeExpandWithGranularity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/SelectionRange;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/SelectionRange;

    move-result-object p0

    return-object p0
.end method

.method public getGranularity()Lcom/onyx/engine/sdk/TextGranularity;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->granularity:Lcom/onyx/engine/sdk/TextGranularity;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->offset:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setGranularity(Lcom/onyx/engine/sdk/TextGranularity;)Lcom/onyx/engine/sdk/VisiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/VisiblePosition;->granularity:Lcom/onyx/engine/sdk/TextGranularity;

    return-object p0
.end method

.method public setOffset(I)Lcom/onyx/engine/sdk/VisiblePosition;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/VisiblePosition;->offset:I

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/onyx/engine/sdk/VisiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/VisiblePosition;->text:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
