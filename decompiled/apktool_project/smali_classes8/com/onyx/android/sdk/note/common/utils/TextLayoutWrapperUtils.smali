.class public final Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutWrapperUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutWrapperUtils.kt\ncom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,335:1\n731#2,9:336\n731#2,9:347\n37#3,2:345\n37#3,2:356\n*S KotlinDebug\n*F\n+ 1 TextLayoutWrapperUtils.kt\ncom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils\n*L\n243#1:336,9\n312#1:347,9\n243#1:345,2\n312#1:356,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\u0018\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J(\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008J\u0018\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\u0008J\u0018\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J \u0010\u001c\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\"\u0010\u001d\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\u001e\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u0010\t\u001a\u00020\u0008J\u001a\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\'\u001a\u00020&2\u0006\u0010\u000b\u001a\u00020\nH\u0002JJ\u00102\u001a\u00020\u00062\u0008\u0010(\u001a\u0004\u0018\u00010$2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00122\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u00122\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020 H\u0002J\u001c\u00104\u001a\u0002032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002R\u001a\u00109\u001a\u0002058\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008%\u00106\u001a\u0004\u00087\u00108\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Landroid/text/TextPaint;",
        "tp",
        "Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;",
        "createTextLayout",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "textStyle",
        "",
        "content",
        "",
        "buildShapeTextPaint",
        "Landroid/graphics/Typeface;",
        "getShapeTypeface",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "",
        "getFontBaseLineTranslate",
        "fontFace",
        "getFontBaseLine",
        "scaleShapeTextStyleToJson",
        "matrix",
        "scaleShapeTextStyle",
        "updateTextStyle",
        "getMaxLineWidth",
        "getMaxWordWidth",
        "getTextLayoutCharMinWidth",
        "getTextLayoutCharMinHeight",
        "getMaxVerticalLineHeight",
        "layout",
        "",
        "line",
        "Landroid/graphics/RectF;",
        "getLineRectWithoutSpacing",
        "",
        "a",
        "Landroid/text/SpannableString;",
        "b",
        "source",
        "paint",
        "width",
        "Landroid/text/Layout$Alignment;",
        "align",
        "spacingmult",
        "spacingadd",
        "",
        "includepad",
        "orientation",
        "c",
        "",
        "d",
        "",
        "C",
        "getCHAR_SPACE",
        "()C",
        "CHAR_SPACE",
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
        "SMAP\nTextLayoutWrapperUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutWrapperUtils.kt\ncom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,335:1\n731#2,9:336\n731#2,9:347\n37#3,2:345\n37#3,2:356\n*S KotlinDebug\n*F\n+ 1 TextLayoutWrapperUtils.kt\ncom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils\n*L\n243#1:336,9\n312#1:347,9\n243#1:345,2\n312#1:356,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;

    const/16 v0, 0x20

    sput-char v0, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->a:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    invoke-virtual {v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->getDisplayText(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\n"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r"

    const-string v8, "\n"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextUnderline()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->b(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public final b(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 2

    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public final buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "tp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->getShapeTypeface(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextBold()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextItalic()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZI)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 9

    if-nez p8, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->Companion:Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZ)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;->Companion:Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZ)Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final createTextLayout(Landroid/graphics/Matrix;Landroid/text/TextPaint;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 10
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1, p4}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->updateTextStyle(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    .line 23
    invoke-virtual {p0, p2, p4, p3}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p4, p3}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 25
    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v4

    .line 26
    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 27
    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 28
    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getOrientation()I

    move-result v9

    move-object v1, p0

    move-object v3, p2

    .line 29
    invoke-virtual/range {v1 .. v9}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZI)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final createTextLayout(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 5
    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->createTextLayout(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/text/TextPaint;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final createTextLayout(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/text/TextPaint;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 11
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    .line 8
    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->updateTextStyle(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    .line 10
    invoke-virtual {p0, p3, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isTransparent(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 15
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v5

    .line 16
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 17
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 18
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getOrientation()I

    move-result v10

    move-object v2, p0

    move-object v4, p3

    .line 19
    invoke-virtual/range {v2 .. v10}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZI)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final createTextLayout(Landroid/graphics/Matrix;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 21
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->createTextLayout(Landroid/graphics/Matrix;Landroid/text/TextPaint;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final createTextLayout(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->createTextLayout(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final createTextLayout(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/text/TextPaint;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->createTextLayout(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/text/TextPaint;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final createTextLayout(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->createTextLayout(Landroid/graphics/Matrix;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)[F
    .locals 3

    const/4 p0, 0x2

    new-array p0, p0, [F

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getPointScale()F

    move-result v1

    mul-float v2, p1, v1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getPointScale()F

    move-result p2

    mul-float v0, p1, p2

    :cond_0
    const/4 p1, 0x0

    aput v2, p0, p1

    const/4 p1, 0x1

    aput v0, p0, p1

    return-object p0
.end method

.method public final getCHAR_SPACE()C
    .locals 0

    sget-char p0, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->a:C

    return p0
.end method

.method public final getFontBaseLine(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->createTextLayout(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/text/TextPaint;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineBaseline(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getFontBaseLineTranslate(Lcom/onyx/android/sdk/note/common/shape/Shape;)F
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->getFontBaseLine(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->getFontBaseLine(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)F

    move-result p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    sub-float/2addr v1, p0

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLineRectWithoutSpacing(Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;ILcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "layout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "textStyle"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineBounds(ILandroid/graphics/RectF;)F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineHeight(I)F

    move-result p1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result p2

    div-float/2addr p1, p2

    iget p2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method public final getMaxLineWidth(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)F
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    new-instance p0, Lkotlin/text/Regex;

    const-string p2, "\n"

    invoke-direct {p0, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    if-nez v2, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    new-array p1, p2, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length p1, p0

    :goto_2
    if-ge p2, p1, :cond_4

    aget-object v2, p0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public final getMaxVerticalLineHeight(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)F
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    new-instance p0, Lkotlin/text/Regex;

    const-string p2, "\n"

    invoke-direct {p0, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-nez v1, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    new-array p1, p2, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length p1, p0

    move v1, p2

    :goto_2
    if-ge p2, p1, :cond_4

    aget-object v2, p0, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    int-to-float p1, v1

    iget p2, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    return p1
.end method

.method public final getMaxWordWidth(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)F
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move p2, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getShapeTypeface(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "textStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isCJK(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public final getTextLayoutCharMinHeight(Landroid/graphics/Matrix;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)F
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->updateTextStyle(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    :cond_1
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p1, p0

    return p1
.end method

.method public final getTextLayoutCharMinWidth(Landroid/graphics/Matrix;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)F
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p3

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;

    invoke-virtual {v0, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->updateTextStyle(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    :cond_1
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->buildShapeTextPaint(Landroid/text/TextPaint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final scaleShapeTextStyle(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "textStyle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result p2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p1

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSize(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLineHeight(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSpacing(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    :cond_0
    return-object p0
.end method

.method public final scaleShapeTextStyleToJson(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "textStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLineHeight(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSpacing(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateTextStyle(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;->d(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)[F

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSize(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    :cond_0
    return-void
.end method
