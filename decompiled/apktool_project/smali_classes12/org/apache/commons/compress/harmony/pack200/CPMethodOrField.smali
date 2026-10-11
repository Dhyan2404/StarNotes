.class public Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field public final g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPClass;Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->h:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->i:I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getClassIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public getClassName()Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    return-object p0
.end method

.method public getDesc()Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    return-object p0
.end method

.method public getDescIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public getIndexInClass()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->h:I

    return p0
.end method

.method public getIndexInClassForConstructor()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->i:I

    return p0
.end method

.method public setIndexInClass(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->h:I

    return-void
.end method

.method public setIndexInClassForConstructor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->f:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->g:Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
