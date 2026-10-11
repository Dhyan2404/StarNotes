.class public final Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001aE\u0010\u0004\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0007\"\u000e\u0008\u0001\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00060\t*\u00020\u00012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00080\u000b2\u0006\u0010\u000c\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\r\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0001\u001a\u001a\u0010\u0010\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012\u001a\n\u0010\u0014\u001a\u00020\u0012*\u00020\u0001\u001a\u001a\u0010\u0015\u001a\u00020\u0016*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012\u001a\n\u0010\u0017\u001a\u00020\u000f*\u00020\u0001\u001a>\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0019\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0007\"\u000e\u0008\u0001\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00060\t*\u00020\u00012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00080\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "initEditor",
        "Lcom/onegravity/rteditor/RTEditText;",
        "context",
        "Landroid/content/Context;",
        "applyEffectForAll",
        "",
        "V",
        "",
        "C",
        "Lcom/onegravity/rteditor/spans/RTSpan;",
        "effect",
        "Lcom/onegravity/rteditor/effects/Effect;",
        "value",
        "(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V",
        "getAbsoluteSize",
        "",
        "getAlignmentEffectValue",
        "start",
        "",
        "end",
        "getFontColor",
        "getStyleInfo",
        "Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;",
        "getTypefaceName",
        "valuesInSelection",
        "",
        "sdk-textbox_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V
    .locals 3
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onegravity/rteditor/effects/Effect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "Lcom/onegravity/rteditor/effects/Effect<",
            "TV;TC;>;TV;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/RTEditText;->applyEffect(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static final getAbsoluteSize(Lcom/onegravity/rteditor/RTEditText;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "FONTSIZE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "px"

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getAlignmentEffectValue(Lcom/onegravity/rteditor/RTEditText;II)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/effects/Effect;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->fromAlignment(Landroid/text/Layout$Alignment;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/onegravity/rteditor/utils/Helper;->isRTL(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->fromAlignment(Landroid/text/Layout$Alignment;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->getValue()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final getFontColor(Lcom/onegravity/rteditor/RTEditText;)I
    .locals 2
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "FONTCOLOR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getStyleInfo(Lcom/onegravity/rteditor/RTEditText;II)Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;
    .locals 5
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setFontSize(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setLineHeight(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setHasSelection(Z)V

    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->ALL_EFFECTS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v2, p0}, Lcom/onegravity/rteditor/effects/Effect;->existsInSelection(Lcom/onegravity/rteditor/RTEditText;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    instance-of v4, v2, Lcom/onegravity/rteditor/effects/BoldEffect;

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setBold(Z)V

    goto :goto_1

    :cond_3
    instance-of v4, v2, Lcom/onegravity/rteditor/effects/ItalicEffect;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setItalic(Z)V

    goto :goto_1

    :cond_4
    instance-of v4, v2, Lcom/onegravity/rteditor/effects/UnderlineEffect;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setUnderline(Z)V

    goto :goto_1

    :cond_5
    instance-of v4, v2, Lcom/onegravity/rteditor/effects/AlignmentEffect;

    if-eqz v4, :cond_6

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getAlignmentEffectValue(Lcom/onegravity/rteditor/RTEditText;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setTextAlign(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    instance-of v4, v2, Lcom/onegravity/rteditor/effects/TypefaceEffect;

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getTypefaceName(Lcom/onegravity/rteditor/RTEditText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setFontFamily(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    instance-of v4, v2, Lcom/onegravity/rteditor/effects/AbsoluteSizeEffect;

    if-eqz v4, :cond_8

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getAbsoluteSize(Lcom/onegravity/rteditor/RTEditText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setFontSize(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    instance-of v2, v2, Lcom/onegravity/rteditor/effects/ForegroundColorEffect;

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getFontColor(Lcom/onegravity/rteditor/RTEditText;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->setTextColor(I)V

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method public static final getTypefaceName(Lcom/onegravity/rteditor/RTEditText;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "TYPEFACE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static final initEditor(Landroid/content/Context;)Lcom/onegravity/rteditor/RTEditText;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onegravity/rteditor/RTEditText;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/RTEditText;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;I)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le p0, v1, :cond_0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/dcl;->a(Lcom/onegravity/rteditor/RTEditText;)F

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, p0}, Lcom/sunia/HTREnginev2/ecl;->a(Lcom/onegravity/rteditor/RTEditText;FFFF)V

    :cond_0
    return-object v0
.end method

.method public static final valuesInSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;)Ljava/util/List;
    .locals 4
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onegravity/rteditor/effects/Effect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "Lcom/onegravity/rteditor/effects/Effect<",
            "TV;TC;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v1, p0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/onegravity/rteditor/utils/Selection;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v3, v1}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    sget-object v2, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p1, p0, v1, v2}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-interface {p1}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
