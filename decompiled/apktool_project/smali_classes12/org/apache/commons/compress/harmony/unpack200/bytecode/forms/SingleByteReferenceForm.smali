.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SingleByteReferenceForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ReferenceForm;
.source "SourceFile"


# instance fields
.field protected widened:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ReferenceForm;-><init>(ILjava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public abstract getOffset(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)I
.end method

.method public abstract getPoolID()I
.end method

.method public nestedMustStartClassPool()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SingleByteReferenceForm;->widened:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ReferenceForm;->setNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SingleByteReferenceForm;->widened:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    new-array p0, p2, [[I

    const/4 p2, 0x2

    filled-new-array {p3, p2}, [I

    move-result-object p2

    aput-object p2, p0, p3

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    goto :goto_0

    :cond_0
    new-array p0, p2, [[I

    filled-new-array {p3, p2}, [I

    move-result-object p2

    aput-object p2, p0, p3

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    :goto_0
    return-void
.end method
