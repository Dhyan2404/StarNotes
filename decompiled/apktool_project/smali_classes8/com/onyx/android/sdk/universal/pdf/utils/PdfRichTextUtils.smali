.class public final Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00020\u0007J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "textStyle",
        "",
        "text",
        "buildHtml",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "Lcom/onyx/android/sdk/neopdf/richtext/Body;",
        "parseHtml",
        "Landroid/graphics/RectF;",
        "boundingRect",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
        "loadRichRun",
        "richText",
        "b",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "a",
        "",
        "Ljava/util/Map;",
        "invalidTagMap",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "<br>"

    const-string v2, "<br/>"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .locals 1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontSize(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setLineHeight(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final buildHtml(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "textStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<html><body><div>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</div></body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadRichRun(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "textShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "boundingRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->getRichTextRun()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    move-result-object p0

    return-object p0
.end method

.method public final parseHtml(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/neopdf/richtext/Body;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "textShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->buildHtml(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->parseHtml(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/Body;

    move-result-object p0

    return-object p0
.end method
