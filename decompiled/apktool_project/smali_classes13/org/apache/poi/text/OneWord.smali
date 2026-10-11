.class public Lorg/apache/poi/text/OneWord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private index:I

.field private final pos:I

.field private final rectangle:Ljava/awt/geom/Rectangle2D;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/text/OneWord;->rectangle:Ljava/awt/geom/Rectangle2D;

    iput p3, p0, Lorg/apache/poi/text/OneWord;->pos:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/text/OneWord;

    iget v2, p0, Lorg/apache/poi/text/OneWord;->pos:I

    iget v3, p1, Lorg/apache/poi/text/OneWord;->pos:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/apache/poi/text/OneWord;->index:I

    iget v3, p1, Lorg/apache/poi/text/OneWord;->index:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/OneWord;->rectangle:Ljava/awt/geom/Rectangle2D;

    iget-object v3, p1, Lorg/apache/poi/text/OneWord;->rectangle:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2, v3}, Ljava/awt/geom/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/OneWord;->index:I

    return p0
.end method

.method public getPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/OneWord;->pos:I

    return p0
.end method

.method public getRectangle()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/OneWord;->rectangle:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/text/OneWord;->rectangle:Ljava/awt/geom/Rectangle2D;

    iget v2, p0, Lorg/apache/poi/text/OneWord;->pos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lorg/apache/poi/text/OneWord;->index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/OneWord;->index:I

    return-void
.end method

.method public toCharArray()[C
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneWord{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/text/OneWord;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/OneWord;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/text/OneWord;->index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
