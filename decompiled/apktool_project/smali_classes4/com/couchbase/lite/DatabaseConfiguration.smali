.class public final Lcom/couchbase/lite/DatabaseConfiguration;
.super Lcom/couchbase/lite/AbstractDatabaseConfiguration;
.source "SourceFile"


# instance fields
.field private encryptionKey:Lcom/couchbase/lite/EncryptionKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/DatabaseConfiguration;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/DatabaseConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;-><init>(Lcom/couchbase/lite/AbstractDatabaseConfiguration;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/couchbase/lite/DatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/DatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;-><init>(Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;->getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/DatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    return-void
.end method


# virtual methods
.method public getDatabaseConfiguration()Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/DatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    return-object p0
.end method

.method public bridge synthetic isFullSync()Z
    .locals 0

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->isFullSync()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isMMapEnabled()Z
    .locals 0

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->isMMapEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setDirectory(Ljava/lang/String;)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->setDirectory(Ljava/lang/String;)Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public setEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/EncryptionKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/DatabaseConfiguration;->encryptionKey:Lcom/couchbase/lite/EncryptionKey;

    return-object p0
.end method

.method public bridge synthetic setFullSync(Z)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->setFullSync(Z)Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMMapEnabled(Z)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->setMMapEnabled(Z)Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method
