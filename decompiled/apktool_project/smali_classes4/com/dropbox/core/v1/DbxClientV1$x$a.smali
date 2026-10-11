.class public Lcom/dropbox/core/v1/DbxClientV1$x$a;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1$x;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<",
        "Ljava/lang/String;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/dropbox/core/v1/DbxClientV1$x;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$x;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$x$a;->a:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x$a;->a:Lcom/dropbox/core/v1/DbxClientV1$x;

    iget-object v1, v0, Lcom/dropbox/core/v1/DbxClientV1$x;->i:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->w(Lcom/dropbox/core/v1/DbxClientV1$x;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$x$a;->a:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->j(Lcom/dropbox/core/v1/DbxClientV1$x;)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadFirst([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$x$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
