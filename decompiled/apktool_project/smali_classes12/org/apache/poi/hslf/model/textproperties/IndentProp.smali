.class public Lorg/apache/poi/hslf/model/textproperties/IndentProp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field private charactersCovered:I

.field private indentLevel:S


# direct methods
.method public constructor <init>(IS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->charactersCovered:I

    iput-short p2, p0, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->indentLevel:S

    return-void
.end method


# virtual methods
.method public getCharactersCovered()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->charactersCovered:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/lji;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lji;-><init>(Lorg/apache/poi/hslf/model/textproperties/IndentProp;)V

    new-instance v1, Lcom/sunia/HTREnginev2/mji;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mji;-><init>(Lorg/apache/poi/hslf/model/textproperties/IndentProp;)V

    const-string p0, "charactersCovered"

    const-string v2, "indentLevel"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIndentLevel()I
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->indentLevel:S

    return p0
.end method

.method public setIndentLevel(I)V
    .locals 1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->indentLevel:S

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Indent must be between 0 and 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateTextSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->charactersCovered:I

    return-void
.end method
