.class public Lnet/sf/saxon/functions/FormatNumber$SubPicture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/FormatNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubPicture"
.end annotation


# instance fields
.field protected fractionalPartGroupingPositions:[I

.field protected is31:Z

.field protected isPerMille:Z

.field protected isPercent:Z

.field protected maxFractionPartSize:I

.field protected maxWholePartSize:I

.field protected minExponentSize:I

.field protected minFractionPartSize:I

.field protected minWholePartSize:I

.field protected prefix:Ljava/lang/String;

.field protected regular:Z

.field protected scalingFactor:I

.field protected suffix:Ljava/lang/String;

.field protected wholePartGroupingPositions:[I


# direct methods
.method public constructor <init>([ILnet/sf/saxon/trans/DecimalSymbols;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    iput v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    iput v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    iput v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    iput v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    iput v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->scalingFactor:I

    iput-boolean v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPercent:Z

    iput-boolean v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPerMille:Z

    const-string v3, ""

    iput-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->prefix:Ljava/lang/String;

    iput-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->suffix:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    iput-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->fractionalPartGroupingPositions:[I

    const/4 v4, 0x1

    iput-boolean v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->is31:Z

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getPercent()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getPerMille()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getDecimalSeparator()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getZeroDigit()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getExponentSeparator()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v13, v1

    move v15, v2

    :goto_0
    if-ge v15, v13, :cond_2

    aget v3, v1, v15

    if-eq v3, v9, :cond_1

    if-eq v3, v10, :cond_1

    invoke-static {v3, v10}, Lnet/sf/saxon/functions/FormatNumber;->b(II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-nez v3, :cond_3

    const-string v3, "subpicture contains no digit or zero-digit sign"

    invoke-static {v3}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_3
    array-length v3, v1

    move/from16 v16, v2

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_3
    const/16 v20, 0x2

    if-ge v2, v3, :cond_1b

    aget v4, v1, v2

    const-string v21, "goto case 6;"

    const/16 v22, 0x6

    if-eq v4, v5, :cond_14

    if-ne v4, v6, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v23, "There must only be one exponent separator in a sub-picture"

    const-string v24, "Passive character must not appear between active characters in a sub-picture"

    if-ne v4, v9, :cond_6

    packed-switch v16, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-eqz v17, :cond_5

    invoke-static/range {v23 .. v23}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    invoke-static/range {v24 .. v24}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1
    const-string v4, "Digit sign must not appear in the exponent part of a sub-picture"

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_2
    iget v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    const/16 v20, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    const/16 v16, 0x4

    goto/16 :goto_9

    :pswitch_3
    const/16 v20, 0x1

    const-string v4, "Digit sign must not appear after a zero-digit sign in the integer part of a sub-picture"

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_4
    const/16 v20, 0x1

    iget v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    const/16 v16, 0x1

    goto/16 :goto_9

    :cond_6
    if-eq v4, v10, :cond_12

    invoke-static {v4, v10}, Lnet/sf/saxon/functions/FormatNumber;->b(II)Z

    move-result v25

    if-eqz v25, :cond_7

    goto/16 :goto_5

    :cond_7
    if-ne v4, v7, :cond_9

    if-eqz v18, :cond_8

    const-string v4, "There must only be one decimal separator in a sub-picture"

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_8
    packed-switch v16, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_5
    const-string v1, "Decimal separator cannot come after a character in the suffix"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_6
    if-eqz v19, :cond_1a

    const-string v1, "Decimal separator must not appear in the exponent part of a sub-picture"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_7
    const/16 v16, 0x3

    const/16 v18, 0x1

    goto/16 :goto_9

    :cond_9
    if-ne v4, v8, :cond_f

    const-string v4, "Sub-picture cannot contain adjacent grouping separators"

    packed-switch v16, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_8
    const-string v1, "Grouping separator found in suffix of sub-picture"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_9
    if-eqz v19, :cond_1a

    const-string v1, "Grouping separator must not appear in the exponent part of a sub-picture"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_a
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    if-nez v1, :cond_a

    const-string v1, "Grouping separator cannot be adjacent to decimal separator"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_a
    if-nez v15, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    const/4 v15, 0x3

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v1

    :cond_b
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_c
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_b
    if-nez v13, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    const/4 v13, 0x3

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v1

    :cond_d
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_e
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_f
    if-ne v4, v11, :cond_10

    packed-switch v16, :pswitch_data_3

    goto/16 :goto_9

    :pswitch_c
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :pswitch_d
    if-eqz v19, :cond_1a

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move/from16 v16, v22

    const/16 v17, 0x1

    goto/16 :goto_9

    :pswitch_e
    const/16 v16, 0x5

    const/16 v19, 0x1

    goto/16 :goto_9

    :pswitch_f
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_10
    packed-switch v16, :pswitch_data_4

    goto/16 :goto_9

    :pswitch_10
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    if-nez v1, :cond_11

    if-eqz v19, :cond_11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_11
    invoke-static/range {v21 .. v21}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :pswitch_11
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_4
    move/from16 v16, v22

    goto/16 :goto_9

    :pswitch_12
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_12
    :goto_5
    packed-switch v16, :pswitch_data_5

    goto/16 :goto_9

    :pswitch_13
    if-eqz v17, :cond_13

    invoke-static/range {v23 .. v23}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    invoke-static/range {v24 .. v24}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_14
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    goto :goto_9

    :pswitch_15
    const/4 v4, 0x1

    const-string v1, "Zero digit sign must not appear after a digit sign in the fractional part of a sub-picture"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_16
    const/4 v4, 0x1

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    add-int/2addr v1, v4

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    add-int/2addr v1, v4

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    goto :goto_9

    :pswitch_17
    const/4 v4, 0x1

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    add-int/2addr v1, v4

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    add-int/2addr v1, v4

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    move/from16 v16, v20

    goto :goto_9

    :cond_14
    :goto_6
    iget-boolean v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPercent:Z

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPerMille:Z

    if-eqz v1, :cond_16

    :cond_15
    const-string v1, "Cannot have more than one percent or per-mille character in a sub-picture"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_16
    if-ne v4, v5, :cond_17

    const/4 v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPercent:Z

    if-ne v4, v6, :cond_18

    const/4 v1, 0x1

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPerMille:Z

    packed-switch v16, :pswitch_data_6

    goto :goto_9

    :pswitch_18
    if-eqz v19, :cond_19

    const-string v1, "Cannot have exponent-separator as well as percent or per-mille character in a sub-picture"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_19
    invoke-static/range {v21 .. v21}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :pswitch_19
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_1a
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :cond_1a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_1b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->prefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->suffix:Ljava/lang/String;

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->scalingFactor:I

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    if-nez v1, :cond_1c

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    if-nez v1, :cond_1c

    const-string v1, "Mantissa contains no digit or zero-digit sign"

    invoke-static {v1}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    :cond_1c
    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    if-nez v1, :cond_1e

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    if-nez v1, :cond_1e

    iget v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    goto :goto_a

    :cond_1d
    const/4 v1, 0x1

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    goto :goto_a

    :cond_1e
    const/4 v1, 0x1

    :goto_a
    iget v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    if-eqz v2, :cond_1f

    iget v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    if-nez v2, :cond_1f

    iget v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    if-eqz v2, :cond_1f

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    :cond_1f
    iget v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    if-nez v2, :cond_20

    iget v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    if-nez v2, :cond_20

    iput v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    :cond_20
    if-eqz v13, :cond_2a

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    iput-object v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_21

    iget-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    iget v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    sub-int v5, v1, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    const/4 v6, 0x1

    if-ne v1, v6, :cond_23

    iget-object v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    iget v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    if-lt v1, v3, :cond_22

    move v4, v6

    goto :goto_c

    :cond_22
    move v4, v2

    :goto_c
    iput-boolean v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    goto :goto_e

    :cond_23
    const/4 v2, 0x0

    if-le v1, v6, :cond_28

    iput-boolean v6, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    iget-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    :cond_24
    if-ge v4, v1, :cond_25

    iget-object v5, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    aget v5, v5, v4

    add-int/lit8 v4, v4, 0x1

    mul-int v6, v4, v3

    if-eq v5, v6, :cond_24

    iput-boolean v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    :cond_25
    iget-boolean v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    if-eqz v2, :cond_26

    iget v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxWholePartSize:I

    iget-object v4, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    aget v1, v4, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    if-le v2, v3, :cond_27

    iput-boolean v1, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    goto :goto_d

    :cond_26
    const/4 v1, 0x0

    const/4 v5, 0x1

    :cond_27
    :goto_d
    iget-boolean v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    if-eqz v2, :cond_29

    new-array v2, v5, [I

    iput-object v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    aput v3, v2, v1

    goto :goto_f

    :cond_28
    :goto_e
    move v1, v2

    :cond_29
    :goto_f
    iget-object v2, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    aget v2, v2, v1

    if-nez v2, :cond_2b

    const-string v2, "Cannot have a grouping separator at the end of the integer part"

    invoke-static {v2}, Lnet/sf/saxon/functions/FormatNumber;->c(Ljava/lang/String;)V

    goto :goto_10

    :cond_2a
    const/4 v1, 0x0

    :cond_2b
    :goto_10
    if-eqz v15, :cond_2c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    iput-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->fractionalPartGroupingPositions:[I

    :goto_11
    if-ge v1, v2, :cond_2c

    iget-object v3, v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->fractionalPartGroupingPositions:[I

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V
    .locals 7

    iget v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->scalingFactor:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    iget v2, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {p1, p2}, Lnet/sf/saxon/value/BigDecimalValue;->decimalToString(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x2e

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ltz p1, :cond_3

    iget v5, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    iget v6, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    sub-int/2addr v5, v6

    :goto_2
    if-lez v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iget v5, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    if-lez v5, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_3
    iget v5, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    if-ge v2, v5, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget v2, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    if-nez v2, :cond_5

    if-ne p1, v4, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    iget v2, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    if-le v2, p1, :cond_6

    sub-int/2addr v2, p1

    invoke-static {p2, v3, v2}, Lnet/sf/saxon/str/StringTool;->prependRepeated(Ljava/lang/StringBuilder;CI)V

    :cond_6
    :goto_5
    iget p1, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    if-eqz p1, :cond_9

    const/16 p1, 0x65

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v5, v0

    invoke-static {v5, v6}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    if-ge v0, p0, :cond_8

    sub-int/2addr p0, v0

    :goto_6
    if-ge v1, p0, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    return-void
.end method

.method public final b(Lnet/sf/saxon/value/NumericValue;Ljava/lang/StringBuilder;)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    const/16 v1, 0x30

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget p1, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minWholePartSize:I

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    invoke-static {p2, v1, p1}, Lnet/sf/saxon/str/StringTool;->prependRepeated(Ljava/lang/StringBuilder;CI)V

    :cond_1
    iget p1, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    if-eqz p1, :cond_2

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minFractionPartSize:I

    if-ge p1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public format(Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/trans/DecimalSymbols;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPercent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->isPerMille:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    :try_start_0
    new-instance v3, Lnet/sf/saxon/value/Int64Value;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    const/4 v0, 0x0

    invoke-static {p1, v2, v3, v0}, Lnet/sf/saxon/expr/ArithmeticExpression;->compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p1, v3, v4}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    :cond_3
    :goto_1
    instance-of v0, p1, Lnet/sf/saxon/value/DoubleValue;

    if-nez v0, :cond_4

    instance-of v3, p1, Lnet/sf/saxon/value/FloatValue;

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->prefix:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getInfinity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v0, :cond_9

    instance-of v0, p1, Lnet/sf/saxon/value/FloatValue;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    instance-of v0, p1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_8

    iget v0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->minExponentSize:I

    if-eqz v0, :cond_7

    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/IntegerValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->a(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->b(Lnet/sf/saxon/value/NumericValue;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_8
    instance-of v0, p1, Lnet/sf/saxon/value/BigDecimalValue;

    if-eqz v0, :cond_a

    check-cast p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->a(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lnet/sf/saxon/functions/FormatNumber;->adjustToDecimal(DI)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->a(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    :cond_a
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->expand(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getDecimalSeparator()I

    move-result v5

    aput v5, v0, v3

    iget v5, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->maxFractionPartSize:I

    if-nez v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    :cond_c
    :goto_4
    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getZeroDigit()I

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x0

    if-eq v5, v6, :cond_e

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getZeroDigit()I

    move-result v5

    move v8, v7

    :goto_5
    if-ge v8, v2, :cond_e

    aget v9, v0, v8

    if-lt v9, v6, :cond_d

    const/16 v10, 0x39

    if-gt v9, v10, :cond_d

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v9, v5

    aput v9, v0, v8

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getExponentSeparator()I

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v4, :cond_f

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getExponentSeparator()I

    move-result v4

    aput v4, v0, p1

    :cond_f
    iget-object p1, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->wholePartGroupingPositions:[I

    if-eqz p1, :cond_12

    iget-boolean v4, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->regular:Z

    if-eqz v4, :cond_10

    aget p1, p1, v7

    sub-int v4, v3, p1

    :goto_6
    if-lez v4, :cond_12

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v6

    invoke-static {v0, v2, v6, v4}, Lnet/sf/saxon/functions/FormatNumber;->d([IIII)[I

    move-result-object v0

    sub-int/2addr v4, p1

    move v2, v5

    goto :goto_6

    :cond_10
    array-length v4, p1

    move v5, v7

    :goto_7
    if-ge v5, v4, :cond_12

    aget v6, p1, v5

    sub-int v6, v3, v6

    if-lez v6, :cond_11

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v9

    invoke-static {v0, v2, v9, v6}, Lnet/sf/saxon/functions/FormatNumber;->d([IIII)[I

    move-result-object v0

    move v2, v8

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    iget-object p1, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->fractionalPartGroupingPositions:[I

    if-eqz p1, :cond_13

    move p1, v7

    :goto_8
    iget-object v4, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->fractionalPartGroupingPositions:[I

    array-length v5, v4

    if-ge p1, v5, :cond_13

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, p1

    add-int/2addr v5, v4

    add-int/2addr v5, p1

    if-ge v5, v2, :cond_13

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v6

    invoke-static {v0, v2, v6, v5}, Lnet/sf/saxon/functions/FormatNumber;->d([IIII)[I

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_8

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, v2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->prefix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    if-ge v7, v2, :cond_14

    aget p2, v0, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_14
    iget-object p0, p0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
