.class public final enum Lorg/apache/poi/hwpf/usermodel/PictureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwpf/usermodel/PictureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum BMP:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum EMF:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum GIF:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum JPEG:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum PICT:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum PNG:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum TIFF:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum UNKNOWN:Lorg/apache/poi/hwpf/usermodel/PictureType;

.field public static final enum WMF:Lorg/apache/poi/hwpf/usermodel/PictureType;


# instance fields
.field private _extension:Ljava/lang/String;

.field private _mime:Ljava/lang/String;

.field private _signatures:[[B


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    new-instance v6, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v1, "BMP"

    const/4 v2, 0x0

    const-string v3, "image/bmp"

    const-string v4, "bmp"

    const/4 v7, 0x1

    new-array v5, v7, [[B

    const/4 v8, 0x2

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const/4 v9, 0x0

    aput-object v0, v5, v9

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v6, Lorg/apache/poi/hwpf/usermodel/PictureType;->BMP:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v1, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v11, "EMF"

    const/4 v12, 0x1

    const-string v13, "image/x-emf"

    const-string v14, "emf"

    new-array v15, v7, [[B

    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    aput-object v2, v15, v9

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v1, Lorg/apache/poi/hwpf/usermodel/PictureType;->EMF:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v2, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v17, "GIF"

    const/16 v18, 0x2

    const-string v19, "image/gif"

    const-string v20, "gif"

    new-array v3, v7, [[B

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    aput-object v4, v3, v9

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v2, Lorg/apache/poi/hwpf/usermodel/PictureType;->GIF:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v11, "JPEG"

    const/4 v12, 0x3

    const-string v13, "image/jpeg"

    const-string v14, "jpg"

    new-array v15, v7, [[B

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    aput-object v4, v15, v9

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v3, Lorg/apache/poi/hwpf/usermodel/PictureType;->JPEG:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v4, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v17, "PICT"

    const/16 v18, 0x4

    const-string v19, "image/x-pict"

    const-string v20, ".pict"

    new-array v5, v9, [[B

    move-object/from16 v16, v4

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v4, Lorg/apache/poi/hwpf/usermodel/PictureType;->PICT:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v5, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v11, "PNG"

    const/4 v12, 0x5

    const-string v13, "image/png"

    const-string v14, "png"

    new-array v15, v7, [[B

    const/16 v10, 0x8

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    aput-object v10, v15, v9

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v5, Lorg/apache/poi/hwpf/usermodel/PictureType;->PNG:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v10, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v17, "TIFF"

    const/16 v18, 0x6

    const-string v19, "image/tiff"

    const-string v20, "tiff"

    new-array v11, v8, [[B

    new-array v12, v0, [B

    fill-array-data v12, :array_5

    aput-object v12, v11, v9

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    aput-object v0, v11, v7

    move-object/from16 v16, v10

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v10, Lorg/apache/poi/hwpf/usermodel/PictureType;->TIFF:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v11, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v22, "UNKNOWN"

    const/16 v23, 0x7

    const-string v24, "image/unknown"

    const-string v25, ""

    new-array v0, v9, [[B

    move-object/from16 v21, v11

    move-object/from16 v26, v0

    invoke-direct/range {v21 .. v26}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v11, Lorg/apache/poi/hwpf/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/hwpf/usermodel/PictureType;

    new-instance v18, Lorg/apache/poi/hwpf/usermodel/PictureType;

    const-string v13, "WMF"

    const/16 v14, 0x8

    const-string v15, "image/x-wmf"

    const-string v16, "wmf"

    new-array v0, v8, [[B

    const/4 v8, 0x6

    new-array v12, v8, [B

    fill-array-data v12, :array_7

    aput-object v12, v0, v9

    new-array v8, v8, [B

    fill-array-data v8, :array_8

    aput-object v8, v0, v7

    move-object/from16 v12, v18

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/hwpf/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V

    sput-object v18, Lorg/apache/poi/hwpf/usermodel/PictureType;->WMF:Lorg/apache/poi/hwpf/usermodel/PictureType;

    move-object v0, v6

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v8, v18

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/hwpf/usermodel/PictureType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/PictureType;->$VALUES:[Lorg/apache/poi/hwpf/usermodel/PictureType;

    return-void

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_5
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
    .end array-data

    :array_7
    .array-data 1
        -0x29t
        -0x33t
        -0x3at
        -0x66t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x9t
        0x0t
        0x0t
        0x3t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->_mime:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->_extension:Ljava/lang/String;

    invoke-virtual {p5}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->_signatures:[[B

    return-void
.end method

.method public static findMatchingType([B)Lorg/apache/poi/hwpf/usermodel/PictureType;
    .locals 9

    invoke-static {}, Lorg/apache/poi/hwpf/usermodel/PictureType;->values()[Lorg/apache/poi/hwpf/usermodel/PictureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/PictureType;->getSignatures()[[B

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-static {p0, v8}, Lorg/apache/poi/hwpf/usermodel/PictureType;->matchSignature([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/hwpf/usermodel/PictureType;

    return-object p0
.end method

.method private static matchSignature([B[B)Z
    .locals 4

    .line 1
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 3
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwpf/usermodel/PictureType;
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/usermodel/PictureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/usermodel/PictureType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwpf/usermodel/PictureType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/PictureType;->$VALUES:[Lorg/apache/poi/hwpf/usermodel/PictureType;

    invoke-virtual {v0}, [Lorg/apache/poi/hwpf/usermodel/PictureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwpf/usermodel/PictureType;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->_extension:Ljava/lang/String;

    return-object p0
.end method

.method public getMime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->_mime:Ljava/lang/String;

    return-object p0
.end method

.method public getSignatures()[[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureType;->_signatures:[[B

    return-object p0
.end method

.method public matchSignature([B)Z
    .locals 4

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/PictureType;->getSignatures()[[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 5
    invoke-static {v3, p1}, Lorg/apache/poi/hwpf/usermodel/PictureType;->matchSignature([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
