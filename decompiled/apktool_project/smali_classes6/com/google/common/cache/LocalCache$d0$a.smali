.class public Lcom/google/common/cache/LocalCache$d0$a;
.super Lcom/google/common/cache/LocalCache$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public e:Lcom/google/common/cache/a;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:Lcom/google/common/cache/a;
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
.method public constructor <init>(Lcom/google/common/cache/LocalCache$d0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$d;-><init>()V

    iput-object p0, p0, Lcom/google/common/cache/LocalCache$d0$a;->e:Lcom/google/common/cache/a;

    iput-object p0, p0, Lcom/google/common/cache/LocalCache$d0$a;->f:Lcom/google/common/cache/a;

    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0$a;->e:Lcom/google/common/cache/a;

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

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0$a;->f:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public getWriteTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
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

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$d0$a;->e:Lcom/google/common/cache/a;

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

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$d0$a;->f:Lcom/google/common/cache/a;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    return-void
.end method
