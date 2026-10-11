.class public Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
.super Lcom/dropbox/core/v2/DbxUploadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxUploadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field public final b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_builder"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_client"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic start()Lcom/dropbox/core/DbxUploader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->start()Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object p0

    return-object p0
.end method

.method public start()Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->b(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object p0

    return-object p0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/AlphaUploadBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withStrictConflict(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withStrictConflict(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method
