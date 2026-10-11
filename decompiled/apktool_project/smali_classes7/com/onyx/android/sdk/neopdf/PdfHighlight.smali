.class public Lcom/onyx/android/sdk/neopdf/PdfHighlight;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[FIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[FIZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;-><init>()V

    iput-object p1, v0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->highlightId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setObjId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setAuthor(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setStartPosition(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setEndPosition(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setNote(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setQuadPoints([F)V

    invoke-virtual {v0, p8}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setStyle(I)V

    invoke-virtual {v0, p9}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setVertical(Z)V

    invoke-virtual {v0, p10}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setColor(I)V

    invoke-virtual {v0, p11}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setLinkType(I)V

    invoke-virtual {v0, p12}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setLinkDest(Ljava/lang/String;)V

    invoke-virtual {v0, p13}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setExtraAttr(Ljava/lang/String;)V

    invoke-virtual {v0, p14}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setCustomAttr(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
