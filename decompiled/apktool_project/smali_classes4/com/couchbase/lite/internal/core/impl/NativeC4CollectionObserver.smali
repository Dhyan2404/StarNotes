.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4CollectionObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native create(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native free(J)V
.end method

.method private static native getChanges(JI)[Lcom/couchbase/lite/internal/core/C4DocumentChange;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method


# virtual methods
.method public nCreate(JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4CollectionObserver;->create(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4CollectionObserver;->free(J)V

    return-void
.end method

.method public nGetChanges(JI)[Lcom/couchbase/lite/internal/core/C4DocumentChange;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4CollectionObserver;->getChanges(JI)[Lcom/couchbase/lite/internal/core/C4DocumentChange;

    move-result-object p0

    return-object p0
.end method
