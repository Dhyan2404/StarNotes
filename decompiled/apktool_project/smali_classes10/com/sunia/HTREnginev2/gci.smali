.class public Lcom/sunia/HTREnginev2/gci;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public e:Ljavax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gci;->e:Ljavax/imageio/stream/ImageOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gci;->e:Ljavax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gci;->e:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream already closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gci;->f()V

    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gci;->f()V

    .line 6
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gci;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gci;->f()V

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gci;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gci;->f()V

    .line 4
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gci;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1, p2, p3}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    return-void
.end method
