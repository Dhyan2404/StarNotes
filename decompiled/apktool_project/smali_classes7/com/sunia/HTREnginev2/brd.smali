.class public abstract Lcom/sunia/HTREnginev2/brd;
.super Lcom/onegravity/rteditor/effects/Effect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "TV;>;>",
        "Lcom/onegravity/rteditor/effects/Effect<",
        "TV;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onegravity/rteditor/effects/Effect;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "TV;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/brd;->getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v1

    const/16 v2, 0x22

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    sget-object v3, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, p1, v0, v3}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-interface {v4}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1, v8}, Lcom/onegravity/rteditor/utils/Selection;->offset(II)Lcom/onegravity/rteditor/utils/Selection;

    move v1, v2

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sunia/HTREnginev2/brd;->newSpan(Ljava/lang/Object;)Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v9

    const/16 v10, 0x21

    invoke-interface {p1, v7, v6, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_2
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v7

    if-le v6, v7, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v5

    sub-int/2addr v6, v5

    invoke-virtual {v0, v8, v6}, Lcom/onegravity/rteditor/utils/Selection;->offset(II)Lcom/onegravity/rteditor/utils/Selection;

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sunia/HTREnginev2/brd;->newSpan(Ljava/lang/Object;)Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v7

    invoke-interface {p1, v5, v7, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_3
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/brd;->newSpan(Ljava/lang/Object;)Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result p2

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v0

    invoke-interface {p1, p0, p2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    return-void
.end method

.method public final getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;
    .locals 0

    new-instance p0, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    return-object p0
.end method

.method public abstract newSpan(Ljava/lang/Object;)Lcom/onegravity/rteditor/spans/RTSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final newSpanCollector(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/xvm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;)",
            "Lcom/sunia/HTREnginev2/xvm<",
            "TV;>;"
        }
    .end annotation

    new-instance p0, Lcom/sunia/HTREnginev2/hrd;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/hrd;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method
