.class Lcom/tencent/beacon/a/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/d/g;->d()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/a/d/g;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/a/d/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v0}, Lcom/tencent/beacon/a/d/g;->a(Lcom/tencent/beacon/a/d/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v1}, Lcom/tencent/beacon/a/d/g;->b(Lcom/tencent/beacon/a/d/g;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "ISO8859-1"

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/beacon/a/d/g;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    array-length v2, v1

    const/16 v3, 0xa

    add-int/2addr v2, v3

    int-to-long v4, v2

    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->c(Lcom/tencent/beacon/a/d/g;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    array-length v4, v1

    add-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lcom/tencent/beacon/a/d/g;->a(Lcom/tencent/beacon/a/d/g;J)J

    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->c(Lcom/tencent/beacon/a/d/g;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/tencent/beacon/a/d/g;->b(Lcom/tencent/beacon/a/d/g;J)V

    :cond_1
    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {p0}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v0

    const-string v1, "504"

    const-string v2, "[properties] write to file error!"

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
