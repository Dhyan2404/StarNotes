.class public Lcom/sunia/HTREnginev2/jvk;
.super Lcom/sunia/HTREnginev2/xvm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/xvm<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/xvm;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;
    .locals 6
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/sunia/HTREnginev2/xvm;->b(Landroid/text/Spannable;II)[Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/sunia/HTREnginev2/jvk;->d(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final d(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Z
    .locals 7

    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v2

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    return v6

    :cond_1
    if-le v0, v2, :cond_2

    if-lt v1, p2, :cond_3

    :cond_2
    if-le v2, v0, :cond_4

    if-ge p2, v1, :cond_4

    :cond_3
    return v6

    :cond_4
    sget-object v3, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    if-ne p4, v3, :cond_6

    if-ne v0, v2, :cond_5

    if-ne v1, p2, :cond_5

    if-ne v2, p2, :cond_5

    move v5, v6

    :cond_5
    return v5

    :cond_6
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    and-int/lit8 p1, p1, 0x33

    const/16 p2, 0x12

    if-ne v1, v2, :cond_7

    const/16 p3, 0x22

    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/xvm;->c(I[I)Z

    move-result p0

    return p0

    :cond_7
    const/16 p3, 0x11

    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/xvm;->c(I[I)Z

    move-result p0

    return p0
.end method
