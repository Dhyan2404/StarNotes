.class public Lcom/tencent/qimei/ae/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/ae/c$b;,
        Lcom/tencent/qimei/ae/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/tencent/qimei/ae/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/qimei/ae/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/ae/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/ae/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/tencent/qimei/ae/c;->e:Lcom/tencent/qimei/ae/c$b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tencent/qimei/ae/c;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/jsfile/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/ae/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/tencent/qimei/ae/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qimei/ae/c;->e:Lcom/tencent/qimei/ae/c$b;

    check-cast v0, Lcom/tencent/qimei/ad/e;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/qimei/ad/e;->c()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lc_fe_tm"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;J)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/tencent/qimei/m/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "hm_md_tm"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v0, ""

    :cond_0
    new-instance p1, Lcom/tencent/qimei/ae/a;

    const-string v2, "lc_fe_st_hm"

    invoke-direct {p1, p0, v1, v2}, Lcom/tencent/qimei/ae/a;-><init>(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object p0

    new-instance v1, Lcom/tencent/qimei/g/a;

    const-string v2, "https://tun-cos-1258344701.file.myqcloud.com/my.html"

    invoke-direct {v1, v2, v0, p1}, Lcom/tencent/qimei/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/g/c;)V

    invoke-virtual {p0, v1}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/qimei/ae/c;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/ae/c;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/qimei/m/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/m/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "js_md_tm"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v0, ""

    :cond_0
    new-instance p1, Lcom/tencent/qimei/ae/b;

    const-string v2, "lc_fe_st_js"

    invoke-direct {p1, p0, v1, v2}, Lcom/tencent/qimei/ae/b;-><init>(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object p0

    new-instance v1, Lcom/tencent/qimei/g/a;

    const-string v2, "https://tun-cos-1258344701.file.myqcloud.com/fp.js"

    invoke-direct {v1, v2, v0, p1}, Lcom/tencent/qimei/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/g/c;)V

    invoke-virtual {p0, v1}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
