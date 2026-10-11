.class public Lcom/couchbase/lite/ListenerCertificateAuthenticator;
.super Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;-><init>(Ljava/util/List;Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;-><init>(Ljava/util/List;Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;)V

    return-void
.end method
