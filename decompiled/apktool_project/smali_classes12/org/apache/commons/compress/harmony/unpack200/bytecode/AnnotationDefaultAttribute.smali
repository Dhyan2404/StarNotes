.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute;
.source "SourceFile"


# static fields
.field public static d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field public final c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    return-void
.end method

.method public static setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->getLength()I

    move-result p0

    return p0
.end method

.method public getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->getClassFileEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array v1, p0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeBody(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->writeBody(Ljava/io/DataOutputStream;)V

    return-void
.end method
