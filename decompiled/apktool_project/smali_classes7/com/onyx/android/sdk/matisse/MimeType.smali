.class public final enum Lcom/onyx/android/sdk/matisse/MimeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/matisse/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum AVI:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum BMP:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum GIF:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum JPEG:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum MKV:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum MP4:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum MPEG:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum PNG:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum QUICKTIME:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum THREEGPP:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum THREEGPP2:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum TS:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum WEBM:Lcom/onyx/android/sdk/matisse/MimeType;

.field public static final enum WEBP:Lcom/onyx/android/sdk/matisse/MimeType;


# instance fields
.field private final mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeTypeName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/onyx/android/sdk/matisse/MimeType;
    .locals 14

    sget-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->JPEG:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v1, Lcom/onyx/android/sdk/matisse/MimeType;->PNG:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v2, Lcom/onyx/android/sdk/matisse/MimeType;->GIF:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v3, Lcom/onyx/android/sdk/matisse/MimeType;->BMP:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v4, Lcom/onyx/android/sdk/matisse/MimeType;->WEBP:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v5, Lcom/onyx/android/sdk/matisse/MimeType;->MPEG:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v6, Lcom/onyx/android/sdk/matisse/MimeType;->MP4:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v7, Lcom/onyx/android/sdk/matisse/MimeType;->QUICKTIME:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v8, Lcom/onyx/android/sdk/matisse/MimeType;->THREEGPP:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v9, Lcom/onyx/android/sdk/matisse/MimeType;->THREEGPP2:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v10, Lcom/onyx/android/sdk/matisse/MimeType;->MKV:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v11, Lcom/onyx/android/sdk/matisse/MimeType;->WEBM:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v12, Lcom/onyx/android/sdk/matisse/MimeType;->TS:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v13, Lcom/onyx/android/sdk/matisse/MimeType;->AVI:Lcom/onyx/android/sdk/matisse/MimeType;

    filled-new-array/range {v0 .. v13}, [Lcom/onyx/android/sdk/matisse/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "jpg"

    const-string v2, "jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "JPEG"

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->JPEG:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "png"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "PNG"

    const/4 v3, 0x1

    const-string v4, "image/png"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->PNG:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "gif"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "GIF"

    const/4 v3, 0x2

    const-string v4, "image/gif"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->GIF:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "bmp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "BMP"

    const/4 v3, 0x3

    const-string v4, "image/x-ms-bmp"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->BMP:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "webp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "WEBP"

    const/4 v3, 0x4

    const-string v4, "image/webp"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->WEBP:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "mpeg"

    const-string v2, "mpg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "MPEG"

    const/4 v3, 0x5

    const-string v4, "video/mpeg"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->MPEG:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "mp4"

    const-string v2, "m4v"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "MP4"

    const/4 v3, 0x6

    const-string v4, "video/mp4"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->MP4:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "mov"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "QUICKTIME"

    const/4 v3, 0x7

    const-string v4, "video/quicktime"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->QUICKTIME:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "3gp"

    const-string v2, "3gpp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "THREEGPP"

    const/16 v3, 0x8

    const-string v4, "video/3gpp"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->THREEGPP:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "3g2"

    const-string v2, "3gpp2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "THREEGPP2"

    const/16 v3, 0x9

    const-string v4, "video/3gpp2"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->THREEGPP2:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "mkv"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "MKV"

    const/16 v3, 0xa

    const-string v4, "video/x-matroska"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->MKV:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "webm"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "WEBM"

    const/16 v3, 0xb

    const-string v4, "video/webm"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->WEBM:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "ts"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TS"

    const/16 v3, 0xc

    const-string v4, "video/mp2ts"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->TS:Lcom/onyx/android/sdk/matisse/MimeType;

    new-instance v0, Lcom/onyx/android/sdk/matisse/MimeType;

    const-string v1, "avi"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "AVI"

    const/16 v3, 0xd

    const-string v4, "video/avi"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/onyx/android/sdk/matisse/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->AVI:Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-static {}, Lcom/onyx/android/sdk/matisse/MimeType;->$values()[Lcom/onyx/android/sdk/matisse/MimeType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->$VALUES:[Lcom/onyx/android/sdk/matisse/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/matisse/MimeType;->mMimeTypeName:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/android/sdk/matisse/MimeType;->mExtensions:Ljava/util/Set;

    return-void
.end method

.method private static varargs arraySetOf([Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->GIF:Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs of(Lcom/onyx/android/sdk/matisse/MimeType;[Lcom/onyx/android/sdk/matisse/MimeType;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            "[",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static ofAll()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static ofGif()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/MimeType;->ofImage(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static ofImage()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->JPEG:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v1, Lcom/onyx/android/sdk/matisse/MimeType;->PNG:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v2, Lcom/onyx/android/sdk/matisse/MimeType;->BMP:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v3, Lcom/onyx/android/sdk/matisse/MimeType;->WEBP:Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static ofImage(Z)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/matisse/MimeType;->GIF:Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static ofVideo()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->MPEG:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v1, Lcom/onyx/android/sdk/matisse/MimeType;->MP4:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v2, Lcom/onyx/android/sdk/matisse/MimeType;->QUICKTIME:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v3, Lcom/onyx/android/sdk/matisse/MimeType;->THREEGPP:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v4, Lcom/onyx/android/sdk/matisse/MimeType;->THREEGPP2:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v5, Lcom/onyx/android/sdk/matisse/MimeType;->MKV:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v6, Lcom/onyx/android/sdk/matisse/MimeType;->WEBM:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v7, Lcom/onyx/android/sdk/matisse/MimeType;->TS:Lcom/onyx/android/sdk/matisse/MimeType;

    sget-object v8, Lcom/onyx/android/sdk/matisse/MimeType;->AVI:Lcom/onyx/android/sdk/matisse/MimeType;

    filled-new-array/range {v1 .. v8}, [Lcom/onyx/android/sdk/matisse/MimeType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/matisse/MimeType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/matisse/MimeType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/matisse/MimeType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/matisse/MimeType;->$VALUES:[Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-virtual {v0}, [Lcom/onyx/android/sdk/matisse/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/matisse/MimeType;

    return-object v0
.end method


# virtual methods
.method public checkType(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 7

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/MimeType;->mExtensions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    return v6

    :cond_2
    if-nez v3, :cond_4

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->getPath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move v3, v6

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v6

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/MimeType;->mMimeTypeName:Ljava/lang/String;

    return-object p0
.end method
