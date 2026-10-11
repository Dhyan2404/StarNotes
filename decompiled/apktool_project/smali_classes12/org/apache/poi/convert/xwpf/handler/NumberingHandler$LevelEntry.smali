.class public Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LevelEntry"
.end annotation


# instance fields
.field private final abstractNumId:I

.field private final ctLvl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

.field private final ilvl:I

.field private index:I

.field private final numId:I

.field private start:I


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ctLvl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    iput p2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->numId:I

    iput p3, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->abstractNumId:I

    iput p4, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ilvl:I

    iput p5, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->index:I

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->start:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->start:I

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ctLvl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ilvl:I

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->index:I

    return p0
.end method

.method public static synthetic access$202(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->index:I

    return p1
.end method

.method public static synthetic access$208(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->index:I

    return v0
.end method

.method public static synthetic access$300(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->start:I

    return p0
.end method

.method public static synthetic access$302(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->start:I

    return p1
.end method

.method public static synthetic access$600(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->numId:I

    return p0
.end method


# virtual methods
.method public getCtLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ctLvl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LevelEntry{numId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->numId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abstractNumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->abstractNumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ilvl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ilvl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ctLvl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->ctLvl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
