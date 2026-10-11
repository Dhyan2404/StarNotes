.class public Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;
.super Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/event/IIOWriteWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;-><init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method


# virtual methods
.method public imageComplete(Ljavax/imageio/ImageWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->b(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageWriter;F)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->c(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;F)V

    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageWriter;I)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->d(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;I)V

    return-void
.end method

.method public thumbnailComplete(Ljavax/imageio/ImageWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method

.method public thumbnailProgress(Ljavax/imageio/ImageWriter;F)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->f(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;F)V

    return-void
.end method

.method public thumbnailStarted(Ljavax/imageio/ImageWriter;II)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->g(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;II)V

    return-void
.end method

.method public warningOccurred(Ljavax/imageio/ImageWriter;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->i(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;ILjava/lang/String;)V

    return-void
.end method

.method public writeAborted(Ljavax/imageio/ImageWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->h(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method
