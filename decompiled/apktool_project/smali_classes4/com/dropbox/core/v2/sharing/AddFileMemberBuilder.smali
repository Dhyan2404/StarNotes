.class public Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field public final b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

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
.method public start()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->build()Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->a:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    return-object p0
.end method

.method public withAddMessageAsComment(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withAddMessageAsComment(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    return-object p0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;->b:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    return-object p0
.end method
