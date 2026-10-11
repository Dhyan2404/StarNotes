.class public Lcom/sunia/HTREnginev2/kvk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/kvk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/kvk$a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/kvk;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
            "TV;>;",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kvk;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/sunia/HTREnginev2/kvk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/sunia/HTREnginev2/kvk$a;-><init>(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kvk;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public c(Landroid/text/Spannable;)V
    .locals 7

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kvk;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/kvk$a;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/kvk$a;->a:Lcom/onegravity/rteditor/spans/RTParagraphSpan;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/kvk$a;->b:Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v2

    iget-boolean v3, v0, Lcom/sunia/HTREnginev2/kvk$a;->c:Z

    const/16 v4, 0x22

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    if-ge v0, v2, :cond_0

    invoke-interface {v1}, Lcom/onegravity/rteditor/spans/RTParagraphSpan;->createClone()Lcom/onegravity/rteditor/spans/RTParagraphSpan;

    move-result-object v3

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/sunia/HTREnginev2/kvk$a;->b:Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v3

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v5

    const/16 v6, 0x12

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Paragraph;->isFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x21

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p1, v1, v2, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public d(Lcom/onegravity/rteditor/spans/RTSpan;Lcom/onegravity/rteditor/utils/Paragraph;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/onegravity/rteditor/spans/RTParagraphSpan;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kvk;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/sunia/HTREnginev2/kvk$a;

    check-cast p1, Lcom/onegravity/rteditor/spans/RTParagraphSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/sunia/HTREnginev2/kvk$a;-><init>(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;Lcom/onegravity/rteditor/utils/Paragraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-virtual {p0, v0, p2}, Lcom/sunia/HTREnginev2/kvk;->d(Lcom/onegravity/rteditor/spans/RTSpan;Lcom/onegravity/rteditor/utils/Paragraph;)V

    goto :goto_0

    :cond_0
    return-void
.end method
