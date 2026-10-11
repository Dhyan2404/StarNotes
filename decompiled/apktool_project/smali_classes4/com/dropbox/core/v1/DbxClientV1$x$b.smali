.class public Lcom/dropbox/core/v1/DbxClientV1$x$b;
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
        "Ljava/lang/Long;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/dropbox/core/v1/DbxClientV1$x;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$x;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->c:Lcom/dropbox/core/v1/DbxClientV1$x;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->b:I

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->c:Lcom/dropbox/core/v1/DbxClientV1$x;

    iget-object v1, v0, Lcom/dropbox/core/v1/DbxClientV1$x;->i:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->I(Lcom/dropbox/core/v1/DbxClientV1$x;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->c:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->w(Lcom/dropbox/core/v1/DbxClientV1$x;)[B

    move-result-object v5

    iget v6, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->b:I

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->c:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->j(Lcom/dropbox/core/v1/DbxClientV1$x;)I

    move-result v0

    iget p0, p0, Lcom/dropbox/core/v1/DbxClientV1$x$b;->b:I

    sub-int v7, v0, p0

    invoke-virtual/range {v1 .. v7}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadAppend(Ljava/lang/String;J[BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$x$b;->a()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
