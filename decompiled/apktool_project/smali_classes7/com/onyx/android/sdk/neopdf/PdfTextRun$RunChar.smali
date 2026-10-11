.class public final Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfTextRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunChar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u001f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008B\'\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;",
        "Ljava/io/Serializable;",
        "()V",
        "ch",
        "",
        "left",
        "",
        "baseline",
        "(CFF)V",
        "rotation",
        "",
        "(CFFI)V",
        "getBaseline",
        "()F",
        "setBaseline",
        "(F)V",
        "getCh",
        "()C",
        "setCh",
        "(C)V",
        "getLeft",
        "setLeft",
        "getRotation",
        "()I",
        "setRotation",
        "(I)V",
        "Companion",
        "sdk-pdfdata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private baseline:F

.field private ch:C

.field private left:F

.field private rotation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->Companion:Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(CFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-char p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->ch:C

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->left:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->baseline:F

    return-void
.end method

.method public constructor <init>(CFFI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-char p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->ch:C

    .line 8
    iput p2, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->left:F

    .line 9
    iput p3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->baseline:F

    .line 10
    iput p4, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->rotation:I

    return-void
.end method


# virtual methods
.method public final getBaseline()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->baseline:F

    return p0
.end method

.method public final getCh()C
    .locals 0

    iget-char p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->ch:C

    return p0
.end method

.method public final getLeft()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->left:F

    return p0
.end method

.method public final getRotation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->rotation:I

    return p0
.end method

.method public final setBaseline(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->baseline:F

    return-void
.end method

.method public final setCh(C)V
    .locals 0

    iput-char p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->ch:C

    return-void
.end method

.method public final setLeft(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->left:F

    return-void
.end method

.method public final setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;->rotation:I

    return-void
.end method
