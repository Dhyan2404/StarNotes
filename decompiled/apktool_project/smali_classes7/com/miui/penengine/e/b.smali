.class public Lcom/miui/penengine/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/penengine/e/c;


# static fields
.field public static final f:Ljava/lang/String; = "b"

.field public static final g:Z = true

.field public static volatile h:Lcom/miui/penengine/e/b;


# instance fields
.field public a:Lcom/miui/penengine/f/i;

.field public b:F

.field public c:F

.field public d:Z

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/miui/penengine/e/b;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/penengine/e/b;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/penengine/e/b;->d:Z

    iput-boolean v0, p0, Lcom/miui/penengine/e/b;->e:Z

    return-void
.end method

.method public static c()Lcom/miui/penengine/e/b;
    .locals 2

    sget-object v0, Lcom/miui/penengine/e/b;->h:Lcom/miui/penengine/e/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/penengine/e/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/e/b;->h:Lcom/miui/penengine/e/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/penengine/e/b;

    invoke-direct {v1}, Lcom/miui/penengine/e/b;-><init>()V

    sput-object v1, Lcom/miui/penengine/e/b;->h:Lcom/miui/penengine/e/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/penengine/e/b;->h:Lcom/miui/penengine/e/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/penengine/e/b;->d:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/penengine/e/b;->e:Z

    if-nez v0, :cond_1

    const/4 p0, -0x4

    return p0

    :cond_1
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    invoke-static {v1}, Lcom/miui/penengine/d/c;->a(Lcom/miui/penengine/estimate/MiuiMotionEventInfo;)Lcom/miui/penengine/d/c;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/penengine/e/b;->a:Lcom/miui/penengine/f/i;

    invoke-virtual {v2, v1}, Lcom/miui/penengine/f/i;->a(Lcom/miui/penengine/d/c;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/miui/penengine/e/b;->a:Lcom/miui/penengine/f/i;

    invoke-virtual {p0}, Lcom/miui/penengine/f/i;->d()[Lcom/miui/penengine/f/f;

    move-result-object p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/miui/penengine/e/b;->f:Ljava/lang/String;

    const-string p1, "Output error."

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_7

    aget-object v3, p0, v2

    new-instance v4, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    invoke-virtual {v3}, Lcom/miui/penengine/f/f;->b()F

    move-result v5

    invoke-virtual {v3}, Lcom/miui/penengine/f/f;->c()F

    move-result v6

    invoke-virtual {v3}, Lcom/miui/penengine/f/f;->a()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;-><init>(FFJ)V

    invoke-virtual {v4, p1}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->distanceTo(Lcom/miui/penengine/estimate/MiuiMotionEventInfo;)F

    move-result v5

    const/high16 v6, 0x43960000    # 300.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    sget-object v3, Lcom/miui/penengine/e/b;->f:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Abnormal point, distance: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " x: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getX()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " y: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getY()F

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/penengine/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    invoke-virtual {v3}, Lcom/miui/penengine/f/f;->b()F

    move-result v5

    invoke-virtual {v3}, Lcom/miui/penengine/f/f;->c()F

    move-result v6

    invoke-virtual {v3}, Lcom/miui/penengine/f/f;->a()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;-><init>(FFJ)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_3
    sget-object p0, Lcom/miui/penengine/e/b;->f:Ljava/lang/String;

    const-string p1, "Input error."

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/miui/penengine/e/b;->b:F

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/miui/penengine/e/b;->d:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/miui/penengine/e/b;->f:Ljava/lang/String;

    const-string p1, "Init repeat"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/penengine/f/i;

    invoke-direct {v0, p1}, Lcom/miui/penengine/f/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/penengine/e/b;->a:Lcom/miui/penengine/f/i;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Lcom/miui/penengine/f/i;->a(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/penengine/e/b;->d:Z

    return-void
.end method

.method public a()Z
    .locals 3

    .line 3
    invoke-static {}, Lcom/miui/penengine/facade/algorithm/JNIPathEstimateInterface;->isEstimateSystemSoEnable()Z

    move-result v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/penengine/f/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/penengine/e/b;->e:Z

    sget-object v0, Lcom/miui/penengine/e/b;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Now enable is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/miui/penengine/e/b;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/miui/penengine/e/b;->e:Z

    return p0
.end method

.method public b()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/penengine/e/b;->c:F

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/miui/penengine/e/b;->c:F

    return-void
.end method

.method public d()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/e/b;->b:F

    return p0
.end method
