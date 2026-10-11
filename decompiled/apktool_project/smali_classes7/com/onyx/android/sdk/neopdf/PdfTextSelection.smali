.class public Lcom/onyx/android/sdk/neopdf/PdfTextSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endIndex:I

.field public leftText:Ljava/lang/String;

.field public pageIndex:I

.field public rectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public rightText:Ljava/lang/String;

.field public startIndex:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    .line 5
    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->pageIndex:I

    return-void
.end method

.method public constructor <init>(III[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    .line 8
    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->pageIndex:I

    .line 9
    iput p2, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->startIndex:I

    .line 10
    iput p3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->endIndex:I

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 11
    :goto_0
    array-length p2, p4

    div-int/lit8 p2, p2, 0x4

    if-ge p1, p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    new-instance p3, Landroid/graphics/RectF;

    mul-int/lit8 v0, p1, 0x4

    aget v1, p4, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p4, v2

    add-int/lit8 v3, v0, 0x2

    aget v3, p4, v3

    add-int/lit8 v0, v0, 0x3

    aget v0, p4, v0

    invoke-direct {p3, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iput-object p5, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->text:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->leftText:Ljava/lang/String;

    .line 15
    iput-object p7, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rightText:Ljava/lang/String;

    return-void
.end method

.method public static addToSelectionList(Ljava/util/List;I[FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfTextSelection;",
            ">;I[FII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;-><init>(III[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addRectangle(FFFF)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->rectangles:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRange(II)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->startIndex:I

    iput p2, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->endIndex:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;->text:Ljava/lang/String;

    return-void
.end method
