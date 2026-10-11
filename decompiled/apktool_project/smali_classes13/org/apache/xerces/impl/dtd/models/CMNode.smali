.class public abstract Lorg/apache/xerces/impl/dtd/models/CMNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

.field public c:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

.field public d:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->b:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->c:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->d:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->f:Z

    iput p1, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->c:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    return-void
.end method

.method public abstract calcFirstPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
.end method

.method public abstract calcLastPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
.end method

.method public final firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->b:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->e:I

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->b:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->calcFirstPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->b:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    return-object p0
.end method

.method public isCompactedForUPA()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->f:Z

    return p0
.end method

.method public abstract isNullable()Z
.end method

.method public final lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->d:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->e:I

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->d:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->calcLastPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->d:Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    return-object p0
.end method

.method public setIsCompactUPAModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->f:Z

    return-void
.end method

.method public final setMaxStates(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->e:I

    return-void
.end method

.method public final type()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dtd/models/CMNode;->a:I

    return p0
.end method
