.class Lcom/couchbase/lite/internal/core/C4Peer$UncountedPeerHolder;
.super Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncountedPeerHolder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;-><init>(Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    iget-wide v0, p1, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->id:J

    iget-wide p0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->id:J

    long-to-int p0, v0

    return p0
.end method
