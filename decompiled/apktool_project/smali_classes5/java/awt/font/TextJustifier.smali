.class Ljava/awt/font/TextJustifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static DEBUG:Z = false

.field public static final MAX_PRIORITY:I = 0x3


# instance fields
.field private info:[Ljava/awt/font/GlyphJustificationInfo;

.field private limit:I

.field private start:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Ljava/awt/font/GlyphJustificationInfo;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/font/TextJustifier;->info:[Ljava/awt/font/GlyphJustificationInfo;

    iput p2, p0, Ljava/awt/font/TextJustifier;->start:I

    iput p3, p0, Ljava/awt/font/TextJustifier;->limit:I

    sget-boolean p0, Ljava/awt/font/TextJustifier;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_0

    aget-object p0, p1, p2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", gp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/font/GlyphJustificationInfo;->growPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/font/GlyphJustificationInfo;->growLeftLimit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", grl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/font/GlyphJustificationInfo;->growRightLimit:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public justify(F)[F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Ljava/awt/font/TextJustifier;->info:[Ljava/awt/font/GlyphJustificationInfo;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sget-boolean v8, Ljava/awt/font/TextJustifier;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delta: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v8, -0x1

    move v10, v8

    const/4 v9, 0x0

    :goto_1
    cmpl-float v11, v1, v4

    if-eqz v11, :cond_20

    const/4 v11, 0x3

    if-le v9, v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    move v9, v10

    :cond_3
    iget v12, v0, Ljava/awt/font/TextJustifier;->start:I

    move v13, v4

    move v14, v13

    move v15, v14

    :goto_3
    iget v6, v0, Ljava/awt/font/TextJustifier;->limit:I

    if-ge v12, v6, :cond_a

    iget-object v7, v0, Ljava/awt/font/TextJustifier;->info:[Ljava/awt/font/GlyphJustificationInfo;

    aget-object v7, v7, v12

    if-eqz v5, :cond_4

    iget v4, v7, Ljava/awt/font/GlyphJustificationInfo;->growPriority:I

    goto :goto_4

    :cond_4
    iget v4, v7, Ljava/awt/font/GlyphJustificationInfo;->shrinkPriority:I

    :goto_4
    if-ne v4, v9, :cond_9

    if-ne v10, v8, :cond_5

    move v10, v9

    :cond_5
    iget v4, v0, Ljava/awt/font/TextJustifier;->start:I

    if-eq v12, v4, :cond_7

    iget v4, v7, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    add-float/2addr v14, v4

    if-eqz v5, :cond_6

    iget v8, v7, Ljava/awt/font/GlyphJustificationInfo;->growLeftLimit:F

    add-float/2addr v13, v8

    iget-boolean v8, v7, Ljava/awt/font/GlyphJustificationInfo;->growAbsorb:Z

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_6
    iget v8, v7, Ljava/awt/font/GlyphJustificationInfo;->shrinkLeftLimit:F

    add-float/2addr v13, v8

    iget-boolean v8, v7, Ljava/awt/font/GlyphJustificationInfo;->shrinkAbsorb:Z

    if-eqz v8, :cond_7

    :goto_5
    add-float/2addr v15, v4

    :cond_7
    add-int/lit8 v4, v12, 0x1

    if-eq v4, v6, :cond_9

    iget v4, v7, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    add-float/2addr v14, v4

    if-eqz v5, :cond_8

    iget v6, v7, Ljava/awt/font/GlyphJustificationInfo;->growRightLimit:F

    add-float/2addr v13, v6

    iget-boolean v6, v7, Ljava/awt/font/GlyphJustificationInfo;->growAbsorb:Z

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_8
    iget v6, v7, Ljava/awt/font/GlyphJustificationInfo;->shrinkRightLimit:F

    add-float/2addr v13, v6

    iget-boolean v6, v7, Ljava/awt/font/GlyphJustificationInfo;->shrinkAbsorb:Z

    if-eqz v6, :cond_9

    :goto_6
    add-float/2addr v15, v4

    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v8, -0x1

    goto :goto_3

    :cond_a
    if-nez v5, :cond_b

    neg-float v13, v13

    :cond_b
    const/4 v4, 0x0

    cmpl-float v6, v14, v4

    if-eqz v6, :cond_f

    if-nez v11, :cond_e

    cmpg-float v6, v1, v4

    if-gez v6, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    cmpg-float v6, v1, v13

    if-gez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    if-ne v4, v6, :cond_e

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v4, 0x1

    :goto_a
    const/4 v6, 0x0

    if-eqz v4, :cond_10

    cmpl-float v7, v15, v6

    if-lez v7, :cond_10

    const/4 v7, 0x1

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    :goto_b
    div-float v8, v1, v14

    if-eqz v4, :cond_11

    cmpl-float v12, v15, v6

    if-lez v12, :cond_11

    sub-float v12, v1, v13

    div-float/2addr v12, v15

    goto :goto_c

    :cond_11
    move v12, v6

    :goto_c
    sget-boolean v16, Ljava/awt/font/TextJustifier;->DEBUG:Z

    if-eqz v16, :cond_13

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 p1, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    const-string v2, "pass: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", d: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", l: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", w: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", aw: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", wd: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", wa: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", hit: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_12

    const-string v2, "y"

    goto :goto_d

    :cond_12
    const-string v2, "n"

    :goto_d
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_13
    move/from16 v17, v2

    move/from16 p1, v10

    :goto_e
    iget v2, v0, Ljava/awt/font/TextJustifier;->start:I

    mul-int/lit8 v6, v2, 0x2

    :goto_f
    iget v10, v0, Ljava/awt/font/TextJustifier;->limit:I

    if-ge v2, v10, :cond_1e

    iget-object v14, v0, Ljava/awt/font/TextJustifier;->info:[Ljava/awt/font/GlyphJustificationInfo;

    aget-object v14, v14, v2

    if-eqz v5, :cond_14

    iget v15, v14, Ljava/awt/font/GlyphJustificationInfo;->growPriority:I

    goto :goto_10

    :cond_14
    iget v15, v14, Ljava/awt/font/GlyphJustificationInfo;->shrinkPriority:I

    :goto_10
    if-ne v15, v9, :cond_1d

    iget v15, v0, Ljava/awt/font/TextJustifier;->start:I

    if-eq v2, v15, :cond_18

    if-eqz v4, :cond_16

    if-eqz v5, :cond_15

    iget v15, v14, Ljava/awt/font/GlyphJustificationInfo;->growLeftLimit:F

    goto :goto_11

    :cond_15
    iget v15, v14, Ljava/awt/font/GlyphJustificationInfo;->shrinkLeftLimit:F

    neg-float v15, v15

    :goto_11
    if-eqz v7, :cond_17

    iget v0, v14, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    mul-float/2addr v0, v12

    add-float/2addr v15, v0

    goto :goto_12

    :cond_16
    iget v0, v14, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    mul-float v15, v0, v8

    :cond_17
    :goto_12
    aget v0, v3, v6

    add-float/2addr v0, v15

    aput v0, v3, v6

    :cond_18
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v2, 0x1

    if-eq v0, v10, :cond_1c

    if-eqz v4, :cond_1a

    if-eqz v5, :cond_19

    iget v0, v14, Ljava/awt/font/GlyphJustificationInfo;->growRightLimit:F

    goto :goto_13

    :cond_19
    iget v0, v14, Ljava/awt/font/GlyphJustificationInfo;->shrinkRightLimit:F

    neg-float v0, v0

    :goto_13
    if-eqz v7, :cond_1b

    iget v10, v14, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    mul-float/2addr v10, v12

    add-float/2addr v0, v10

    goto :goto_14

    :cond_1a
    iget v0, v14, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    mul-float/2addr v0, v8

    :cond_1b
    :goto_14
    aget v10, v3, v6

    add-float/2addr v10, v0

    aput v10, v3, v6

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1d
    add-int/lit8 v6, v6, 0x2

    :goto_15
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_f

    :cond_1e
    if-nez v11, :cond_1f

    if-eqz v4, :cond_1f

    if-nez v7, :cond_1f

    sub-float/2addr v1, v13

    goto :goto_16

    :cond_1f
    const/4 v1, 0x0

    :goto_16
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v2, v17

    const/4 v4, 0x0

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_20
    move/from16 v17, v2

    sget-boolean v0, Ljava/awt/font/TextJustifier;->DEBUG:Z

    if-eqz v0, :cond_23

    move/from16 v2, v17

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v2, :cond_22

    aget v0, v3, v6

    add-float/2addr v4, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v3, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    rem-int/lit8 v0, v6, 0x14

    const/16 v1, 0x9

    if-ne v0, v1, :cond_21

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ntotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :cond_23
    return-object v3
.end method
