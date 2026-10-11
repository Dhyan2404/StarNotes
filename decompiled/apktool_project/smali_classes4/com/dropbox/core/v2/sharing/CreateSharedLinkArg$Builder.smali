.class public Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;

.field protected pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

.field protected shortUrl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'path\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    .locals 3

    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V

    return-object v0
.end method

.method public withPendingUpload(Lcom/dropbox/core/v2/sharing/PendingUploadMode;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    return-object p0
.end method

.method public withShortUrl(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;->shortUrl:Z

    :goto_0
    return-object p0
.end method
