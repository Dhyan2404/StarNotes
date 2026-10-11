.class public Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/clouddocs/UserPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected canComment:Z

.field protected canDownload:Z

.field protected canEdit:Z

.field protected canRename:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canEdit:Z

    iput-boolean v0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canRename:Z

    iput-boolean v0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canComment:Z

    iput-boolean v0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canDownload:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/clouddocs/UserPermissions;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canEdit:Z

    iget-boolean v2, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canRename:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canComment:Z

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canDownload:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/clouddocs/UserPermissions;-><init>(ZZZZ)V

    return-object v0
.end method

.method public withCanComment(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canComment:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canComment:Z

    :goto_0
    return-object p0
.end method

.method public withCanDownload(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canDownload:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canDownload:Z

    :goto_0
    return-object p0
.end method

.method public withCanEdit(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canEdit:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canEdit:Z

    :goto_0
    return-object p0
.end method

.method public withCanRename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canRename:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;->canRename:Z

    :goto_0
    return-object p0
.end method
