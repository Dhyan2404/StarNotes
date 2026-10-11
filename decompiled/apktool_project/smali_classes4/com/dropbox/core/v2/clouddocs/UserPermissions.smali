.class public Lcom/dropbox/core/v2/clouddocs/UserPermissions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/UserPermissions$a;,
        Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
    }
.end annotation


# instance fields
.field protected final canComment:Z

.field protected final canDownload:Z

.field protected final canEdit:Z

.field protected final canRename:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/dropbox/core/v2/clouddocs/UserPermissions;-><init>(ZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canEdit:Z

    .line 3
    iput-boolean p2, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canRename:Z

    .line 4
    iput-boolean p3, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canComment:Z

    .line 5
    iput-boolean p4, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canDownload:Z

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/UserPermissions$Builder;-><init>()V

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

    if-eqz v2, :cond_3

    check-cast p1, Lcom/dropbox/core/v2/clouddocs/UserPermissions;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canEdit:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canEdit:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canRename:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canRename:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canComment:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canComment:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canDownload:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canDownload:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public getCanComment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canComment:Z

    return p0
.end method

.method public getCanDownload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canDownload:Z

    return p0
.end method

.method public getCanEdit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canEdit:Z

    return p0
.end method

.method public getCanRename()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canRename:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canEdit:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canRename:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canComment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Lcom/dropbox/core/v2/clouddocs/UserPermissions;->canDownload:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$a;->b:Lcom/dropbox/core/v2/clouddocs/UserPermissions$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/UserPermissions$a;->b:Lcom/dropbox/core/v2/clouddocs/UserPermissions$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
