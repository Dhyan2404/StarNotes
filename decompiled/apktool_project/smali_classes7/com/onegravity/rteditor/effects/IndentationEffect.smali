.class public Lcom/onegravity/rteditor/effects/IndentationEffect;
.super Lcom/sunia/HTREnginev2/xuk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/xuk<",
        "Ljava/lang/Integer;",
        "Lcom/onegravity/rteditor/spans/IndentationSpan;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/xuk;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Integer;)V
    .locals 11

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/sunia/HTREnginev2/kvk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kvk;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->getParagraphs()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onegravity/rteditor/utils/Paragraph;

    .line 7
    sget-object v6, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, v0, v5, v6}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v6

    .line 8
    invoke-virtual {v1, v6, v5}, Lcom/sunia/HTREnginev2/kvk;->e(Ljava/util/List;Lcom/onegravity/rteditor/utils/Paragraph;)V

    .line 9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onegravity/rteditor/spans/RTSpan;

    .line 10
    invoke-interface {v6}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-nez p3, :cond_1

    move v7, v3

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 12
    :goto_2
    invoke-virtual {v5, p2}, Lcom/onegravity/rteditor/utils/Paragraph;->isSelected(Lcom/onegravity/rteditor/utils/Selection;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v3

    :goto_3
    add-int/2addr v6, v7

    if-lez v6, :cond_3

    .line 13
    new-instance v7, Lcom/onegravity/rteditor/spans/IndentationSpan;

    invoke-virtual {v5}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v8

    invoke-virtual {v5}, Lcom/onegravity/rteditor/utils/Paragraph;->isFirst()Z

    move-result v9

    invoke-virtual {v5}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v10

    invoke-direct {v7, v6, v8, v9, v10}, Lcom/onegravity/rteditor/spans/IndentationSpan;-><init>(IZZZ)V

    .line 14
    invoke-virtual {v1, v7, v5}, Lcom/sunia/HTREnginev2/kvk;->a(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/kvk;->c(Landroid/text/Spannable;)V

    return-void
.end method

.method public bridge synthetic applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/effects/IndentationEffect;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Integer;)V

    return-void
.end method
