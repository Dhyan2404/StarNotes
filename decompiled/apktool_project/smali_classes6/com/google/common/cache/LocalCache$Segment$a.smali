.class public Lcom/google/common/cache/LocalCache$Segment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$l;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:I

.field public final synthetic g:Lcom/google/common/cache/LocalCache$l;

.field public final synthetic h:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic i:Lcom/google/common/cache/LocalCache$Segment;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$l;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment$a;->i:Lcom/google/common/cache/LocalCache$Segment;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment$a;->e:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/LocalCache$Segment$a;->f:I

    iput-object p4, p0, Lcom/google/common/cache/LocalCache$Segment$a;->g:Lcom/google/common/cache/LocalCache$l;

    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment$a;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment$a;->i:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment$a;->e:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment$a;->f:I

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment$a;->g:Lcom/google/common/cache/LocalCache$l;

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment$a;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$l;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/common/cache/LocalCache;->q0:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Segment$a;->g:Lcom/google/common/cache/LocalCache$l;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$l;->j(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
