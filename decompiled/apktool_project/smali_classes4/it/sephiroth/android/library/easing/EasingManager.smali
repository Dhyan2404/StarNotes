.class public final Lit/sephiroth/android/library/easing/EasingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/easing/EasingManager$b;,
        Lit/sephiroth/android/library/easing/EasingManager$c;,
        Lit/sephiroth/android/library/easing/EasingManager$EaseType;,
        Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;
    }
.end annotation


# static fields
.field public static final m:I = 0x3c

.field public static final n:I = 0x10

.field public static final o:Landroid/os/Handler;


# instance fields
.field public a:Lit/sephiroth/android/library/easing/Easing;

.field public b:Ljava/lang/reflect/Method;

.field public c:Z

.field public d:J

.field public e:I

.field public f:D

.field public g:D

.field public h:D

.field public i:Z

.field public j:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

.field public k:Ljava/lang/String;

.field public l:Lit/sephiroth/android/library/easing/EasingManager$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/easing/EasingManager;->o:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->j:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lit/sephiroth/android/library/easing/Easing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lit/sephiroth/android/library/easing/Easing;",
            ">;)",
            "Lit/sephiroth/android/library/easing/Easing;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/easing/Easing;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lit/sephiroth/android/library/easing/Easing;Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/reflect/Method;
    .locals 3

    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/easing/EasingManager;->c(Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object p2
.end method

.method public c(Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lit/sephiroth/android/library/easing/EasingManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "easeOut"

    return-object p0

    :cond_1
    const-string p0, "easeNone"

    return-object p0

    :cond_2
    const-string p0, "easeInOut"

    return-object p0

    :cond_3
    const-string p0, "easeIn"

    return-object p0
.end method

.method public start(Ljava/lang/Class;Lit/sephiroth/android/library/easing/EasingManager$EaseType;DDI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lit/sephiroth/android/library/easing/Easing;",
            ">;",
            "Lit/sephiroth/android/library/easing/EasingManager$EaseType;",
            "DDI)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 1
    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/easing/EasingManager;->start(Ljava/lang/Class;Lit/sephiroth/android/library/easing/EasingManager$EaseType;DDIJ)V

    return-void
.end method

.method public start(Ljava/lang/Class;Lit/sephiroth/android/library/easing/EasingManager$EaseType;DDIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lit/sephiroth/android/library/easing/Easing;",
            ">;",
            "Lit/sephiroth/android/library/easing/EasingManager$EaseType;",
            "DDIJ)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lit/sephiroth/android/library/easing/EasingManager;->c:Z

    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/easing/EasingManager;->a(Ljava/lang/Class;)Lit/sephiroth/android/library/easing/Easing;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->a:Lit/sephiroth/android/library/easing/Easing;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/easing/EasingManager;->b(Lit/sephiroth/android/library/easing/Easing;Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->b:Ljava/lang/reflect/Method;

    if-nez p1, :cond_1

    return-void

    :cond_1
    cmpl-double p1, p3, p5

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->i:Z

    if-eqz p1, :cond_3

    .line 6
    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->f:D

    .line 7
    iput-wide p3, p0, Lit/sephiroth/android/library/easing/EasingManager;->g:D

    goto :goto_1

    .line 8
    :cond_3
    iput-wide p3, p0, Lit/sephiroth/android/library/easing/EasingManager;->f:D

    .line 9
    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->g:D

    .line 10
    :goto_1
    iget-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->f:D

    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->h:D

    .line 11
    iput p7, p0, Lit/sephiroth/android/library/easing/EasingManager;->e:I

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    add-long/2addr p5, p8

    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->d:J

    .line 13
    iput-boolean p2, p0, Lit/sephiroth/android/library/easing/EasingManager;->c:Z

    .line 14
    new-instance p1, Lit/sephiroth/android/library/easing/EasingManager$b;

    invoke-direct {p1, p0}, Lit/sephiroth/android/library/easing/EasingManager$b;-><init>(Lit/sephiroth/android/library/easing/EasingManager;)V

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->l:Lit/sephiroth/android/library/easing/EasingManager$b;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 p5, 0x10

    add-long/2addr p1, p5

    add-long/2addr p1, p8

    const-wide/16 v0, 0x0

    cmp-long p7, p8, v0

    if-nez p7, :cond_4

    .line 16
    iget-object p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->j:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    invoke-interface {p5, p3, p4}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingStarted(D)V

    goto :goto_2

    .line 17
    :cond_4
    sget-object p7, Lit/sephiroth/android/library/easing/EasingManager;->o:Landroid/os/Handler;

    new-instance p8, Lit/sephiroth/android/library/easing/EasingManager$c;

    invoke-direct {p8, p0, p3, p4}, Lit/sephiroth/android/library/easing/EasingManager$c;-><init>(Lit/sephiroth/android/library/easing/EasingManager;D)V

    iget-object p3, p0, Lit/sephiroth/android/library/easing/EasingManager;->k:Ljava/lang/String;

    sub-long p4, p1, p5

    invoke-virtual {p7, p8, p3, p4, p5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 18
    :goto_2
    sget-object p3, Lit/sephiroth/android/library/easing/EasingManager;->o:Landroid/os/Handler;

    iget-object p4, p0, Lit/sephiroth/android/library/easing/EasingManager;->l:Lit/sephiroth/android/library/easing/EasingManager$b;

    iget-object p0, p0, Lit/sephiroth/android/library/easing/EasingManager;->k:Ljava/lang/String;

    invoke-virtual {p3, p4, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_5
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/easing/EasingManager;->c:Z

    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager;->o:Landroid/os/Handler;

    iget-object v1, p0, Lit/sephiroth/android/library/easing/EasingManager;->l:Lit/sephiroth/android/library/easing/EasingManager$b;

    iget-object p0, p0, Lit/sephiroth/android/library/easing/EasingManager;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
