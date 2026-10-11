.class public abstract Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected access_flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    return-void
.end method

.method private final setFlag(IZ)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAccessFlags()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    return p0
.end method

.method public final getModifiers()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    return p0
.end method

.method public final isAbstract(Z)V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isAbstract()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFinal(Z)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isFinal()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInterface(Z)V
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isInterface()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNative(Z)V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isNative()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPrivate(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isPrivate()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isProtected(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isProtected()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPublic(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isPublic()Z
    .locals 1

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStatic(Z)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isStatic()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStrictfp(Z)V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isStrictfp()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSynchronized(Z)V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isSynchronized()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTransient(Z)V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isTransient()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVolatile(Z)V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setFlag(IZ)V

    return-void
.end method

.method public final isVolatile()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAccessFlags(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    return-void
.end method

.method public final setModifiers(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setAccessFlags(I)V

    return-void
.end method
