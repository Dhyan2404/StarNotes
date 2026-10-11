.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeTextUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTextUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeTextUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0007J \u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u001c\u0010\u0019\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;",
        "",
        "",
        "text",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "textStyle",
        "getDisplayText",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "invertTextShapeScale",
        "",
        "updateOldTextToHtmlText",
        "shapeTextStyle",
        "",
        "color",
        "textShape",
        "",
        "isNotBlankRichText",
        "content",
        "convertToHtmlText",
        "hasPdfUnrenderableChars",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "a",
        "Ljava/util/regex/Pattern;",
        "P_HTML",
        "b",
        "UNRENDERABLE_CHARS_PATTERN",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
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
        "SMAP\nShapeTextUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTextUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeTextUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    const-string v0, "<[^>]+>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->a:Ljava/util/regex/Pattern;

    const-string v0, "[\\p{InArabic}\\p{InDevanagari}\\p{InBengali}\\p{Script=Hebrew}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToHtmlText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "content"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onegravity/rteditor/utils/LineBreakExt;->INSTANCE:Lcom/onegravity/rteditor/utils/LineBreakExt;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/onegravity/rteditor/utils/LineBreakExt;->replaceToValidNBSP(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\r\n"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v0, "<br/>"

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "<br/>"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "<br/>"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayText(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextTraditionalConverted()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextSimplifiedConverted()Z

    :cond_2
    return-object p1
.end method

.method public final hasPdfUnrenderableChars(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/vdurmont/emoji/EmojiManager;->containsEmoji(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public final invertTextShapeScale(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    :try_start_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getSubPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getDataUniqueId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->shapeClone(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeUniqueId(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setSubPageUniqueId(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setDataUniqueId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isVertical()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSize(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    :cond_4
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final isNotBlankRichText(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "textShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\u00a0"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\u200b"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final updateOldTextToHtmlText(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;I)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextBold()Z

    move-result p0

    const-string v0, "\n"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextUnderline()Z

    move-result p0

    if-nez p0, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextItalic()Z

    move-result p0

    if-nez p0, :cond_1

    const/high16 p0, -0x1000000

    if-ne p3, p0, :cond_1

    const/4 p0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    if-nez p0, :cond_3

    return-object p1

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextBold()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "<b>"

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextUnderline()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "<u>"

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextItalic()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "<i>"

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v2, "<span style=\"color:"

    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    invoke-virtual {v2, p3}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->toCSSHexColor(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\">"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance p3, Lkotlin/text/Regex;

    const-string v2, "\r\n"

    invoke-direct {p3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "<br />"

    invoke-virtual {p3, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</span>"

    .line 18
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextItalic()Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "</i>"

    .line 20
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextUnderline()Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "</u>"

    .line 22
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_8
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextBold()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "</b>"

    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_9
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateOldTextToHtmlText, origin text: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", new text: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Object;

    .line 27
    const-class v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p2, v0, p1, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_a
    :goto_1
    return-object p1
.end method

.method public final updateOldTextToHtmlText(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->updateOldTextToHtmlText(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setRichText(Ljava/lang/String;)V

    return-void
.end method
