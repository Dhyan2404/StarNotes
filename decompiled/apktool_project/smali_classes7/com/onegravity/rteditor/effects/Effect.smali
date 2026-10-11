.class public abstract Lcom/onegravity/rteditor/effects/Effect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/sunia/HTREnginev2/xvm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/xvm<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "TV;)V"
        }
    .end annotation
.end method

.method public final clearFormattingInSelection(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    new-instance v1, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v1, p1}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/onegravity/rteditor/utils/Selection;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/effects/Effect;->getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final existsInSelection(Lcom/onegravity/rteditor/RTEditText;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/effects/Effect;->getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    sget-object v1, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;
.end method

.method public final getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/onegravity/rteditor/utils/Selection;",
            "Lcom/onegravity/rteditor/effects/SpanCollectMode;",
            ")",
            "Ljava/util/List<",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/effects/Effect;->a:Lcom/sunia/HTREnginev2/xvm;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/effects/Effect;->newSpanCollector(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/xvm;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/effects/Effect;->a:Lcom/sunia/HTREnginev2/xvm;

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/effects/Effect;->a:Lcom/sunia/HTREnginev2/xvm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/xvm;->a(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract newSpanCollector(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/xvm;
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
.end method

.method public final valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/effects/Effect;->getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    sget-object v2, Lcom/onegravity/rteditor/effects/SpanCollectMode;->SPAN_FLAGS:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, p1, v1, v2}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-interface {p1}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
