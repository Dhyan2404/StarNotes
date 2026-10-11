.class public Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected fileId:Ljava/lang/String;

.field protected isDeleted:Z

.field protected mimeType:Ljava/lang/String;

.field protected providerVersion:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

.field protected userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"\""

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->fileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->providerVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->isDeleted:Z

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
    .locals 10

    new-instance v9, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->fileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->version:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->providerVersion:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    iget-boolean v7, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->isDeleted:Z

    iget-object v8, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/clouddocs/UserInfo;ZLcom/dropbox/core/v2/clouddocs/UserPermissions;)V

    return-object v9
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->fileId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->fileId:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public withIsDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->isDeleted:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->isDeleted:Z

    :goto_0
    return-object p0
.end method

.method public withMimeType(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->mimeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->mimeType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public withProviderVersion(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->providerVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->providerVersion:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->title:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public withUser(Lcom/dropbox/core/v2/clouddocs/UserInfo;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    return-object p0
.end method

.method public withUserPermissions(Lcom/dropbox/core/v2/clouddocs/UserPermissions;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    return-object p0
.end method

.method public withVersion(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->version:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;->version:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
