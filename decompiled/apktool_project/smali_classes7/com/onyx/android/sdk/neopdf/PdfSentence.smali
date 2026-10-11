.class public Lcom/onyx/android/sdk/neopdf/PdfSentence;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endOfDocument:Z

.field public endOfScreen:Z

.field public nextPosition:I

.field public selection:Lcom/onyx/android/sdk/neopdf/PdfTextSelection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/onyx/android/sdk/neopdf/PdfTextSelection;IZZ)Lcom/onyx/android/sdk/neopdf/PdfSentence;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfSentence;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfSentence;-><init>()V

    iput-object p0, v0, Lcom/onyx/android/sdk/neopdf/PdfSentence;->selection:Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    iput p1, v0, Lcom/onyx/android/sdk/neopdf/PdfSentence;->nextPosition:I

    iput-boolean p2, v0, Lcom/onyx/android/sdk/neopdf/PdfSentence;->endOfScreen:Z

    iput-boolean p3, v0, Lcom/onyx/android/sdk/neopdf/PdfSentence;->endOfDocument:Z

    return-object v0
.end method
