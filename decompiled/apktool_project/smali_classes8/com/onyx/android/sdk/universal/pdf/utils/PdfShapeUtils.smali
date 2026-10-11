.class public final Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfShapeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfShapeUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,75:1\n37#2,2:76\n*S KotlinDebug\n*F\n+ 1 PdfShapeUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils\n*L\n58#1:76,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
        "embedShapeArgs",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "createPdfShape",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "shapeBean",
        "pdfShape",
        "textShape",
        "",
        "b",
        "Lcom/onyx/android/sdk/neopdf/richtext/Body;",
        "body",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPdfShapeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfShapeUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,75:1\n37#2,2:76\n*S KotlinDebug\n*F\n+ 1 PdfShapeUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils\n*L\n58#1:76,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/neopdf/richtext/Body;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextRendererHtmlFormatter parse html failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/Object;

    const-class v1, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;

    invoke-virtual {p2, v1, v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/richtext/Body;->getParagraph()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;->getSpans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/richtext/Body;->getParagraph()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;->getSpans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neopdf/richtext/Span;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/richtext/Span;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;->loadTextShapePdfTextRun(Lcom/onyx/android/sdk/note/common/shape/Shape;F)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->Companion:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;->createFromFreeTextShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->build()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRichText(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->parseHtml(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/neopdf/richtext/Body;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;->loadRichTextPdfTextRun(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/neopdf/richtext/Body;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setText(Ljava/lang/String;)V

    if-nez v0, :cond_4

    const-string p0, ""

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;->formatRichTextString(Lcom/onyx/android/sdk/neopdf/richtext/Body;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRichText(Ljava/lang/String;)V

    move-object p0, v1

    :goto_3
    check-cast p0, Ljava/util/Collection;

    new-array p2, v2, [Lcom/onyx/android/sdk/neopdf/PdfTextRun;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/onyx/android/sdk/neopdf/PdfTextRun;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setTextRuns([Lcom/onyx/android/sdk/neopdf/PdfTextRun;)V

    return-void
.end method

.method public final createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedShapeArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->fromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRenderExcerptIndicatorInPdf()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setShowExcerptIndicator(Z)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeConvert;->toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->b(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_0
    return-object p1
.end method
