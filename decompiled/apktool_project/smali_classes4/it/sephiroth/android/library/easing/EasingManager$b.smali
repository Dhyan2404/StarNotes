.class public Lit/sephiroth/android/library/easing/EasingManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/easing/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lit/sephiroth/android/library/easing/EasingManager;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/easing/EasingManager;)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v0, v0, Lit/sephiroth/android/library/easing/EasingManager;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v4, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v5, v4, Lit/sephiroth/android/library/easing/EasingManager;->h:D

    :try_start_0
    iget-object v7, v4, Lit/sephiroth/android/library/easing/EasingManager;->b:Ljava/lang/reflect/Method;

    iget-object v4, v4, Lit/sephiroth/android/library/easing/EasingManager;->a:Lit/sephiroth/android/library/easing/Easing;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v11, v9, Lit/sephiroth/android/library/easing/EasingManager;->f:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    iget-object v9, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v12, v9, Lit/sephiroth/android/library/easing/EasingManager;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    iget-object v9, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iget v9, v9, Lit/sephiroth/android/library/easing/EasingManager;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iput-wide v7, v4, Lit/sephiroth/android/library/easing/EasingManager;->h:D

    const-wide/16 v12, 0x10

    div-long v12, v2, v12

    long-to-int v9, v12

    add-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x10

    int-to-long v11, v9

    add-long/2addr v0, v11

    iget v9, v4, Lit/sephiroth/android/library/easing/EasingManager;->e:I

    int-to-long v11, v9

    cmp-long v2, v2, v11

    if-gez v2, :cond_1

    iget-object v2, v4, Lit/sephiroth/android/library/easing/EasingManager;->j:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    iget-boolean v3, v4, Lit/sephiroth/android/library/easing/EasingManager;->i:Z

    if-eqz v3, :cond_0

    iget-wide v3, v4, Lit/sephiroth/android/library/easing/EasingManager;->g:D

    sub-double v7, v3, v7

    :cond_0
    invoke-interface {v2, v7, v8, v5, v6}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingValueChanged(DD)V

    sget-object v2, Lit/sephiroth/android/library/easing/EasingManager;->o:Landroid/os/Handler;

    iget-object v3, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v3, v3, Lit/sephiroth/android/library/easing/EasingManager;->k:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, v4, Lit/sephiroth/android/library/easing/EasingManager;->j:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    iget-boolean v1, v4, Lit/sephiroth/android/library/easing/EasingManager;->i:Z

    if-eqz v1, :cond_2

    iget-wide v1, v4, Lit/sephiroth/android/library/easing/EasingManager;->g:D

    goto :goto_0

    :cond_2
    iget-wide v1, v4, Lit/sephiroth/android/library/easing/EasingManager;->f:D

    :goto_0
    invoke-interface {v0, v1, v2}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingFinished(D)V

    iget-object p0, p0, Lit/sephiroth/android/library/easing/EasingManager$b;->e:Lit/sephiroth/android/library/easing/EasingManager;

    iput-boolean v10, p0, Lit/sephiroth/android/library/easing/EasingManager;->c:Z

    :goto_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
