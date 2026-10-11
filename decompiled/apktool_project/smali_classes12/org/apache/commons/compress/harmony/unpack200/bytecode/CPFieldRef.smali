.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
.source "SourceFile"


# instance fields
.field public c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

.field public transient d:I

.field public final e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

.field public transient f:I

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;I)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;-><init>(BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->g:Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->h:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    if-nez p0, :cond_5

    iget-object p0, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    if-eqz p0, :cond_6

    return v1

    :cond_5
    iget-object p1, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->a()V

    :cond_0
    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->h:I

    return p0
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->f:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->e:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeBody(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;->f:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
