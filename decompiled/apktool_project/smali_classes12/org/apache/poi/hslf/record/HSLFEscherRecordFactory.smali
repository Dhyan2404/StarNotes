.class public Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;
.super Lorg/apache/poi/ddf/DefaultEscherRecordFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstructor(SS)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    sget-short v0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->RECORD_ID:S

    if-ne p2, v0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/y6h;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/y6h;-><init>()V

    return-object p0

    :cond_0
    sget-short v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    if-ne p2, v0, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/z6h;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z6h;-><init>()V

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->getConstructor(SS)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method
