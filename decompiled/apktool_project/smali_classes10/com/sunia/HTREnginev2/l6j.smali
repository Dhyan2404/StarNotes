.class public final Lcom/sunia/HTREnginev2/l6j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:I

.field public static d:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/sunia/HTREnginev2/k6j;->a:Z

    sput-boolean v0, Lcom/sunia/HTREnginev2/l6j;->a:Z

    invoke-static {}, Lcom/sunia/HTREnginev2/l6j;->d()Z

    move-result v0

    sput-boolean v0, Lcom/sunia/HTREnginev2/l6j;->b:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sunia/HTREnginev2/l6j;->d:[Ljava/lang/Class;

    :try_start_0
    const-string v1, "com.twelvemonkeys.image.ResampleOp"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    sget-boolean v0, Lcom/sunia/HTREnginev2/l6j;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/l6j;->b(Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/twelvemonkeys/image/ResampleOp;

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget v1, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    invoke-static {p1, v0, v1, p0}, Lcom/sunia/HTREnginev2/l6j;->c(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    if-eqz p2, :cond_2

    invoke-static {p2, p0}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sunia/HTREnginev2/l6j;->d:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/twelvemonkeys/image/MagickUtil;->toMagick(Ljava/awt/image/BufferedImage;)Lmagick/MagickImage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/sunia/HTREnginev2/l6j;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lmagick/MagickImage;->setFilter(I)V

    invoke-virtual {p0, p1, p2}, Lmagick/MagickImage;->zoomImage(II)Lmagick/MagickImage;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filtered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/twelvemonkeys/image/MagickUtil;->toBuffered(Lmagick/MagickImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lmagick/MagickImage;->destroyImages()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmagick/MagickImage;->destroyImages()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_2
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_3
    new-instance p2, Lcom/twelvemonkeys/image/ImageConversionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/twelvemonkeys/image/ImageConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lmagick/MagickImage;->destroyImages()V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lmagick/MagickImage;->destroyImages()V

    :cond_5
    throw p1
.end method

.method public static d()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "magick.MagickImage"

    invoke-static {v1}, Lcom/twelvemonkeys/lang/SystemUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    sget-boolean v2, Lcom/sunia/HTREnginev2/l6j;->a:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ImageMagick bindings not available."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "FALSE"

    const-string v3, "com.twelvemonkeys.image.accel"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz v1, :cond_2

    const-string v3, "Will use ImageMagick bindings to accelerate image resampling operations."

    goto :goto_1

    :cond_2
    const-string v3, "Will not use ImageMagick to accelerate image resampling operations."

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not enable ImageMagick bindings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
