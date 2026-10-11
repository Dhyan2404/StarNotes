.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;
.super Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field public static final f:I = 0x4e


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;->e:I

    return-void
.end method


# virtual methods
.method public imageComplete(Ljavax/imageio/ImageReader;)V
    .locals 1

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;->e:I

    :goto_0
    const/16 p1, 0x4e

    if-ge p0, p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageReader;F)V
    .locals 2

    const/high16 p1, 0x429c0000    # 78.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    div-int/lit8 p1, p1, 0x64

    iget p2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;->e:I

    :goto_0
    if-ge p2, p1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    iput p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;->e:I

    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
