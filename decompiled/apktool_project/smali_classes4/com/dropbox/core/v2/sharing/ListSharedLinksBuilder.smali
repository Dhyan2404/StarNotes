.class public Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field public final b:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->b:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

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
.method public start()Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->b:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->build()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->z(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    move-result-object p0

    return-object p0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->b:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    return-object p0
.end method

.method public withDirectOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->b:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->withDirectOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;->b:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    return-object p0
.end method
