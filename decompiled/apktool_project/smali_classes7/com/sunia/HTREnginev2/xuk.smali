.class public abstract Lcom/sunia/HTREnginev2/xuk;
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
.method public abstract applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "Lcom/onegravity/rteditor/utils/Selection;",
            "TV;)V"
        }
    .end annotation
.end method

.method public final applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xuk;->getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/sunia/HTREnginev2/xuk;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/onegravity/rteditor/effects/Effect;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    .line 3
    invoke-static {p1, p2}, Lcom/onegravity/rteditor/effects/Effects;->cleanupParagraphs(Lcom/onegravity/rteditor/RTEditText;[Lcom/onegravity/rteditor/effects/Effect;)V

    return-void
.end method

.method public findSpans2Remove(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Paragraph;Lcom/sunia/HTREnginev2/kvk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            "Lcom/sunia/HTREnginev2/kvk<",
            "TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Lcom/sunia/HTREnginev2/kvk;->e(Ljava/util/List;Lcom/onegravity/rteditor/utils/Paragraph;)V

    return-void
.end method

.method public final getSelection(Lcom/onegravity/rteditor/RTEditText;)Lcom/onegravity/rteditor/utils/Selection;
    .locals 0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->getParagraphsInSelection()Lcom/onegravity/rteditor/utils/Selection;

    move-result-object p0

    return-object p0
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

    new-instance p0, Lcom/sunia/HTREnginev2/jvk;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/jvk;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method
