.class public Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;
.super Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;
.source "SourceFile"


# instance fields
.field private final encryptionKey:Lcom/couchbase/lite/EncryptionKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/DatabaseConfiguration;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/DatabaseConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;-><init>(Lcom/couchbase/lite/DatabaseConfiguration;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/DatabaseConfiguration;->getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    return-void
.end method


# virtual methods
.method public getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    return-object p0
.end method
