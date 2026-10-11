.class public Lcom/tencent/cos/xml/crypto/ReleasableInputStream;
.super Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/crypto/Releasable;


# instance fields
.field private closeDisabled:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private doRelease()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/tencent/cos/xml/crypto/Releasable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/tencent/cos/xml/crypto/Releasable;

    invoke-interface {v0}, Lcom/tencent/cos/xml/crypto/Releasable;->release()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->abortIfNeeded()V

    return-void
.end method

.method public static wrap(Ljava/io/InputStream;)Lcom/tencent/cos/xml/crypto/ReleasableInputStream;
    .locals 1

    instance-of v0, p0, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/tencent/cos/xml/crypto/ResettableInputStream;->newResettableInputStream(Ljava/io/FileInputStream;)Lcom/tencent/cos/xml/crypto/ResettableInputStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;->closeDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;->doRelease()V

    :cond_0
    return-void
.end method

.method public final disableClose()Lcom/tencent/cos/xml/crypto/ReleasableInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/cos/xml/crypto/ReleasableInputStream;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;->closeDisabled:Z

    return-object p0
.end method

.method public final isCloseDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;->closeDisabled:Z

    return p0
.end method

.method public final release()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ReleasableInputStream;->doRelease()V

    return-void
.end method
