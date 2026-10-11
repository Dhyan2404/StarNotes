.class public Lcom/huawei/stylus/penengine/eink/model/StrokePoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:J


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->b:F

    .line 8
    iput p2, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->c:F

    return-void
.end method

.method public constructor <init>(FFJF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;-><init>(FF)V

    .line 4
    iput-wide p3, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->e:J

    .line 5
    iput p5, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->d:F

    return-void
.end method

.method public constructor <init>(IFFJF)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;-><init>(FFJF)V

    .line 2
    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->a:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->a:I

    return p0
.end method

.method public getPressure()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->d:F

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->e:J

    return-wide v0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->b:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->c:F

    return p0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->a:I

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->d:F

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->e:J

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->b:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/eink/model/StrokePoint;->c:F

    return-void
.end method
