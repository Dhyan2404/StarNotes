.class public final Lcom/sun/org/apache/bcel/internal/classfile/Field;
.super Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;
.source "SourceFile"


# direct methods
.method public constructor <init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    return-void
.end method

.method public final copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Field;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->copy_(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    return-object p0
.end method

.method public final getConstantValue()Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object p0, p0, v0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->signatureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Field;->getConstantValue()Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
