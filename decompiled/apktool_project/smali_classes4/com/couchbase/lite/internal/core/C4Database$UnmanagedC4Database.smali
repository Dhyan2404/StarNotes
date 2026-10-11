.class final Lcom/couchbase/lite/internal/core/C4Database$UnmanagedC4Database;
.super Lcom/couchbase/lite/internal/core/C4Database;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnmanagedC4Database"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;J)V
    .locals 6
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v2, "shell"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Database;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    return-void
.end method
