.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

.field public b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

.field public c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->d:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->e:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->f:I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput p4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->g:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->d:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->d:I

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->c:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->f:I

    goto :goto_1

    :cond_1
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->f:I

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->e:I

    goto :goto_2

    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->e:I

    :goto_2
    return-void
.end method

.method public b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$a;->g:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
