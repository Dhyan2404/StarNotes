.class public Lsun/awt/geom/AreaOp$EOWindOp;
.super Lsun/awt/geom/AreaOp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EOWindOp"
.end annotation


# instance fields
.field private inside:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/awt/geom/AreaOp;-><init>(Lsun/awt/geom/AreaOp$1;)V

    return-void
.end method


# virtual methods
.method public classify(Lsun/awt/geom/Edge;)I
    .locals 1

    iget-boolean p1, p0, Lsun/awt/geom/AreaOp$EOWindOp;->inside:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lsun/awt/geom/AreaOp$EOWindOp;->inside:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getState()I
    .locals 0

    iget-boolean p0, p0, Lsun/awt/geom/AreaOp$EOWindOp;->inside:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public newRow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/awt/geom/AreaOp$EOWindOp;->inside:Z

    return-void
.end method
