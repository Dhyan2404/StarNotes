.class public Lcom/trans/android/util/PaintUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/trans/android/util/PaintUtils;->getShader(Ljava/awt/Paint;Ljava/backport/function/Function;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static getShader(Ljava/awt/Paint;Ljava/backport/function/Function;)Landroid/graphics/Shader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Paint;",
            "Ljava/backport/function/Function<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            ">;)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Ljava/awt/IAndroidGradient;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/awt/IAndroidGradient;

    invoke-interface {p0}, Ljava/awt/IAndroidGradient;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/trans/android/poi/POIUtils;->isPOIPaint(Ljava/awt/Paint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/trans/android/poi/POIUtils;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/trans/android/batik/BatikUtils;->isBatikPaint(Ljava/awt/Paint;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p0}, Lcom/trans/android/batik/BatikUtils;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    instance-of v0, p0, Ljava/awt/TexturePaint;

    if-eqz v0, :cond_3

    .line 9
    check-cast p0, Ljava/awt/TexturePaint;

    invoke-static {p0, p1}, Lcom/trans/android/awt/TexturePaintUtils;->getShader(Ljava/awt/TexturePaint;Ljava/backport/function/Function;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    const-class p1, Lcom/trans/android/util/PaintUtils;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unknown Paint: %s"

    invoke-static {p1, v0, p0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
