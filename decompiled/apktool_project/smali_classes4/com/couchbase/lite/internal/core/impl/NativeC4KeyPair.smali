.class public Lcom/couchbase/lite/internal/core/impl/NativeC4KeyPair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native free(J)V
.end method

.method private static native fromExternal(BIJ)J
.end method

.method private static native generateSelfSignedCertificate(JBI[[Ljava/lang/String;BJ)[B
    .param p4    # [[Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method


# virtual methods
.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4KeyPair;->free(J)V

    return-void
.end method

.method public nFromExternal(BIJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4KeyPair;->fromExternal(BIJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGenerateSelfSignedCertificate(JBI[[Ljava/lang/String;BJ)[B
    .locals 0
    .param p5    # [[Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p8}, Lcom/couchbase/lite/internal/core/impl/NativeC4KeyPair;->generateSelfSignedCertificate(JBI[[Ljava/lang/String;BJ)[B

    move-result-object p0

    return-object p0
.end method
