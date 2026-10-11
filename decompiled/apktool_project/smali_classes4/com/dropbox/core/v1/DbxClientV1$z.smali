.class public final Lcom/dropbox/core/v1/DbxClientV1$z;
.super Lcom/dropbox/core/v1/DbxClientV1$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "z"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/dropbox/core/v1/DbxWriteMode;

.field public final c:J

.field public final d:Lcom/dropbox/core/v1/DbxClientV1$x;

.field public final synthetic e:Lcom/dropbox/core/v1/DbxClientV1;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$x;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->e:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->b:Lcom/dropbox/core/v1/DbxWriteMode;

    .line 5
    iput-wide p4, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->c:J

    .line 6
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$x;Lcom/dropbox/core/v1/DbxClientV1$k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v1/DbxClientV1$z;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$x;)V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v1/DbxClientV1$z;)Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->b:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v1/DbxClientV1$z;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public finish()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->f(Lcom/dropbox/core/v1/DbxClientV1$x;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->e:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->b:Lcom/dropbox/core/v1/DbxWriteMode;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->j(Lcom/dropbox/core/v1/DbxClientV1$x;)I

    move-result v0

    int-to-long v4, v0

    new-instance v6, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->w(Lcom/dropbox/core/v1/DbxClientV1$x;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->j(Lcom/dropbox/core/v1/DbxClientV1$x;)I

    move-result p0

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, p0}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->uploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$x;->f(Lcom/dropbox/core/v1/DbxClientV1$x;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1$x;->H(Lcom/dropbox/core/v1/DbxClientV1$x;)V

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->c:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {v3}, Lcom/dropbox/core/v1/DbxClientV1$x;->I(Lcom/dropbox/core/v1/DbxClientV1$x;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'numBytes\' is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " but you wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    invoke-static {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->I(Lcom/dropbox/core/v1/DbxClientV1$x;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v1, Lcom/dropbox/core/v1/DbxClientV1$z$a;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v1/DbxClientV1$z$a;-><init>(Lcom/dropbox/core/v1/DbxClientV1$z;Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p0, v1}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v1/DbxEntry$File;

    return-object p0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$z;->d:Lcom/dropbox/core/v1/DbxClientV1$x;

    return-object p0
.end method
