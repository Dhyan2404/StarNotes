.class public Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils$c;-><init>(Ljava/io/File;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Lcom/blankj/utilcode/util/CacheDiskUtils$c;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/CacheDiskUtils$c;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;->f:Lcom/blankj/utilcode/util/CacheDiskUtils$c;

    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;->e:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;->e:Ljava/io/File;

    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a$a;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a$a;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, v0, v2

    int-to-long v6, v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;->f:Lcom/blankj/utilcode/util/CacheDiskUtils$c;

    invoke-static {v6}, Lcom/blankj/utilcode/util/CacheDiskUtils$c;->c(Lcom/blankj/utilcode/util/CacheDiskUtils$c;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;->f:Lcom/blankj/utilcode/util/CacheDiskUtils$c;

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$c;->d(Lcom/blankj/utilcode/util/CacheDiskUtils$c;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$a;->f:Lcom/blankj/utilcode/util/CacheDiskUtils$c;

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$c;->e(Lcom/blankj/utilcode/util/CacheDiskUtils$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    :cond_1
    return-void
.end method
