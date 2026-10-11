.class public Lcom/dropbox/core/v2/DbxAppClientV2Base;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field public final a:Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

.field public final b:Lcom/dropbox/core/v2/check/DbxAppCheckRequests;

.field public final c:Lcom/dropbox/core/v2/files/DbxAppFilesRequests;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    new-instance v0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->a:Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

    new-instance v0, Lcom/dropbox/core/v2/check/DbxAppCheckRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/check/DbxAppCheckRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->b:Lcom/dropbox/core/v2/check/DbxAppCheckRequests;

    new-instance v0, Lcom/dropbox/core/v2/files/DbxAppFilesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DbxAppFilesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->c:Lcom/dropbox/core/v2/files/DbxAppFilesRequests;

    return-void
.end method


# virtual methods
.method public auth()Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->a:Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

    return-object p0
.end method

.method public check()Lcom/dropbox/core/v2/check/DbxAppCheckRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->b:Lcom/dropbox/core/v2/check/DbxAppCheckRequests;

    return-object p0
.end method

.method public files()Lcom/dropbox/core/v2/files/DbxAppFilesRequests;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->c:Lcom/dropbox/core/v2/files/DbxAppFilesRequests;

    return-object p0
.end method
