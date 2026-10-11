.class public Lcom/couchbase/lite/internal/replicator/ConflictResolutionException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final FAILED_SELECTING_CONFLICTING_REVISION:I = -0x65


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
