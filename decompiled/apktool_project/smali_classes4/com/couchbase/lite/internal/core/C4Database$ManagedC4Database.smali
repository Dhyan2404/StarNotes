.class final Lcom/couchbase/lite/internal/core/C4Database$ManagedC4Database;
.super Lcom/couchbase/lite/internal/core/C4Database;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedC4Database"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;J)V
    .locals 6
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sunia/HTREnginev2/dy;

    invoke-direct {v5, p1}, Lcom/sunia/HTREnginev2/dy;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Database;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    return-void
.end method
