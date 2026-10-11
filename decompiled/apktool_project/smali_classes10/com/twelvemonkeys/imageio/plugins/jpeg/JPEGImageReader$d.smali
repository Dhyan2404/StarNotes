.class public Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;
.super Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/event/IIOReadUpdateListener;
.implements Ljavax/imageio/event/IIOReadWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;-><init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V

    return-void
.end method


# virtual methods
.method public imageComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V

    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageReader;F)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->m(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;F)V

    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->n(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;I)V

    return-void
.end method

.method public imageUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->d(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public passComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->e(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public passStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->c(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public readAborted(Ljavax/imageio/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->o(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V

    return-void
.end method

.method public sequenceComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->p(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V

    return-void
.end method

.method public sequenceStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->q(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;I)V

    return-void
.end method

.method public thumbnailComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->r(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V

    return-void
.end method

.method public thumbnailPassComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public thumbnailPassStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public thumbnailProgress(Ljavax/imageio/ImageReader;F)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->s(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;F)V

    return-void
.end method

.method public thumbnailStarted(Ljavax/imageio/ImageReader;II)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->b(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;II)V

    return-void
.end method

.method public thumbnailUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->g(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public warningOccurred(Ljavax/imageio/ImageReader;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void
.end method
