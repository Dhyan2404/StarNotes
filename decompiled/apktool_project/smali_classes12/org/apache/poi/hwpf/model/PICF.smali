.class public Lorg/apache/poi/hwpf/model/PICF;
.super Lorg/apache/poi/hwpf/model/types/PICFAbstractType;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->fillFields([BI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/hwpf/model/PICF;

    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_10_padding2:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_10_padding2:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_11_dxaGoal:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_11_dxaGoal:S

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_12_dyaGoal:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_12_dyaGoal:S

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_13_mx:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_13_mx:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_14_my:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_14_my:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_15_dxaReserved1:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_15_dxaReserved1:S

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_16_dyaReserved1:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_16_dyaReserved1:S

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_17_dxaReserved2:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_17_dxaReserved2:S

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_18_dyaReserved2:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_18_dyaReserved2:S

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget-byte v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_19_fReserved:B

    iget-byte v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_19_fReserved:B

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_1_lcb:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_1_lcb:I

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget-byte v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_20_bpp:B

    iget-byte v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_20_bpp:B

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_21_brcTop80:[B

    iget-object v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_21_brcTop80:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_22_brcLeft80:[B

    iget-object v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_22_brcLeft80:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_23_brcBottom80:[B

    iget-object v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_23_brcBottom80:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    :cond_11
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_24_brcRight80:[B

    iget-object v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_24_brcRight80:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_25_dxaReserved3:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_25_dxaReserved3:S

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_26_dyaReserved3:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_26_dyaReserved3:S

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_27_cProps:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_27_cProps:S

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_2_cbHeader:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_2_cbHeader:I

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_3_mm:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_3_mm:S

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_4_xExt:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_4_xExt:S

    if-eq v2, v3, :cond_18

    return v1

    :cond_18
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_5_yExt:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_5_yExt:S

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_6_swHMF:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_6_swHMF:S

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_7_grf:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_7_grf:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget v2, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_8_padding:I

    iget v3, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_8_padding:I

    if-eq v2, v3, :cond_1c

    return v1

    :cond_1c
    iget p0, p0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_9_mmPM:I

    iget p1, p1, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_9_mmPM:I

    if-eq p0, p1, :cond_1d

    return v1

    :cond_1d
    return v0
.end method

.method public hashCode()I
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_1_lcb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_2_cbHeader:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_3_mm:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_4_xExt:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_5_yExt:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_6_swHMF:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_7_grf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_8_padding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_9_mmPM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_10_padding2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_11_dxaGoal:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_12_dyaGoal:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_13_mx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_14_my:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_15_dxaReserved1:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v16

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_16_dyaReserved1:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v17

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_17_dxaReserved2:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v18

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_18_dyaReserved2:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v19

    iget-byte v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_19_fReserved:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    iget-byte v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_20_bpp:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    iget-object v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_21_brcTop80:[B

    move-object/from16 v22, v1

    iget-object v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_22_brcLeft80:[B

    move-object/from16 v23, v1

    iget-object v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_23_brcBottom80:[B

    move-object/from16 v24, v1

    iget-object v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_24_brcRight80:[B

    move-object/from16 v25, v1

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_25_dxaReserved3:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v26

    iget-short v1, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_26_dyaReserved3:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v27

    iget-short v0, v0, Lorg/apache/poi/hwpf/model/types/PICFAbstractType;->field_27_cProps:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v28

    filled-new-array/range {v2 .. v28}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
