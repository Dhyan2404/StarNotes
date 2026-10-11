.class public Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field public final b:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->b:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->b:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->build()Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->m(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object p0

    return-object p0
.end method

.method public withLinkPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->b:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->withLinkPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;->b:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    return-object p0
.end method
