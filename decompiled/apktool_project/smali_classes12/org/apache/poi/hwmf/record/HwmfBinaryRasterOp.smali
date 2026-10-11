.class public final enum Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_BLACK:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_COPYPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_MASKNOTPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_MASKPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_MASKPENNOT:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_MERGENOTPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_MERGEPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_MERGEPENNOT:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_NOP:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_NOT:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_NOTCOPYPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_NOTMASKPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_NOTMERGEPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_NOTXORPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_WHITE:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field public static final enum R2_XORPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;


# instance fields
.field private final op:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "[I[I>;"
        }
    .end annotation
.end field

.field private final opIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v1, Lcom/sunia/HTREnginev2/o0i;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/o0i;-><init>()V

    const-string v2, "R2_BLACK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_BLACK:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v2, Lcom/sunia/HTREnginev2/b1i;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/b1i;-><init>()V

    const-string v3, "R2_NOTMERGEPEN"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTMERGEPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v3, Lcom/sunia/HTREnginev2/c1i;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/c1i;-><init>()V

    const-string v4, "R2_MASKNOTPEN"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MASKNOTPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v4, Lcom/sunia/HTREnginev2/d1i;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/d1i;-><init>()V

    const-string v5, "R2_NOTCOPYPEN"

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTCOPYPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v5, Lcom/sunia/HTREnginev2/p0i;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/p0i;-><init>()V

    const-string v6, "R2_MASKPENNOT"

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MASKPENNOT:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v6, Lcom/sunia/HTREnginev2/q0i;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/q0i;-><init>()V

    const-string v7, "R2_NOT"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOT:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v7, Lcom/sunia/HTREnginev2/r0i;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/r0i;-><init>()V

    const-string v8, "R2_XORPEN"

    const/4 v10, 0x7

    invoke-direct {v6, v8, v9, v10, v7}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_XORPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v8, Lcom/sunia/HTREnginev2/s0i;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/s0i;-><init>()V

    const-string v9, "R2_NOTMASKPEN"

    const/16 v11, 0x8

    invoke-direct {v7, v9, v10, v11, v8}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTMASKPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v8, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v9, Lcom/sunia/HTREnginev2/t0i;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/t0i;-><init>()V

    const-string v10, "R2_MASKPEN"

    const/16 v12, 0x9

    invoke-direct {v8, v10, v11, v12, v9}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v8, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MASKPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v9, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v10, Lcom/sunia/HTREnginev2/u0i;

    invoke-direct {v10}, Lcom/sunia/HTREnginev2/u0i;-><init>()V

    const-string v11, "R2_NOTXORPEN"

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13, v10}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v9, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTXORPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v10, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v11, Lcom/sunia/HTREnginev2/v0i;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/v0i;-><init>()V

    const-string v12, "R2_NOP"

    const/16 v14, 0xb

    invoke-direct {v10, v12, v13, v14, v11}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v10, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOP:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v11, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v12, Lcom/sunia/HTREnginev2/w0i;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/w0i;-><init>()V

    const-string v13, "R2_MERGENOTPEN"

    const/16 v15, 0xc

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v11, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MERGENOTPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v12, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v13, Lcom/sunia/HTREnginev2/x0i;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/x0i;-><init>()V

    const-string v14, "R2_COPYPEN"

    move-object/from16 v16, v11

    const/16 v11, 0xd

    invoke-direct {v12, v14, v15, v11, v13}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v12, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_COPYPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v13, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v14, Lcom/sunia/HTREnginev2/y0i;

    invoke-direct {v14}, Lcom/sunia/HTREnginev2/y0i;-><init>()V

    const-string v15, "R2_MERGEPENNOT"

    move-object/from16 v17, v12

    const/16 v12, 0xe

    invoke-direct {v13, v15, v11, v12, v14}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v13, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MERGEPENNOT:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v14, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v11, Lcom/sunia/HTREnginev2/z0i;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/z0i;-><init>()V

    const-string v15, "R2_MERGEPEN"

    move-object/from16 v18, v13

    const/16 v13, 0xf

    invoke-direct {v14, v15, v12, v13, v11}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v14, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MERGEPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v15, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    new-instance v11, Lcom/sunia/HTREnginev2/a1i;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/a1i;-><init>()V

    const-string v12, "R2_WHITE"

    move-object/from16 v19, v14

    const/16 v14, 0x10

    invoke-direct {v15, v12, v13, v14, v11}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;-><init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V

    sput-object v15, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_WHITE:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    filled-new-array/range {v0 .. v15}, [Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/BiConsumer<",
            "[I[I>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->opIndex:I

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->op:Ljava/util/function/BiConsumer;

    return-void
.end method

.method private static R2_BLACK([I[I)V
    .locals 0

    const/high16 p0, -0x1000000

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private static R2_COPYPEN([I[I)V
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static R2_MASKNOTPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    not-int v3, v3

    and-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_MASKPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    and-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_MASKPENNOT([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    not-int v1, v1

    and-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_MERGENOTPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    not-int v3, v3

    or-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_MERGEPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    or-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_MERGEPENNOT([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    not-int v1, v1

    and-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_NOP([I[I)V
    .locals 0

    return-void
.end method

.method private static R2_NOT([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    not-int v1, v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_NOTCOPYPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    aget v2, p0, v0

    not-int v2, v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_NOTMASKPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    and-int/2addr v1, v3

    not-int v1, v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_NOTMERGEPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    or-int/2addr v1, v3

    not-int v1, v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_NOTXORPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    xor-int/2addr v1, v3

    not-int v1, v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R2_WHITE([I[I)V
    .locals 0

    const/4 p0, -0x1

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private static R2_XORPEN([I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    aget v3, p0, v0

    xor-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MERGEPEN([I[I)V

    return-void
.end method

.method public static synthetic b([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MASKPEN([I[I)V

    return-void
.end method

.method public static synthetic c([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTCOPYPEN([I[I)V

    return-void
.end method

.method public static synthetic d([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MASKPENNOT([I[I)V

    return-void
.end method

.method public static synthetic e([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_COPYPEN([I[I)V

    return-void
.end method

.method public static synthetic f([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOP([I[I)V

    return-void
.end method

.method public static synthetic g([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MERGEPENNOT([I[I)V

    return-void
.end method

.method public static synthetic h([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOT([I[I)V

    return-void
.end method

.method public static synthetic i([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTMERGEPEN([I[I)V

    return-void
.end method

.method public static synthetic j([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_BLACK([I[I)V

    return-void
.end method

.method public static synthetic k([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTXORPEN([I[I)V

    return-void
.end method

.method public static synthetic l([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_NOTMASKPEN([I[I)V

    return-void
.end method

.method public static synthetic m([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MASKNOTPEN([I[I)V

    return-void
.end method

.method public static synthetic n([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_MERGENOTPEN([I[I)V

    return-void
.end method

.method public static synthetic o([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_XORPEN([I[I)V

    return-void
.end method

.method public static synthetic p([I[I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_WHITE([I[I)V

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->values()[Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->opIndex:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-object v0
.end method


# virtual methods
.method public getOpIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->opIndex:I

    return p0
.end method

.method public process([I[I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->op:Ljava/util/function/BiConsumer;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
