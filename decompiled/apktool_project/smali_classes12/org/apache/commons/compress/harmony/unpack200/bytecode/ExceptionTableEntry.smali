.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(IIILorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->a:I

    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->b:I

    iput p3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->c:I

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    return-void
.end method


# virtual methods
.method public getCatchType()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    return-object p0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->e:I

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->a:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->b:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->f:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->c:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->g:I

    return-void
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->h:I

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->d:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->h:I

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->g:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->h:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
