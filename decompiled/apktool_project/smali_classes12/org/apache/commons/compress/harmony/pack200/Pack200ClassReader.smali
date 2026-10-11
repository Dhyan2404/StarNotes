.class public Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
.super Lorg/objectweb/asm/ClassReader;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->d:Ljava/lang/String;

    return-object p0
.end method

.method public hasSyntheticAttributes()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->c:Z

    return p0
.end method

.method public lastConstantHadWideIndex()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->a:Z

    return p0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->a:Z

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->c:Z

    if-nez p2, :cond_0

    const-string p2, "Synthetic"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->c:Z

    :cond_0
    return-object p1
.end method

.method public readUnsignedShort(I)I
    .locals 2

    invoke-super {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-lez p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:[B

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, v1, p1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:I

    goto :goto_0

    :cond_0
    const/16 p1, -0x8000

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:I

    :goto_0
    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->d:Ljava/lang/String;

    return-void
.end method
