.class public Ljavax/imageio/plugins/tiff/TIFFTag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_DATATYPE:I = 0xd

.field public static final MIN_DATATYPE:I = 0x1

.field public static final TIFF_ASCII:I = 0x2

.field public static final TIFF_BYTE:I = 0x1

.field public static final TIFF_DOUBLE:I = 0xc

.field public static final TIFF_FLOAT:I = 0xb

.field public static final TIFF_IFD_POINTER:I = 0xd

.field public static final TIFF_LONG:I = 0x4

.field public static final TIFF_RATIONAL:I = 0x5

.field public static final TIFF_SBYTE:I = 0x6

.field public static final TIFF_SHORT:I = 0x3

.field public static final TIFF_SLONG:I = 0x9

.field public static final TIFF_SRATIONAL:I = 0xa

.field public static final TIFF_SSHORT:I = 0x8

.field public static final TIFF_UNDEFINED:I = 0x7

.field public static final UNKNOWN_TAG_NAME:Ljava/lang/String; = "UnknownTag"

.field public static final g:I = -0x4000

.field public static final h:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljavax/imageio/plugins/tiff/TIFFTagSet;

.field public f:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/imageio/plugins/tiff/TIFFTag;->h:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x4
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->e:Ljavax/imageio/plugins/tiff/TIFFTagSet;

    .line 3
    iput-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    and-int/lit16 v0, p3, -0x4000

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->b:Ljava/lang/String;

    .line 5
    iput p2, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->a:I

    .line 6
    iput p3, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->c:I

    .line 7
    iput p4, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->d:I

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dataTypes out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "number ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjavax/imageio/plugins/tiff/TIFFTagSet;)V
    .locals 2

    const/16 v0, 0x2010

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    if-eqz p3, :cond_0

    .line 12
    iput-object p3, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->e:Ljavax/imageio/plugins/tiff/TIFFTagSet;

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tagSet == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSizeOfType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    sget-object v0, Ljavax/imageio/plugins/tiff/TIFFTag;->h:[I

    aget p0, v0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataType out of range!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addValueName(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    :cond_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->d:I

    return p0
.end method

.method public getDataTypes()I
    .locals 0

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->c:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getNamedValues()[I
    .locals 4

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public getNumber()I
    .locals 0

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->a:I

    return p0
.end method

.method public getTagSet()Ljavax/imageio/plugins/tiff/TIFFTagSet;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->e:Ljavax/imageio/plugins/tiff/TIFFTagSet;

    return-object p0
.end method

.method public getValueName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasValueNames()Z
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->f:Ljava/util/SortedMap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDataTypeOK(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0xd

    if-gt p1, v1, :cond_1

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->c:I

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "datatype not in range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isIFDPointer()Z
    .locals 1

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFTag;->e:Ljavax/imageio/plugins/tiff/TIFFTagSet;

    if-nez v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
