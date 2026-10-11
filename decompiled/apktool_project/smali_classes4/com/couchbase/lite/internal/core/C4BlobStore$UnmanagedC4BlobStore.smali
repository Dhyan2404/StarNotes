.class final Lcom/couchbase/lite/internal/core/C4BlobStore$UnmanagedC4BlobStore;
.super Lcom/couchbase/lite/internal/core/C4BlobStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4BlobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnmanagedC4BlobStore"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;JLcom/couchbase/lite/internal/core/C4BlobStore$1;)V

    return-void
.end method
