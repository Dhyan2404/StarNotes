.class public Lcom/onegravity/rteditor/effects/AlignmentEffect;
.super Lcom/sunia/HTREnginev2/xuk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/xuk<",
        "Landroid/text/Layout$Alignment;",
        "Lcom/onegravity/rteditor/spans/AlignmentSpan;",
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
.method public applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Landroid/text/Layout$Alignment;)V
    .locals 11

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/kvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kvk;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->getParagraphs()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    .line 6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onegravity/rteditor/utils/Paragraph;

    .line 7
    sget-object v7, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, v1, v6, v7}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v7

    .line 8
    invoke-virtual {v0, v7, v6}, Lcom/sunia/HTREnginev2/kvk;->e(Ljava/util/List;Lcom/onegravity/rteditor/utils/Paragraph;)V

    .line 9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 10
    invoke-virtual {v6, p2}, Lcom/onegravity/rteditor/utils/Paragraph;->isSelected(Lcom/onegravity/rteditor/utils/Selection;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v7, p3

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_1

    .line 11
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-interface {v7}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v6}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v8

    invoke-virtual {v6}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v10

    invoke-static {v1, v8, v10}, Lcom/onegravity/rteditor/utils/Helper;->isRTL(Ljava/lang/CharSequence;II)Z

    move-result v8

    .line 13
    new-instance v10, Lcom/onegravity/rteditor/spans/AlignmentSpan;

    invoke-direct {v10, v7, v8}, Lcom/onegravity/rteditor/spans/AlignmentSpan;-><init>(Landroid/text/Layout$Alignment;Z)V

    .line 14
    invoke-virtual {v0, v10, v6}, Lcom/sunia/HTREnginev2/kvk;->a(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;)V

    .line 15
    :cond_2
    invoke-virtual {v6}, Lcom/onegravity/rteditor/utils/Paragraph;->isFirst()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v8

    const/16 v10, 0x200b

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 17
    invoke-virtual {v6, v4, v9}, Lcom/onegravity/rteditor/utils/Selection;->offset(II)Lcom/onegravity/rteditor/utils/Selection;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/kvk;->c(Landroid/text/Spannable;)V

    return-void
.end method

.method public bridge synthetic applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/effects/AlignmentEffect;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Landroid/text/Layout$Alignment;)V

    return-void
.end method
