.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/NarrowClassRefForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;-><init>(ILjava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;-><init>(ILjava/lang/String;[IZ)V

    return-void
.end method


# virtual methods
.method public nestedMustStartClassPool()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;->widened:Z

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

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;->setNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;->widened:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    new-array p2, p0, [[I

    const/4 p3, 0x0

    filled-new-array {p3, p0}, [I

    move-result-object p0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    :cond_0
    return-void
.end method
