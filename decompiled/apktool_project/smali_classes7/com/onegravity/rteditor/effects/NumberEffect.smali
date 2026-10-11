.class public Lcom/onegravity/rteditor/effects/NumberEffect;
.super Lcom/sunia/HTREnginev2/xuk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/xuk<",
        "Ljava/lang/Boolean;",
        "Lcom/onegravity/rteditor/spans/NumberSpan;",
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
.method public declared-synchronized applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Boolean;)V
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/sunia/HTREnginev2/kvk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/kvk;-><init>()V

    .line 4
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 5
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/onegravity/rteditor/RTEditText;->getParagraphs()Ljava/util/ArrayList;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    move v10, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_9

    .line 8
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/onegravity/rteditor/utils/Paragraph;

    .line 9
    sget-object v12, Lcom/onegravity/rteditor/effects/Effects;->INDENTATION:Lcom/onegravity/rteditor/effects/IndentationEffect;

    sget-object v13, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {v12, v0, v11, v13}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v12

    .line 10
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 11
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/onegravity/rteditor/spans/RTSpan;

    .line 12
    invoke-interface {v14}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v13, v14

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 13
    :cond_1
    invoke-virtual {v3, v10, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v12, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {v1, v0, v11, v12}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v12

    .line 15
    invoke-virtual {v2, v12, v11}, Lcom/sunia/HTREnginev2/kvk;->e(Ljava/util/List;Lcom/onegravity/rteditor/utils/Paragraph;)V

    .line 16
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v12, p2

    move v14, v8

    goto :goto_2

    :cond_2
    move-object/from16 v12, p2

    const/4 v14, 0x0

    .line 17
    :goto_2
    invoke-virtual {v11, v12}, Lcom/onegravity/rteditor/utils/Paragraph;->isSelected(Lcom/onegravity/rteditor/utils/Selection;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :cond_3
    if-eqz v14, :cond_8

    move v14, v8

    move v15, v14

    :goto_3
    if-ge v14, v10, :cond_7

    .line 18
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 19
    invoke-virtual {v4, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    if-ge v7, v13, :cond_4

    :goto_4
    move v15, v8

    goto :goto_5

    :cond_4
    if-ne v7, v13, :cond_6

    if-nez v16, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v16, v16, 0x1

    move/from16 v15, v16

    :cond_6
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {v4, v10, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    invoke-static {}, Lcom/onegravity/rteditor/utils/Helper;->getLeadingMarging()I

    move-result v17

    .line 22
    new-instance v7, Lcom/onegravity/rteditor/spans/NumberSpan;

    invoke-virtual {v11}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v18

    invoke-virtual {v11}, Lcom/onegravity/rteditor/utils/Paragraph;->isFirst()Z

    move-result v19

    invoke-virtual {v11}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v20

    move v13, v15

    move-object v15, v7

    move/from16 v16, v13

    invoke-direct/range {v15 .. v20}, Lcom/onegravity/rteditor/spans/NumberSpan;-><init>(IIZZZ)V

    .line 23
    invoke-virtual {v2, v7, v11}, Lcom/sunia/HTREnginev2/kvk;->a(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;)V

    .line 24
    sget-object v7, Lcom/onegravity/rteditor/effects/Effects;->BULLET:Lcom/onegravity/rteditor/effects/BulletEffect;

    invoke-virtual {v7, v0, v11, v2}, Lcom/sunia/HTREnginev2/xuk;->findSpans2Remove(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Paragraph;Lcom/sunia/HTREnginev2/kvk;)V

    :cond_8
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 25
    :cond_9
    invoke-virtual {v2, v0}, Lcom/sunia/HTREnginev2/kvk;->c(Landroid/text/Spannable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/effects/NumberEffect;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Boolean;)V

    return-void
.end method
