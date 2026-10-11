.class public Lcom/onegravity/rteditor/effects/LinkEffect;
.super Lcom/sunia/HTREnginev2/brd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/brd<",
        "Ljava/lang/String;",
        "Lcom/onegravity/rteditor/spans/LinkSpan;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/brd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/effects/LinkEffect;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/String;)V

    return-void
.end method

.method public applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/brd;->getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 4
    invoke-virtual {v0, p2, p2}, Lcom/onegravity/rteditor/utils/Selection;->offset(II)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object p2

    sget-object v0, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onegravity/rteditor/spans/RTSpan;

    .line 5
    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/spans/RTSpan;

    .line 7
    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/effects/LinkEffect;->newSpan(Ljava/lang/String;)Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result p2

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v0

    const/16 v1, 0x21

    invoke-interface {p1, p0, p2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-void
.end method

.method public bridge synthetic newSpan(Ljava/lang/Object;)Lcom/onegravity/rteditor/spans/RTSpan;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/effects/LinkEffect;->newSpan(Ljava/lang/String;)Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object p0

    return-object p0
.end method

.method public newSpan(Ljava/lang/String;)Lcom/onegravity/rteditor/spans/RTSpan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/onegravity/rteditor/spans/LinkSpan;

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/spans/LinkSpan;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
