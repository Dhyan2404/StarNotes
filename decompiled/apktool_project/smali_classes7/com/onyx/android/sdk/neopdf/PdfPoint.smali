.class public final Lcom/onyx/android/sdk/neopdf/PdfPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0012\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfPoint;",
        "Ljava/io/Serializable;",
        "()V",
        "px",
        "",
        "py",
        "s",
        "p",
        "ts",
        "",
        "(FFFFJ)V",
        "pressure",
        "getPressure",
        "()F",
        "setPressure",
        "(F)V",
        "size",
        "getSize",
        "setSize",
        "timestamp",
        "getTimestamp",
        "()J",
        "setTimestamp",
        "(J)V",
        "x",
        "y",
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
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private pressure:F

.field private size:F

.field private timestamp:J

.field public x:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public y:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->x:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->y:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->size:F

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->pressure:F

    .line 7
    iput-wide p5, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->timestamp:J

    return-void
.end method

.method public static final verticesFromPoints(Ljava/util/List;)[F
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfPoint;",
            ">;)[F"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;->verticesFromPoints(Ljava/util/List;)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPressure()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->pressure:F

    return p0
.end method

.method public final getSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->size:F

    return p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->timestamp:J

    return-wide v0
.end method

.method public final setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->pressure:F

    return-void
.end method

.method public final setSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->size:F

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->timestamp:J

    return-void
.end method
