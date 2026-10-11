.class public Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field public final g:Lorg/apache/commons/compress/harmony/pack200/CPSignature;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPSignature;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->g:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->g:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->g:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public getTypeIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->g:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->g:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
