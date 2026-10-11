.class public final Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape$Companion;",
        "",
        "()V",
        "CIRCLE_LINE_THRESHOLD",
        "",
        "createPdfShape",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "embedShapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createCircleShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setGraphicalFillBitmap(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    return-object v0
.end method
