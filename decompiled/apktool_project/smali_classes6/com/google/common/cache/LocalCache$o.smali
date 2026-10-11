.class public final Lcom/google/common/cache/LocalCache$o;
.super Lcom/google/common/cache/LocalCache$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile i:J

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

.field public k:Lcom/google/common/cache/a;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile l:J

.field public m:Lcom/google/common/cache/a;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public n:Lcom/google/common/cache/a;
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
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$p;-><init>(Ljava/lang/Object;ILcom/google/common/cache/a;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$o;->i:J

    invoke-static {}, Lcom/google/common/cache/LocalCache;->I()Lcom/google/common/cache/a;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$o;->j:Lcom/google/common/cache/a;

    invoke-static {}, Lcom/google/common/cache/LocalCache;->I()Lcom/google/common/cache/a;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$o;->k:Lcom/google/common/cache/a;

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$o;->l:J

    invoke-static {}, Lcom/google/common/cache/LocalCache;->I()Lcom/google/common/cache/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->m:Lcom/google/common/cache/a;

    invoke-static {}, Lcom/google/common/cache/LocalCache;->I()Lcom/google/common/cache/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->n:Lcom/google/common/cache/a;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$o;->i:J

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

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$o;->j:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$o;->m:Lcom/google/common/cache/a;

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

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$o;->k:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$o;->n:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public getWriteTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$o;->l:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$o;->i:J

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

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->j:Lcom/google/common/cache/a;

    return-void
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->m:Lcom/google/common/cache/a;

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

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->k:Lcom/google/common/cache/a;

    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->n:Lcom/google/common/cache/a;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$o;->l:J

    return-void
.end method
