.class public Lcom/sunia/HTREnginev2/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/graphics/ITrace;


# static fields
.field public static e:J


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/graphics/Path;

.field public final c:J

.field public d:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    .line 4
    sget-wide v0, Lcom/sunia/HTREnginev2/p1;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/sunia/HTREnginev2/p1;->e:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/p1;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    .line 8
    sget-wide p1, Lcom/sunia/HTREnginev2/p1;->e:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    sput-wide v0, Lcom/sunia/HTREnginev2/p1;->e:J

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/p1;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;FFFFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/HTREnginev2/s1;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/sunia/HTREnginev2/p1;->b(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;FFFFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;"
        }
    .end annotation

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/pzo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pzo;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v1

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ltz v0, :cond_0

    .line 13
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v2

    .line 15
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    .line 16
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result p1

    div-float/2addr p1, v1

    add-float/2addr v4, p1

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result p1

    mul-float/2addr p1, v2

    mul-float/2addr v1, v0

    div-float/2addr p1, v1

    sub-float/2addr v4, p1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v4

    mul-float/2addr v4, v2

    mul-float/2addr v1, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 20
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    :goto_0
    move p1, v0

    move v8, v2

    move v9, v3

    move v10, v4

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/p1;

    .line 22
    new-instance v11, Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lcom/sunia/HTREnginev2/ozo;

    move-object v0, v13

    move-object v1, v6

    move v2, v8

    move v3, p1

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/ozo;-><init>(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;FFFF)V

    .line 23
    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 24
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v11, v0}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    .line 25
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v7
.end method

.method public static synthetic b(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;FFFFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/HTREnginev2/s1;
    .locals 3

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/s1;

    .line 3
    invoke-virtual {p5}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    div-float/2addr v1, p2

    add-float/2addr v1, p3

    .line 4
    invoke-virtual {p5}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p3

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p0

    sub-float/2addr p3, p0

    mul-float/2addr p3, p1

    div-float/2addr p3, p2

    add-float/2addr p3, p4

    invoke-direct {v0, v1, p3}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/s1;
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/s1;

    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/s1;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/sunia/HTREnginev2/s1;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/s1;

    return-object p0
.end method

.method public getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1;->d:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    move v3, v2

    move v4, v3

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v6

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v5

    cmpg-float v7, v6, v1

    if-gez v7, :cond_1

    move v1, v6

    :cond_1
    cmpg-float v7, v5, v2

    if-gez v7, :cond_2

    move v2, v5

    :cond_2
    cmpl-float v7, v6, v3

    if-lez v7, :cond_3

    move v3, v6

    :cond_3
    cmpl-float v6, v5, v4

    if-lez v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1;->d:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    :cond_5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->d:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/p1;->c:J

    return-wide v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/s1;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v3

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/s1;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v3

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
