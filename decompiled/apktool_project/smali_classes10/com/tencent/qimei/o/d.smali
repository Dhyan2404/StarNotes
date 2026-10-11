.class public Lcom/tencent/qimei/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/o/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/o/d;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/o/d;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/o/d;->d:Z

    iput-object p1, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/o/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/o/d;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/o/d;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/o/d;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/o/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/o/d;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V
    .locals 4

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/qimei/o/d;->d:Z

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/o/b;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qimei/o/b;-><init>(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/o/c;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qimei/o/c;-><init>(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V

    .line 5
    iget-object p0, v0, Lcom/tencent/qimei/e/c;->b:Landroid/content/Context;

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/tencent/qimei/e/c;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/tencent/qimei/e/c;->c:J

    new-instance p0, Lcom/tencent/qmsp/oaid2/VendorManager;

    invoke-direct {p0}, Lcom/tencent/qmsp/oaid2/VendorManager;-><init>()V

    iget-object p1, v0, Lcom/tencent/qimei/e/c;->b:Landroid/content/Context;

    new-instance v2, Lcom/tencent/qimei/e/b;

    invoke-direct {v2, v0, v1}, Lcom/tencent/qimei/e/b;-><init>(Lcom/tencent/qimei/e/c;Lcom/tencent/qimei/e/d;)V

    invoke-virtual {p0, p1, v2}, Lcom/tencent/qmsp/oaid2/VendorManager;->getVendorInfo(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Lcom/tencent/qimei/o/c;->a(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/qimei/o/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/tencent/qimei/o/d;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/tencent/qimei/o/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/qimei/o/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/qimei/o/d;->d:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->r:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    .line 10
    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->y:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 11
    :cond_2
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qimei/ac/b;->b()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->u:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    .line 6
    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->i:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 7
    :cond_2
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->w:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->x:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->z:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->A:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/ac/b;->c()Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/qimei/e/c;->h:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    return-object v0
.end method
