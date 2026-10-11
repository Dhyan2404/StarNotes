.class synthetic Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/draw/HwmfGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

.field static final synthetic $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

.field static final synthetic $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

.field static final synthetic $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment:[I

.field static final synthetic $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->values()[Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->SRCCOPY:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->SRCINVERT:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    sget-object v4, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->SRCAND:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    sget-object v5, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->D:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    sget-object v6, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->PATCOPY:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    sget-object v7, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->BLACKNESS:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->WHITENESS:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->values()[Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment:[I

    :try_start_7
    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->TOP:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BASELINE:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BOTTOM:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->values()[Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment:[I

    :try_start_a
    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->LEFT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->CENTER:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->RIGHT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfMapMode;->values()[Lorg/apache/poi/hwmf/record/HwmfMapMode;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    :try_start_d
    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_ANISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_ISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_LOMETRIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_HIMETRIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_LOENGLISH:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_HIENGLISH:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_TWIPS:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/16 v7, 0x8

    :try_start_14
    sget-object v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    sget-object v9, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_TEXT:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->values()[Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    :try_start_15
    sget-object v9, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_INDEXED:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v8, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN8X8:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERN8X8:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_MONOPATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_NULL:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERNPT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_HATCHED:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_LINEAR_GRADIENT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
