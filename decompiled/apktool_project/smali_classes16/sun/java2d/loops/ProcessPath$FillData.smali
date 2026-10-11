.class Lsun/java2d/loops/ProcessPath$FillData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FillData"
.end annotation


# instance fields
.field plgPnts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/java2d/loops/ProcessPath$Point;",
            ">;"
        }
    .end annotation
.end field

.field public plgYMax:I

.field public plgYMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoint(IIZ)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput p2, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgYMax:I

    iput p2, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgYMin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgYMin:I

    if-le v0, p2, :cond_1

    move v0, p2

    :cond_1
    iput v0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgYMin:I

    iget v0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgYMax:I

    if-ge v0, p2, :cond_2

    move v0, p2

    :cond_2
    iput v0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgYMax:I

    :goto_0
    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    new-instance v0, Lsun/java2d/loops/ProcessPath$Point;

    invoke-direct {v0, p1, p2, p3}, Lsun/java2d/loops/ProcessPath$Point;-><init>(IIZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnded()Z
    .locals 1

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/ProcessPath$Point;

    iget-boolean p0, p0, Lsun/java2d/loops/ProcessPath$Point;->lastPoint:Z

    return p0
.end method

.method public setEnded()Z
    .locals 2

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/ProcessPath$Point;

    iput-boolean v1, p0, Lsun/java2d/loops/ProcessPath$Point;->lastPoint:Z

    return v1
.end method
