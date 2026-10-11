.class public final Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;",
        "Lcom/onyx/android/sdk/reader/api/ReaderShape;",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "a",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "getPdfShape",
        "()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "pdfShape",
        "<init>",
        "(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final AREA_ERASER_STROKE_WIDTH:F = 0.1f

.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;->a:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    return-void
.end method


# virtual methods
.method public final getPdfShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;->a:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    return-object p0
.end method
