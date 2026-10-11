.class public final Lcom/couchbase/lite/internal/core/C4Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Constants$WebSocketError;,
        Lcom/couchbase/lite/internal/core/C4Constants$HttpError;,
        Lcom/couchbase/lite/internal/core/C4Constants$NetworkError;,
        Lcom/couchbase/lite/internal/core/C4Constants$LiteCoreError;,
        Lcom/couchbase/lite/internal/core/C4Constants$ErrorDomain;,
        Lcom/couchbase/lite/internal/core/C4Constants$IndexType;,
        Lcom/couchbase/lite/internal/core/C4Constants$EnumeratorFlags;,
        Lcom/couchbase/lite/internal/core/C4Constants$RevisionFlags;,
        Lcom/couchbase/lite/internal/core/C4Constants$DocumentFlags;,
        Lcom/couchbase/lite/internal/core/C4Constants$EncryptionKeySize;,
        Lcom/couchbase/lite/internal/core/C4Constants$EncryptionAlgorithm;,
        Lcom/couchbase/lite/internal/core/C4Constants$DatabaseFlags;,
        Lcom/couchbase/lite/internal/core/C4Constants$LogDomain;,
        Lcom/couchbase/lite/internal/core/C4Constants$LogLevel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFlags(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
