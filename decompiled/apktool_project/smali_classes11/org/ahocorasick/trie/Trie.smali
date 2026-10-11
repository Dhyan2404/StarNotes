.class public Lorg/ahocorasick/trie/Trie;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ahocorasick/trie/Trie$TrieBuilder;
    }
.end annotation


# instance fields
.field public a:Lorg/ahocorasick/trie/TrieConfig;

.field public b:Lorg/ahocorasick/trie/State;


# direct methods
.method public constructor <init>(Lorg/ahocorasick/trie/TrieConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    .line 4
    new-instance p1, Lorg/ahocorasick/trie/State;

    invoke-direct {p1}, Lorg/ahocorasick/trie/State;-><init>()V

    iput-object p1, p0, Lorg/ahocorasick/trie/Trie;->b:Lorg/ahocorasick/trie/State;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ahocorasick/trie/TrieConfig;Lorg/ahocorasick/trie/Trie$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ahocorasick/trie/Trie;-><init>(Lorg/ahocorasick/trie/TrieConfig;)V

    return-void
.end method

.method public static synthetic a(Lorg/ahocorasick/trie/Trie;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/ahocorasick/trie/Trie;)Lorg/ahocorasick/trie/TrieConfig;
    .locals 0

    iget-object p0, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    return-object p0
.end method

.method public static builder()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    new-instance v0, Lorg/ahocorasick/trie/Trie$TrieBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ahocorasick/trie/Trie$TrieBuilder;-><init>(Lorg/ahocorasick/trie/Trie$a;)V

    return-object v0
.end method

.method public static synthetic c(Lorg/ahocorasick/trie/Trie;)V
    .locals 0

    invoke-virtual {p0}, Lorg/ahocorasick/trie/Trie;->e()V

    return-void
.end method


# virtual methods
.method public containsMatch(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->firstMatch(Ljava/lang/CharSequence;)Lorg/ahocorasick/trie/Emit;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->b:Lorg/ahocorasick/trie/State;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    iget-object v5, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v5}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :cond_1
    invoke-virtual {v0, v4}, Lorg/ahocorasick/trie/State;->addState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {p0}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0, p1}, Lorg/ahocorasick/trie/State;->addEmit(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 6

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iget-object v1, p0, Lorg/ahocorasick/trie/Trie;->b:Lorg/ahocorasick/trie/State;

    invoke-virtual {v1}, Lorg/ahocorasick/trie/State;->getStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/trie/State;

    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->b:Lorg/ahocorasick/trie/State;

    invoke-virtual {v2, v3}, Lorg/ahocorasick/trie/State;->setFailure(Lorg/ahocorasick/trie/State;)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ahocorasick/trie/State;

    invoke-virtual {p0}, Lorg/ahocorasick/trie/State;->getTransitions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {p0, v2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/ahocorasick/trie/State;->failure()Lorg/ahocorasick/trie/State;

    move-result-object v4

    :goto_2
    invoke-virtual {v4, v2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/ahocorasick/trie/State;->failure()Lorg/ahocorasick/trie/State;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/ahocorasick/trie/State;->setFailure(Lorg/ahocorasick/trie/State;)V

    invoke-virtual {v2}, Lorg/ahocorasick/trie/State;->emit()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/ahocorasick/trie/State;->addEmit(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final f(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;I)Lorg/ahocorasick/trie/Token;
    .locals 0

    new-instance p0, Lorg/ahocorasick/trie/FragmentToken;

    add-int/lit8 p3, p3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result p1

    :goto_0
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ahocorasick/trie/FragmentToken;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public firstMatch(Ljava/lang/CharSequence;)Lorg/ahocorasick/trie/Emit;
    .locals 6

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v0}, Lorg/ahocorasick/trie/TrieConfig;->isAllowOverlaps()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ahocorasick/trie/Emit;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->b:Lorg/ahocorasick/trie/State;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v3}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, v0, v2}, Lorg/ahocorasick/trie/Trie;->h(Lorg/ahocorasick/trie/State;Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ahocorasick/trie/State;->emit()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5, v1, v3}, Lorg/ahocorasick/trie/Emit;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v3}, Lorg/ahocorasick/trie/TrieConfig;->isOnlyWholeWords()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v4}, Lorg/ahocorasick/trie/Trie;->i(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/Emit;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return-object v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;)Lorg/ahocorasick/trie/Token;
    .locals 2

    new-instance p0, Lorg/ahocorasick/trie/MatchToken;

    invoke-virtual {p1}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/ahocorasick/trie/MatchToken;-><init>(Ljava/lang/String;Lorg/ahocorasick/trie/Emit;)V

    return-object p0
