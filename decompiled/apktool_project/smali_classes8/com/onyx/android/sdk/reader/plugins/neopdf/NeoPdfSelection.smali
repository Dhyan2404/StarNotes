.class public Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToSelectionList(Ljava/util/List;I[FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfCharInfo;",
            ">;I[FII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-object p1, Lcom/onyx/android/sdk/neopdf/PdfCharInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfCharInfo$Companion;

    invoke-virtual {p1, p2, p5}, Lcom/onyx/android/sdk/neopdf/PdfCharInfo$Companion;->createPdfCharInfo([FLjava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfCharInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
