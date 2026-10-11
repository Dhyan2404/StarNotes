.class public final Lcom/twelvemonkeys/imageio/color/ColorSpaces;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$f;,
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$d;,
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$b;,
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$e;,
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$a;,
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$g;,
        Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;
    }
.end annotation


# static fields
.field public static final CS_ADOBE_RGB_1998:I = 0x1388

.field public static final CS_GENERIC_CMYK:I = 0x1389

.field public static final a:Z

.field public static final b:Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;

.field public static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/awt/color/ICC_Profile;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/awt/color/ICC_Profile;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;",
            "Ljava/awt/color/ICC_ColorSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.twelvemonkeys.imageio.color.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer$Factory;->a()Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->b:Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/twelvemonkeys/util/LRUHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/awt/color/ICC_Profile;[B)Ljava/awt/color/ICC_ColorSpace;
    .locals 2

    new-instance v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;-><init>([B)V

    sget-object p1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->e:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/color/ICC_ColorSpace;

    if-nez v1, :cond_0

    new-instance v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v1, p0}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    const/4 p0, 0x3

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {v1, p0}, Ljava/awt/color/ICC_ColorSpace;->fromRGB([F)[F

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public static b(I[B)Ljava/awt/color/ICC_ColorSpace;
    .locals 2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$g;->a()[B

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x3e8

    invoke-static {p0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    check-cast p0, Ljava/awt/color/ICC_ColorSpace;

    return-object p0

    :cond_0
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$b;->a()[B

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x3eb

    invoke-static {p0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    check-cast p0, Ljava/awt/color/ICC_ColorSpace;

    return-object p0

    :cond_1
    const/16 v1, 0xd

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$e;->a()[B

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x3ea

    invoke-static {p0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    check-cast p0, Ljava/awt/color/ICC_ColorSpace;

    return-object p0

    :cond_2
    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$d;->a()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x3ec

    invoke-static {p0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    check-cast p0, Ljava/awt/color/ICC_ColorSpace;

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$a;->a()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x3e9

    invoke-static {p0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    check-cast p0, Ljava/awt/color/ICC_ColorSpace;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/awt/color/ICC_Profile;)Z
    .locals 1

    const-string v0, "profile"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Ljava/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p0

    const/16 v0, 0x40

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;
    .locals 3

    const-string v0, "profile"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Ljava/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v1

    invoke-static {v1, v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->b(I[B)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/16 v1, 0x40

    aget-byte v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v1

    invoke-static {v1, v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->b(I[B)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->b:Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;

    invoke-interface {v1, p0, v0}, Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;->a(Ljava/awt/color/ICC_Profile;[B)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->b:Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;->a(Ljava/awt/color/ICC_Profile;[B)V

    :goto_0
    invoke-static {p0, v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a(Ljava/awt/color/ICC_Profile;[B)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;
    .locals 4

    const-class v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading profile from classpath resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/awt/color/ICC_Profile;->getInstance(Ljava/io/InputStream;)Ljava/awt/color/ICC_Profile;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/twelvemonkeys/io/FileUtil;->close(Ljava/io/InputStream;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    sget-boolean v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {v0}, Lcom/twelvemonkeys/io/FileUtil;->close(Ljava/io/InputStream;)V

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lcom/twelvemonkeys/io/FileUtil;->close(Ljava/io/InputStream;)V

    throw p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;
    .locals 3

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading profile from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/awt/color/ICC_Profile;->getInstance(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorSpace(I)Ljava/awt/color/ColorSpace;
    .locals 2

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1389

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/color/ICC_Profile;

    if-nez v0, :cond_3

    const-string v0, "GENERIC_CMYK"

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->e(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Using fallback profile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->getInstance()Ljava/awt/color/ColorSpace;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->d:Ljava/lang/ref/WeakReference;

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const-class p0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;

    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/color/ICC_Profile;

    if-nez v0, :cond_7

    const-string v0, "ADOBE_RGB_1998"

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->e(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "/profiles/ClayRGB1998.icc"

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->d(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not read AdobeRGB1998 profile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->c:Ljava/lang/ref/WeakReference;

    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static isCS_sRGB(Ljava/awt/color/ICC_Profile;)Z
    .locals 2

    const-string v0, "profile"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Ljava/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p0

    invoke-static {}, Lcom/twelvemonkeys/imageio/color/ColorSpaces$g;->a()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static validateProfile(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_Profile;
    .locals 0

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    return-object p0
.end method
