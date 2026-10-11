.class public Lcom/tencent/qimei/m/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tencent/qimei/m/d;


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/m/d;->b:Z

    return-void
.end method

.method public static a()Lcom/tencent/qimei/m/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/m/d;->a:Lcom/tencent/qimei/m/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qimei/m/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/m/d;->a:Lcom/tencent/qimei/m/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qimei/m/d;

    invoke-direct {v1}, Lcom/tencent/qimei/m/d;-><init>()V

    sput-object v1, Lcom/tencent/qimei/m/d;->a:Lcom/tencent/qimei/m/d;

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
    sget-object v0, Lcom/tencent/qimei/m/d;->a:Lcom/tencent/qimei/m/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/tencent/qimei/m/d;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/qimei/m/d;->a(Ljava/lang/String;)V

    :cond_0
    const-string p1, "c_f_uptimes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/tencent/qimei/m/d;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p1, "c_f_bootids"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/tencent/qimei/m/d;->d:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qimei/m/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "f_uptimes"

    .line 4
    invoke-virtual {v0}, Lcom/tencent/qimei/l/g;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/tencent/qimei/l/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "f_uptimes"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "c_f_uptimes"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/tencent/qimei/m/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c_f_bootids"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qimei/m/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "c_f_uptimes"

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/qimei/m/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/m/d;->c:Ljava/lang/String;

    const-string p1, "c_f_bootids"

    invoke-virtual {p0, p1}, Lcom/tencent/qimei/m/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/m/d;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/qimei/m/d;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 5
    sget-object p0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    .line 6
    invoke-virtual {p0}, Lcom/tencent/qimei/l/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/l/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    move-object p0, v1

    .line 7
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "c_f_uptimes"

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v7, v5

    invoke-virtual {p0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string p0, "c_f_bootids"

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "/proc/sys/kernel/random/boot_id"

    .line 11
    invoke-static {p0}, Lcom/tencent/qimei/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v4, v3

    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x5

    if-le p0, v1, :cond_8

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 13
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v4, :cond_b

    .line 14
    sget-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    .line 15
    invoke-virtual {v0, p1, p0}, Lcom/tencent/qimei/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/l/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/l/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x400

    if-le p1, v1, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qimei/l/c;->a()Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/tencent/qimei/l/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method
