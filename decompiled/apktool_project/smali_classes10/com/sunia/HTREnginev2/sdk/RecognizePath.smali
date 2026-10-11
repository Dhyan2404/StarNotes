.class public Lcom/sunia/HTREnginev2/sdk/RecognizePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4ba580c37301ea70L


# instance fields
.field protected mId:J

.field public mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;"
        }
    .end annotation
.end field

.field protected path:Landroid/graphics/Path;

.field private recognizePathExt:Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;

.field protected recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

.field private shapePointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;"
        }
    .end annotation
.end field

.field private strokeId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->strokeId:J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;JJ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->strokeId:J

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iput-wide p2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->strokeId:J

    .line 10
    iput-wide p4, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    return-void
.end method

.method private pathMeasure(Landroid/graphics/Path;)V
    .locals 6

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    mul-float/2addr v4, v5

    add-int/lit8 v5, p1, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v4, v3, v1

    const/4 v5, 0x1

    aget v3, v3, v5

    iget-object v5, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iput v4, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget-object v4, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iput v3, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    return-void
.end method

.method public addPoint(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clone()Lcom/sunia/HTREnginev2/sdk/RecognizePath;
    .locals 4

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    .line 5
    iget-object v3, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    .line 10
    :cond_2
    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    return-object p0

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>()V

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    return-wide v0
.end method

.method public getIdInt()I
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    long-to-int p0, v0

    return p0
.end method

.method public getNAIPath()Lcom/sunia/naiv2/sdk/NAIPath;
    .locals 4

    new-instance v0, Lcom/sunia/naiv2/sdk/NAIPath;

    invoke-direct {v0}, Lcom/sunia/naiv2/sdk/NAIPath;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    :cond_2
    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRecognizePathExt()Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizePathExt:Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;

    return-object p0
.end method

.method public getRecognizeShapeExt()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    return-object p0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v3, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-direct {v0, v3, v2, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->union(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getShapePointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->shapePointList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->shapePointList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->shapePointList:Ljava/util/List;

    return-object p0
.end method

.method public getStrokeId()I
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->strokeId:J

    long-to-int p0, v0

    return p0
.end method

.method public getStrokeIdLong()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->strokeId:J

    return-wide v0
.end method

.method public getmId()J
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public obtDrawPath()Landroid/graphics/Path;
    .locals 8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    if-nez v3, :cond_0

    iget v1, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget v2, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_1

    iget v5, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget v6, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_1
    iget v5, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    add-float/2addr v7, v2

    div-float/2addr v7, v6

    invoke-virtual {v0, v1, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_1
    iget v1, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget v2, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mId:J

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->obtDrawPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->pathMeasure(Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public setOffset(FF)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->setOffset(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->path:Landroid/graphics/Path;

    return-void
.end method

.method public setPoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    return-void
.end method

.method public setRecognizePathExt(Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizePathExt:Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;

    return-void
.end method

.method public setRecognizeShapeExt(Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->recognizeShapeExt:Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    return-void
.end method

.method public setStrokeId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->strokeId:J

    return-void
.end method

.method public setmId(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setId(J)V

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->mPoints:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
