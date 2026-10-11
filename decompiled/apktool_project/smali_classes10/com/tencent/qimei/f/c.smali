.class public Lcom/tencent/qimei/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/f/a;


# static fields
.field public static final a:Ljava/lang/String; = "com.tencent.qimei.f.c"

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/f/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/tencent/qimei/f/b;

.field public volatile f:Ljava/lang/Boolean;

.field public volatile g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/f/c;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/f/c;->g:Z

    iput-object p1, p0, Lcom/tencent/qimei/f/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qimei/f/b;

    invoke-direct {v0}, Lcom/tencent/qimei/f/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/f/c;->e:Lcom/tencent/qimei/f/b;

    const-string v0, "pl_"

    invoke-static {v0}, Lcom/tencent/qimei/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qimei/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/m/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/f/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/f/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/f/c;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/f/c;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/f/c;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/f/c;-><init>(Ljava/lang/String;)V

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


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/qimei/f/c;->e:Lcom/tencent/qimei/f/b;

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/f/b;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/qimei/f/b;->b:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    iget-object v6, v0, Lcom/tencent/qimei/f/b;->c:Ljava/nio/channels/FileLock;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v1, v0, Lcom/tencent/qimei/f/b;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_1

    long-to-int v1, v6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qimei/f/b;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-direct {v0, v6, v5, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    move-object v0, v4

    .line 3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v6, 0x2c

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move v4, v5

    :goto_2
    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v4

    move v4, v5

    :goto_4
    if-eqz v4, :cond_9

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    .line 5
    :cond_5
    invoke-static {}, Lcom/tencent/qimei/e/a;->e()I

    move-result v1

    .line 6
    invoke-static {}, Lcom/tencent/qimei/e/a;->c()Ljava/lang/String;

    move-result-object v8

    if-ne v1, v4, :cond_6

    .line 7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/m/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move v0, v7

    goto :goto_7

    :cond_9
    :goto_6
    move v0, v5

    :goto_7
    if-eqz v0, :cond_a

    .line 8
    iput-boolean v7, p0, Lcom/tencent/qimei/f/c;->g:Z

    goto :goto_8

    :cond_a
    iput-boolean v5, p0, Lcom/tencent/qimei/f/c;->g:Z

    iget-object p0, p0, Lcom/tencent/qimei/f/c;->e:Lcom/tencent/qimei/f/b;

    .line 9
    invoke-static {}, Lcom/tencent/qimei/e/a;->e()I

    move-result v0

    .line 10
    invoke-static {}, Lcom/tencent/qimei/e/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/tencent/qimei/f/b;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/tencent/qimei/f/b;->b:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/tencent/qimei/f/b;->c:Ljava/nio/channels/FileLock;

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/f/b;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object p0, p0, Lcom/tencent/qimei/f/b;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v7}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p0

    invoke-static {p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/f/c;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qimei/f/c;->e:Lcom/tencent/qimei/f/b;

    iget-object v1, p0, Lcom/tencent/qimei/f/c;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/tencent/qimei/f/b;->a(Ljava/lang/String;Lcom/tencent/qimei/f/a;I)Z

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qimei/f/c;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    iget-boolean v3, p0, Lcom/tencent/qimei/f/c;->g:Z

    xor-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "multiproc"

    const-string v5, "%s cur right:%b,%b"

    invoke-static {v3, v5, v1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qimei/f/c;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/f/c;->f:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/f/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
