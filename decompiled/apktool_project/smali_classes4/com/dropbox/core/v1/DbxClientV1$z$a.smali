.class public Lcom/dropbox/core/v1/DbxClientV1$z$a;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1$z;->finish()Lcom/dropbox/core/v1/DbxEntry$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<",
        "Lcom/dropbox/core/v1/DbxEntry$File;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/dropbox/core/v1/DbxClientV1$z;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$z;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$z$a;->b:Lcom/dropbox/core/v1/DbxClientV1$z;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$z$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$z$a;->b:Lcom/dropbox/core/v1/DbxClientV1$z;

    iget-object v1, v0, Lcom/dropbox/core/v1/DbxClientV1$z;->e:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$z;->b(Lcom/dropbox/core/v1/DbxClientV1$z;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$z$a;->b:Lcom/dropbox/core/v1/DbxClientV1$z;

    invoke-static {v2}, Lcom/dropbox/core/v1/DbxClientV1$z;->a(Lcom/dropbox/core/v1/DbxClientV1$z;)Lcom/dropbox/core/v1/DbxWriteMode;

    move-result-object v2

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$z$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p0}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadFinish(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry$File;

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

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$z$a;->a()Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object p0

    return-object p0
.end method
