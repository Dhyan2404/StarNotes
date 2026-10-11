.class public Lcom/onyx/android/sdk/neopdf/PdfShape;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToList(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFI[FLjava/lang/String;Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZZZILjava/lang/String;[BIILjava/lang/String;[B[BILjava/lang/String;II[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            "IFI[F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FIZZZI",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/lang/String;",
            "[B[BI",
            "Ljava/lang/String;",
            "II[I)V"
        }
    .end annotation

    move-object/from16 v0, p15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/onyx/android/sdk/neopdf/PdfPoint;

    aget v5, v0, v2

    add-int/lit8 v4, v2, 0x1

    aget v6, v0, v4

    add-int/lit8 v4, v2, 0x2

    aget v7, v0, v4

    add-int/lit8 v4, v2, 0x3

    aget v8, v0, v4

    add-int/lit8 v4, v2, 0x4

    aget v4, v0, v4

    float-to-long v9, v4

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/onyx/android/sdk/neopdf/PdfPoint;-><init>(FFFFJ)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;-><init>()V

    move v2, p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setType(I)V

    move-object v2, p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    move-object v2, p3

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setObjId(Ljava/lang/String;)V

    move-object v2, p4

    invoke-virtual {v0, p4}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setGroupId(Ljava/lang/String;)V

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPageId(Ljava/lang/String;)V

    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLayerId(Ljava/lang/String;)V

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setAuthor(Ljava/lang/String;)V

    move-object/from16 v2, p8

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    move/from16 v2, p9

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setColor(I)V

    move/from16 v2, p10

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeWidth(F)V

    move/from16 v2, p11

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    move-object/from16 v2, p12

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    move-object/from16 v2, p13

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    move-object/from16 v2, p14

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setCustomAttr(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPoints(Ljava/util/List;)V

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setText(Ljava/lang/String;)V

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRichText(Ljava/lang/String;)V

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontName(Ljava/lang/String;)V

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontSize(F)V

    move/from16 v1, p20

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFontcolor(I)V

    move/from16 v1, p21

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setTextBold(Z)V

    move/from16 v1, p22

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setTextItalic(Z)V

    move/from16 v1, p23

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setTextUnderline(Z)V

    move/from16 v1, p24

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setTextAlign(I)V

    move-object/from16 v1, p25

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setResourceId(Ljava/lang/String;)V

    move-object/from16 v1, p26

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setResourceBuf([B)V

    move/from16 v1, p27

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setImageWidth(I)V

    move/from16 v1, p28

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setImageHeight(I)V

    move-object/from16 v1, p29

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFileAttachmentPath(Ljava/lang/String;)V

    move-object/from16 v1, p30

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFileAttachmentData([B)V

    move-object/from16 v1, p31

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setWavData([B)V

    move/from16 v1, p32

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkType(I)V

    move-object/from16 v1, p33

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLinkDest(Ljava/lang/String;)V

    move/from16 v1, p34

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLineArrowDirection(I)V

    move/from16 v1, p35

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeDashPhase(I)V

    move-object/from16 v1, p36

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setStrokeDashArray([I)V

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
