.class public Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ListenerAuthenticator;


# instance fields
.field private final delegate:Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;->delegate:Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;[C)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [C
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;->delegate:Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/ListenerPasswordAuthenticatorDelegate;->authenticate(Ljava/lang/String;[C)Z

    move-result p0

    return p0
.end method
