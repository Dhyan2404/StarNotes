.class public final Lcom/google/common/cache/LocalCache$v;
.super Lcom/google/common/cache/LocalCache$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$x<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile h:J

.field public i:Lcom/google/common/cache/a;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public j:Lcom/google/common/cache/a;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$x;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/a;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$v;->h:J

    invoke-static {}, Lcom/google/common/cache/LocalCache;->I()Lcom/google/common/cache/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$v;->i:Lcom/google/common/cache/a;

    invoke-static {}, Lcom/google/common/cache/LocalCache;->I()Lcom/google/common/cache/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$v;->j:Lcom/google/common/cache/a;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$v;->h:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$v;->i:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$v;->j:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public setAccessTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$v;->h:J

    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$v;->i:Lcom/google/common/cache/a;

    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$v;->j:Lcom/google/common/cache/a;

    return-void
.end method
