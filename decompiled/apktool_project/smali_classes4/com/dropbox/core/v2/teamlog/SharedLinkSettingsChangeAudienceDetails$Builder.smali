.class public Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected previousValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected final sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected sharedContentLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/LinkAudience;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->newValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->sharedContentLink:Ljava/lang/String;

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->previousValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'newValue\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'sharedContentAccessLevel\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->newValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->sharedContentLink:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->previousValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkAudience;)V

    return-object v0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/sharing/LinkAudience;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->previousValue:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object p0
.end method

.method public withSharedContentLink(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkSettingsChangeAudienceDetails$Builder;->sharedContentLink:Ljava/lang/String;

    return-object p0
.end method
