.class public Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
.super Lorg/objectweb/asm/Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Ljava/lang/String;

.field public f:[B

.field public g:I

.field public h:[Lorg/objectweb/asm/Label;

.field public i:Lorg/objectweb/asm/ClassReader;

.field public j:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->a:Z

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->b:Z

    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->c:Z

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->d:Z

    .line 6
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->addContext(I)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassReader;Ljava/lang/String;Ljava/lang/String;[B[CI[Lorg/objectweb/asm/Label;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->a:Z

    .line 10
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->b:Z

    .line 11
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->c:Z

    .line 12
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->d:Z

    .line 13
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->i:Lorg/objectweb/asm/ClassReader;

    .line 14
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->f:[B

    .line 15
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->e:Ljava/lang/String;

    .line 16
    iput p6, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->g:I

    .line 17
    iput-object p7, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->h:[Lorg/objectweb/asm/Label;

    .line 18
    iput-object p5, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->j:[C

    return-void
.end method


# virtual methods
.method public addContext(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->d:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->b:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->c:Z

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->a:Z

    :goto_0
    return-void
.end method

.method public getBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->f:[B

    return-object p0
.end method

.method public getLabel(I)Lorg/objectweb/asm/Label;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->h:[Lorg/objectweb/asm/Label;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isCodeAttribute()Z
    .locals 1

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->g:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContextClass()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->a:Z

    return p0
.end method

.method public isContextCode()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->d:Z

    return p0
.end method

.method public isContextField()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->c:Z

    return p0
.end method

.method public isContextMethod()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->b:Z

    return p0
.end method

.method public isUnknown()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public isUnknown(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->d:Z

    xor-int/2addr p0, v0

    return p0

    .line 3
    :cond_1
    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->b:Z

    xor-int/2addr p0, v0

    return p0

    .line 4
    :cond_2
    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->c:Z

    xor-int/2addr p0, v0

    return p0

    .line 5
    :cond_3
    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->a:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method public read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .locals 8

    new-array v4, p3, [B

    iget-object v0, p1, Lorg/objectweb/asm/ClassReader;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, p2, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->e:Ljava/lang/String;

    move-object v0, p2

    move-object v1, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;-><init>(Lorg/objectweb/asm/ClassReader;Ljava/lang/String;Ljava/lang/String;[B[CI[Lorg/objectweb/asm/Label;)V

    return-object p2
.end method

.method public readClass(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->i:Lorg/objectweb/asm/ClassReader;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->j:[C

    invoke-virtual {v0, p1, p0}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readConst(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->i:Lorg/objectweb/asm/ClassReader;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->j:[C

    invoke-virtual {v0, p1, p0}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public readUTF8(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->i:Lorg/objectweb/asm/ClassReader;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->j:[C

    invoke-virtual {v0, p1, p0}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
