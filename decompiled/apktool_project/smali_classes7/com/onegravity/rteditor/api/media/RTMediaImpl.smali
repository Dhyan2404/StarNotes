.class public abstract Lcom/onegravity/rteditor/api/media/RTMediaImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/api/media/RTMedia;


# static fields
.field private static final serialVersionUID:J = 0x46c2b8b126150a14L


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private getDimension(Ljava/lang/String;Z)I
    .locals 2

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return p0
.end method


# virtual methods
.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getHeight(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHeight(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "ImageLength"

    .line 3
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getDimension(Ljava/lang/String;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getWidth(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "ImageWidth"

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getDimension(Ljava/lang/String;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->removeFile(Ljava/lang/String;)V

    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->mFilePath:Ljava/lang/String;

    return-void
.end method