.end method

.method public final h(Lorg/ahocorasick/trie/State;Ljava/lang/Character;)Lorg/ahocorasick/trie/State;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/ahocorasick/trie/State;->failure()Lorg/ahocorasick/trie/State;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final i(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/Emit;)Z
    .locals 2

    invoke-virtual {p2}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result p0

    add-int/2addr p0, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq p0, v1, :cond_1

    invoke-virtual {p2}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result p0

    add-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {p0, p1, v2}, Lorg/ahocorasick/trie/Trie;->i(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/Emit;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ahocorasick/trie/Emit;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-long v0, p0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v3}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ahocorasick/trie/Emit;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final l(ILorg/ahocorasick/trie/State;Lorg/ahocorasick/trie/handler/EmitHandler;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/ahocorasick/trie/State;->emit()Ljava/util/Collection;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, p1, p2}, Lorg/ahocorasick/trie/Emit;-><init>(IILjava/lang/String;)V

    invoke-interface {p3, v0}, Lorg/ahocorasick/trie/handler/EmitHandler;->emit(Lorg/ahocorasick/trie/Emit;)V

    move p2, v2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;

    invoke-direct {v0}, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/handler/EmitHandler;)V

    .line 3
    invoke-virtual {v0}, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;->getEmits()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v1}, Lorg/ahocorasick/trie/TrieConfig;->isOnlyWholeWords()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/trie/Trie;->j(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v1}, Lorg/ahocorasick/trie/TrieConfig;->isOnlyWholeWordsWhiteSpaceSeparated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/trie/Trie;->k(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 8
    :cond_1
    iget-object p0, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {p0}, Lorg/ahocorasick/trie/TrieConfig;->isAllowOverlaps()Z

    move-result p0

    if-nez p0, :cond_2

    .line 9
    new-instance p0, Lorg/ahocorasick/interval/IntervalTree;

    invoke-direct {p0, v0}, Lorg/ahocorasick/interval/IntervalTree;-><init>(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, v0}, Lorg/ahocorasick/interval/IntervalTree;->removeOverlaps(Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public parseText(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/handler/EmitHandler;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->b:Lorg/ahocorasick/trie/State;

    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 13
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v3}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 16
    :cond_0
    invoke-virtual {p0, v0, v2}, Lorg/ahocorasick/trie/Trie;->h(Lorg/ahocorasick/trie/State;Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v1, v0, p2}, Lorg/ahocorasick/trie/Trie;->l(ILorg/ahocorasick/trie/State;Lorg/ahocorasick/trie/handler/EmitHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/ahocorasick/trie/Trie;->a:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v2}, Lorg/ahocorasick/trie/TrieConfig;->isStopOnHit()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public tokenize(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ahocorasick/trie/Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v3}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result v5

    sub-int/2addr v5, v2

    if-le v5, v4, :cond_0

    invoke-virtual {p0, v3, p1, v2}, Lorg/ahocorasick/trie/Trie;->f(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;I)Lorg/ahocorasick/trie/Token;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v3, p1}, Lorg/ahocorasick/trie/Trie;->g(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;)Lorg/ahocorasick/trie/Token;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-le v1, v4, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lorg/ahocorasick/trie/Trie;->f(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;I)Lorg/ahocorasick/trie/Token;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
