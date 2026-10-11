.class public Lcom/tencent/qimei/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/l/f;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/l/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-object v0, v0, Lcom/tencent/qimei/l/f;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-object v1, v1, Lcom/tencent/qimei/l/f;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "ISO8859-1"

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    invoke-virtual {v2, v1}, Lcom/tencent/qimei/l/f;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    array-length v2, v1

    const/16 v3, 0xa

    add-int/2addr v2, v3

    int-to-long v4, v2

    iget-object v2, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-wide v6, v2, Lcom/tencent/qimei/l/f;->e:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    array-length v4, v1

    add-int/2addr v4, v3

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/tencent/qimei/l/f;->e:J

    invoke-virtual {v2, v4, v5}, Lcom/tencent/qimei/l/f;->a(J)V

    :cond_1
    iget-object v2, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-object v2, v2, Lcom/tencent/qimei/l/f;->d:Ljava/nio/MappedByteBuffer;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-object v2, v2, Lcom/tencent/qimei/l/f;->d:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-object v2, v2, Lcom/tencent/qimei/l/f;->d:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/f;

    iget-object p0, p0, Lcom/tencent/qimei/l/f;->d:Ljava/nio/MappedByteBuffer;

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

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
