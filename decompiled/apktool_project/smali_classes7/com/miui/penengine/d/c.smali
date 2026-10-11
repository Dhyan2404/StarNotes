.class public Lcom/miui/penengine/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:D = 0.5

.field public static final j:D = 0.7853981852531433

.field public static final k:D = 1.0


# instance fields
.field public a:F

.field public b:F

.field public c:J

.field public d:D

.field public e:D

.field public f:D

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(DDJDDDZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/penengine/d/c;->a:F

    double-to-float p1, p3

    iput p1, p0, Lcom/miui/penengine/d/c;->b:F

    iput-wide p5, p0, Lcom/miui/penengine/d/c;->c:J

    iput-wide p7, p0, Lcom/miui/penengine/d/c;->d:D

    iput-wide p9, p0, Lcom/miui/penengine/d/c;->e:D

    iput-wide p11, p0, Lcom/miui/penengine/d/c;->f:D

    iput-boolean p13, p0, Lcom/miui/penengine/d/c;->g:Z

    iput p14, p0, Lcom/miui/penengine/d/c;->h:I

    return-void
.end method

.method public constructor <init>(DDJI)V
    .locals 15

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide v9, 0x3fe921fb60000000L    # 0.7853981852531433

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const/4 v13, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v14, p7

    .line 2
    invoke-direct/range {v0 .. v14}, Lcom/miui/penengine/d/c;-><init>(DDJDDDZI)V

    return-void
.end method

.method public static a(Lcom/miui/penengine/estimate/MiuiMotionEventInfo;)Lcom/miui/penengine/d/c;
    .locals 16

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Lcom/miui/penengine/d/c;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getY()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getPressure()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getOrientation()F

    move-result v1

    float-to-double v10, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getTilt()F

    move-result v1

    float-to-double v12, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->isHistoryPoint()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getMotionAction()I

    move-result v15

    move-object v1, v0

    invoke-direct/range {v1 .. v15}, Lcom/miui/penengine/d/c;-><init>(DDJDDDZI)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/miui/penengine/d/c;->h:I

    return p0
.end method

.method public a(D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/miui/penengine/d/c;->e:D

    return-void
.end method

.method public a(DDJDDDZI)V
    .locals 0

    double-to-float p1, p1

    .line 4
    iput p1, p0, Lcom/miui/penengine/d/c;->a:F

    double-to-float p1, p3

    iput p1, p0, Lcom/miui/penengine/d/c;->b:F

    iput-wide p5, p0, Lcom/miui/penengine/d/c;->c:J

    iput-wide p7, p0, Lcom/miui/penengine/d/c;->d:D

    iput-wide p9, p0, Lcom/miui/penengine/d/c;->e:D

    iput-wide p11, p0, Lcom/miui/penengine/d/c;->f:D

    iput-boolean p13, p0, Lcom/miui/penengine/d/c;->g:Z

    iput p14, p0, Lcom/miui/penengine/d/c;->h:I

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/miui/penengine/d/c;->a:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/miui/penengine/d/c;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/miui/penengine/d/c;->c:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/miui/penengine/d/c;->g:Z

    return-void
.end method

.method public a(Lcom/miui/penengine/d/c;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    iget v0, p1, Lcom/miui/penengine/d/c;->a:F

    iget v1, p0, Lcom/miui/penengine/d/c;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lcom/miui/penengine/d/c;->b:F

    iget p0, p0, Lcom/miui/penengine/d/c;->b:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/penengine/d/c;->e:D

    return-wide v0
.end method

.method public b(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/miui/penengine/d/c;->d:D

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/miui/penengine/d/c;->b:F

    return-void
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/penengine/d/c;->d:D

    return-wide v0
.end method

.method public c(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/miui/penengine/d/c;->f:D

    return-void
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/penengine/d/c;->f:D

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/penengine/d/c;->c:J

    return-wide v0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/c;->a:F

    return p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/d/c;->b:F

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/penengine/d/c;->g:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MotionPoint{x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/penengine/d/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/penengine/d/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/penengine/d/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/penengine/d/c;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/penengine/d/c;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", tilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/penengine/d/c;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/penengine/d/c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/penengine/d/c;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
