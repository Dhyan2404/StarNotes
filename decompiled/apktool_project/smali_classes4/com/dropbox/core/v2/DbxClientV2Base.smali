.class public Lcom/dropbox/core/v2/DbxClientV2Base;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field public final a:Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

.field public final b:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

.field public final c:Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

.field public final d:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

.field public final e:Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

.field public final f:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

.field public final g:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

.field public final h:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field public final i:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field public final j:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field public final k:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    new-instance v0, Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/account/DbxUserAccountRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->a:Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

    new-instance v0, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->b:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    new-instance v0, Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/check/DbxUserCheckRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->c:Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->d:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    new-instance v0, Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->e:Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->f:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    new-instance v0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->g:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    new-instance v0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->h:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    new-instance v0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->i:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    new-instance v0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->j:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    new-instance v0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->k:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    return-void
.end method


# virtual methods
.method public account()Lcom/dropbox/core/v2/account/DbxUserAccountRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->a:Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

    return-object p0
.end method

.method public auth()Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->b:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    return-object p0
.end method

.method public check()Lcom/dropbox/core/v2/check/DbxUserCheckRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->c:Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

    return-object p0
.end method

.method public cloudDocs()Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->d:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    return-object p0
.end method

.method public contacts()Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->e:Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

    return-object p0
.end method

.method public fileProperties()Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->f:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    return-object p0
.end method

.method public fileRequests()Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->g:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    return-object p0
.end method

.method public files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->h:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    return-object p0
.end method

.method public paper()Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->i:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    return-object p0
.end method

.method public sharing()Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->j:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    return-object p0
.end method

.method public users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->k:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    return-object p0
.end method
