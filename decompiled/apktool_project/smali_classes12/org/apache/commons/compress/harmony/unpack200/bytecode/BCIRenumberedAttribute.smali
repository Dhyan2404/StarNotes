.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
.source "SourceFile"


# instance fields
.field protected renumbered:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;[II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->b(Ljava/util/List;[II)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/List;[II)I
    .locals 0

    aget p1, p1, p2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getLength()I
.end method

.method public abstract getStartPCs()[I
.end method

.method public hasBCIRenumbering()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumbered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumbered:Z

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->getStartPCs()[I

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ol;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/ol;-><init>(Ljava/util/List;[I)V

    invoke-static {p0, v0}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Trying to renumber a line number table that has already been renumbered"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract writeBody(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
