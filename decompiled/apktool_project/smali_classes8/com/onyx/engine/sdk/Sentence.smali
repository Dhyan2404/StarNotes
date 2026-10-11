.class public Lcom/onyx/engine/sdk/Sentence;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field end:Lcom/onyx/engine/sdk/PinPosition;

.field start:Lcom/onyx/engine/sdk/PinPosition;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/Sentence;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/wgm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wgm;-><init>()V

    const-class v1, Lcom/onyx/engine/sdk/Sentence;

    invoke-static {p0, v1, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/Sentence;

    return-object p0
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Sentence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/Sentence$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/Sentence$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getEnd()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Sentence;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getStart()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Sentence;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Sentence;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setEnd(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/Sentence;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Sentence;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setStart(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/Sentence;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Sentence;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/onyx/engine/sdk/Sentence;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Sentence;->text:Ljava/lang/String;

    return-object p0
.end method
