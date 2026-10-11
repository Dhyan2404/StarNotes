.class public Lcom/onyx/android/sdk/neopdf/PdfLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LINK_TYPE_GOTO:I = 0x1

.field public static final LINK_TYPE_NONE:I = 0x0

.field public static final LINK_TYPE_URI:I = 0x2


# instance fields
.field public linkPtr:J

.field public selection:Lcom/onyx/android/sdk/neopdf/PdfTextSelection;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/neopdf/PdfLink;->linkPtr:J

    return-void
.end method

.method public static addToLinkList(Ljava/util/List;IJ[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfLink;",
            ">;IJ[F)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfLink;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfLink;-><init>()V

    iput-wide p2, v0, Lcom/onyx/android/sdk/neopdf/PdfLink;->linkPtr:J

    new-instance p2, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfTextSelection;-><init>(III[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/onyx/android/sdk/neopdf/PdfLink;->selection:Lcom/onyx/android/sdk/neopdf/PdfTextSelection;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
