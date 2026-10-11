.class public Lcom/trans/android/awt/TexturePaintUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static convert:Lcom/trans/android/awt/TexturePaintConvert;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/trans/android/batik/BatikUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trans/android/awt/TexturePaintUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConvert()Lcom/trans/android/awt/TexturePaintConvert;
    .locals 3

    sget-object v0, Lcom/trans/android/awt/TexturePaintUtils;->convert:Lcom/trans/android/awt/TexturePaintConvert;

    if-nez v0, :cond_0

    const-class v0, Lcom/trans/android/awt/TexturePaintConvert;

    invoke-static {v0}, Lcom/trans/android/service/ServiceUtils;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/awt/TexturePaintConvert;

    sput-object v0, Lcom/trans/android/awt/TexturePaintUtils;->convert:Lcom/trans/android/awt/TexturePaintConvert;

    if-nez v0, :cond_0

    new-instance v0, Lcom/trans/android/awt/EmptyTexturePaintConvert;

    invoke-direct {v0}, Lcom/trans/android/awt/EmptyTexturePaintConvert;-><init>()V

    sput-object v0, Lcom/trans/android/awt/TexturePaintUtils;->convert:Lcom/trans/android/awt/TexturePaintConvert;

    sget-object v0, Lcom/trans/android/awt/TexturePaintUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not found TexturePaintConvert"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/trans/android/awt/TexturePaintUtils;->convert:Lcom/trans/android/awt/TexturePaintConvert;

    return-object v0
.end method

.method public static getShader(Ljava/awt/TexturePaint;)Landroid/graphics/Shader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/trans/android/awt/TexturePaintUtils;->getShader(Ljava/awt/TexturePaint;Ljava/backport/function/Function;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static getShader(Ljava/awt/TexturePaint;Ljava/backport/function/Function;)Landroid/graphics/Shader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/TexturePaint;",
            "Ljava/backport/function/Function<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            ">;)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/awt/TexturePaint;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Ljava/backport/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v0
.end method
