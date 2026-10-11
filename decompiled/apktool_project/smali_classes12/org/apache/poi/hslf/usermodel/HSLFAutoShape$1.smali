.class synthetic Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

.field static final synthetic $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->values()[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->EXTENSION:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ANGLE_ELLIPSE_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ANGLE_ELLIPSE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ARC_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ARC:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CLOCKWISE_ARC_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CLOCKWISE_ARC:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ELLIPTICAL_QUADRANT_X:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ELLIPTICAL_QUADRANT_Y:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->QUADRATIC_BEZIER:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->NO_FILL:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->NO_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->AUTO_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->AUTO_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CORNER_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CORNER_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SMOOTH_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x11

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SMOOTH_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x12

    aput v7, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SYMMETRIC_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x13

    aput v7, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SYMMETRIC_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x14

    aput v7, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->FREEFORM:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x15

    aput v7, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->FILL_COLOR:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x16

    aput v7, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->LINE_COLOR:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x17

    aput v7, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->values()[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I

    :try_start_17
    sget-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->escape:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I

    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->moveTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->lineTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->curveTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->close:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method
