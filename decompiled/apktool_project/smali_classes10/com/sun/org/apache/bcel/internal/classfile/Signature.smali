.class public final Lcom/sun/org/apache/bcel/internal/classfile/Signature;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;
    }
.end annotation


# instance fields
.field private signature_index:I


# direct methods
.method public constructor <init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/16 v0, 0xa

    .line 3
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 4
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->signature_index:I

    return-void
.end method

.method public constructor <init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;-><init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Signature;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->getSignatureIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;-><init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method private static identPart(I)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static identStart(I)Z
    .locals 1

    const/16 v0, 0x54

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isActualParameterList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isFormalParameterList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final matchGJIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->matchIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3c

    const-string v2, "Illegal signature: "

    const/16 v3, 0x29

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    goto :goto_2

    :cond_1
    :goto_0
    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->matchGJIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->matchGJIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reaching EOF"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->identStart(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->matchGJIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V

    goto :goto_3

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    return-void

    :cond_5
    const/16 p1, 0x3b

    if-ne v0, p1, :cond_6

    :goto_3
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " read "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final matchIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->identStart(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    :goto_0
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_1

    const/16 v0, 0x11

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_4
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v1, :cond_5

    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq v2, v3, :cond_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v2, v1, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->unread()V

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " no ident, reaching EOF"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->matchGJIdent(Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Visiting non-standard Signature object"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitSignature(Lcom/sun/org/apache/bcel/internal/classfile/Signature;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/Signature;

    return-object p0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->signature_index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->signature_index:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSignatureIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->signature_index:I

    return p0
.end method

.method public final setSignatureIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->signature_index:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->getSignature()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
