.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusPixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field private static final ALPHA:Lorg/apache/poi/util/BitField;

.field public static final enum ARGB1555_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum ARGB_32BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum ARGB_64BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field private static final BPP:Lorg/apache/poi/util/BitField;

.field private static final CANONICAL:Lorg/apache/poi/util/BitField;

.field private static final EXTCOLORS:Lorg/apache/poi/util/BitField;

.field private static final GDI:Lorg/apache/poi/util/BitField;

.field public static final enum GRAYSCALE_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field private static final INDEX:Lorg/apache/poi/util/BitField;

.field public static final enum INDEXED_1BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum INDEXED_4BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum INDEXED_8BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field private static final PALETTE:Lorg/apache/poi/util/BitField;

.field public static final enum PARGB_32BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum PARGB_64BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field private static final PREMULTI:Lorg/apache/poi/util/BitField;

.field public static final enum RGB555_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum RGB565_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum RGB_24BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum RGB_32BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum RGB_48BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field public static final enum UNDEFINED:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->UNDEFINED:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v2, 0x1

    const v3, 0x30101

    const-string v4, "INDEXED_1BPP"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->INDEXED_1BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v3, 0x2

    const v4, 0x30402

    const-string v5, "INDEXED_4BPP"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->INDEXED_4BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v4, 0x3

    const v5, 0x30803

    const-string v6, "INDEXED_8BPP"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->INDEXED_8BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v5, 0x4

    const v6, 0x101004

    const-string v7, "GRAYSCALE_16BPP"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->GRAYSCALE_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v6, 0x5

    const v7, 0x21005

    const-string v8, "RGB555_16BPP"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->RGB555_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v7, 0x6

    const v8, 0x21006

    const-string v9, "RGB565_16BPP"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->RGB565_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/4 v8, 0x7

    const v9, 0x61007

    const-string v10, "ARGB1555_16BPP"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->ARGB1555_16BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v9, 0x8

    const v10, 0x21808

    const-string v11, "RGB_24BPP"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->RGB_24BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v9, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v10, 0x9

    const v11, 0x22009

    const-string v12, "RGB_32BPP"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->RGB_32BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v10, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v11, 0xa

    const v12, 0x26200a

    const-string v13, "ARGB_32BPP"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->ARGB_32BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v11, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v12, 0xb

    const v13, 0xe200b

    const-string v14, "PARGB_32BPP"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->PARGB_32BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v12, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v13, 0xc

    const v14, 0x10300c

    const-string v15, "RGB_48BPP"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->RGB_48BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v13, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v14, 0xd

    const v15, 0x34400d

    move-object/from16 v16, v12

    const-string v12, "ARGB_64BPP"

    invoke-direct {v13, v12, v14, v15}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->ARGB_64BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    new-instance v14, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/16 v12, 0xe

    const v15, 0x1a400e

    move-object/from16 v17, v13

    const-string v13, "PARGB_64BPP"

    invoke-direct {v14, v13, v12, v15}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->PARGB_64BPP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    const/high16 v0, 0x200000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->CANONICAL:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x100000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->EXTCOLORS:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x80000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->PREMULTI:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x40000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->ALPHA:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x20000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->GDI:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x10000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->PALETTE:Lorg/apache/poi/util/BitField;

    const v0, 0xff00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->BPP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->INDEX:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    return-object v0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->BPP:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGDIEnumIndex()I
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->INDEX:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public isAlpha()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->ALPHA:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCanonical()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->CANONICAL:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtendedColors()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->EXTCOLORS:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGDISupported()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->GDI:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaletteIndexed()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->PALETTE:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreMultiplied()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->PREMULTI:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
