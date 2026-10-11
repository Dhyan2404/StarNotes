.class public Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "StrokeInfo"


# instance fields
.field public a:I

.field public b:F

.field public c:I

.field public d:Landroid/graphics/RectF;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/eink/model/StrokePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IFILjava/util/List;Landroid/graphics/RectF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFI",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/eink/model/StrokePoint;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->a:I

    iput p2, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->b:F

    iput p3, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->c:I

    iput-object p4, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->d:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getBound()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getBrushColor()I
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->c:I

    return p0
.end method

.method public getBrushType()I
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->a:I

    return p0
.end method

.method public getBrushWidth()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->b:F

    return p0
.end method

.method public getStrokePoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/eink/model/StrokePoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;->e:Ljava/util/List;

    return-object p0
.end method
