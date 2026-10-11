.class public final Lcom/onegravity/rteditor/extension/RTRichTextExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "getVersionStr",
        "",
        "handleDeleteKey",
        "",
        "Lcom/onegravity/rteditor/RTEditText;",
        "keyCode",
        "",
        "sdk-rteditor_release"
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
.method public static final getVersionStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<version data-client=\"android\" data-version=\"2\"></version>"

    return-object v0
.end method

.method public static final handleDeleteKey(Lcom/onegravity/rteditor/RTEditText;I)Z
    .locals 5
    .param p0    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x43

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    if-ne v0, p0, :cond_5

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, v2, -0x1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x200b

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    new-instance v3, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v3, v2, v0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    sget-object v2, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {v1, p1, v3, v2}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method
