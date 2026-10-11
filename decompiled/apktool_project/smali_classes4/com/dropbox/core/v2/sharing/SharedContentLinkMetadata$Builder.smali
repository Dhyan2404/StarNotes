.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
.super Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->url:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'url\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 11

    .line 2
    new-instance v10, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceOptions:Ljava/util/List;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->linkPermissions:Ljava/util/List;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->passwordProtected:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->expiry:Ljava/util/Date;

    iget-object v9, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/AudienceExceptions;)V

    return-object v10
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    move-result-object p0

    return-object p0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withAudienceExceptions(Lcom/dropbox/core/v2/sharing/AudienceExceptions;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->audienceExceptions:Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    return-object p0
.end method

.method public withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;->withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Builder;

    move-result-object p0

    return-object p0
.end method
