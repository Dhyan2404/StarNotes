.class public final Lcom/couchbase/lite/ListenerPasswordAuthenticator;
.super Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;-><init>(Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;)V

    return-void
.end method
