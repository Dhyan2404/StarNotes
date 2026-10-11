.class public Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;,
        Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    }
.end annotation


# instance fields
.field protected final fileId:Ljava/lang/String;

.field protected final isDeleted:Z

.field protected final mimeType:Ljava/lang/String;

.field protected final providerVersion:Ljava/lang/String;

.field protected final title:Ljava/lang/String;

.field protected final user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

.field protected final userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

.field protected final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v1, "\"\""

    const-string v2, "\"\""

    const-string v3, "\"\""

    const-string v4, "\"\""

    const-string v5, "\"\""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/clouddocs/UserInfo;ZLcom/dropbox/core/v2/clouddocs/UserPermissions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/clouddocs/UserInfo;ZLcom/dropbox/core/v2/clouddocs/UserPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->fileId:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->title:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 4
    iput-object p3, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->mimeType:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 5
    iput-object p4, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->version:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 6
    iput-object p5, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->providerVersion:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    .line 8
    iput-boolean p7, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->isDeleted:Z

    .line 9
    iput-object p8, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'providerVersion\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'version\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'mimeType\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'title\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'fileId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;

    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->fileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->fileId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->mimeType:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->version:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->providerVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->providerVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/clouddocs/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->isDeleted:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->isDeleted:Z

    if-ne v2, v3, :cond_8

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    if-eq p0, p1, :cond_9

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :cond_9
    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public getIsDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->isDeleted:Z

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getProviderVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->providerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Lcom/dropbox/core/v2/clouddocs/UserInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    return-object p0
.end method

.method public getUserPermissions()Lcom/dropbox/core/v2/clouddocs/UserPermissions;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->fileId:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->providerVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->user:Lcom/dropbox/core/v2/clouddocs/UserInfo;

    iget-boolean v6, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->isDeleted:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult;->userPermissions:Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;->b:Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;->b:Lcom/dropbox/core/v2/clouddocs/GetMetadataResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
