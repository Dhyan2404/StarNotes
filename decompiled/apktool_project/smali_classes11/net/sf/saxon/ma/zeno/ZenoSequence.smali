.class public Lnet/sf/saxon/ma/zeno/ZenoSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/ma/zeno/ZenoChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/zeno/ZenoChain<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-direct {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/zeno/ZenoChain<",
            "Lnet/sf/saxon/om/Item;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/zeno/ZenoSequence;)Lnet/sf/saxon/ma/zeno/ZenoChain;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    return-object p0
.end method

.method public static fromList(Ljava/util/List;)Lnet/sf/saxon/ma/zeno/ZenoSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;)",
            "Lnet/sf/saxon/ma/zeno/ZenoSequence;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-direct {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->addAll(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0
.end method

.method public static join(Ljava/util/List;)Lnet/sf/saxon/ma/zeno/ZenoSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;)",
            "Lnet/sf/saxon/ma/zeno/ZenoSequence;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-direct {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/GroundedValue;

    instance-of v2, v1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object v1, v1, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->concat(Lnet/sf/saxon/ma/zeno/ZenoChain;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Item;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->add(Ljava/lang/Object;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object p0
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/ma/zeno/ZenoSequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->add(Ljava/lang/Object;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0
.end method

.method public appendSequence(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/zeno/ZenoSequence;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    check-cast p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object p1, p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->concat(Lnet/sf/saxon/ma/zeno/ZenoChain;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->addAll(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->add(Ljava/lang/Object;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->size()I

    move-result p0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->getLength()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->getLength()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Item;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    :goto_0
    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;-><init>(Lnet/sf/saxon/ma/zeno/ZenoSequence;)V

    return-object v0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v1, p1

    int-to-long v3, p2

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    sub-int p2, v0, p1

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence;->e:Lnet/sf/saxon/ma/zeno/ZenoChain;

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->subList(II)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0

    :cond_4
    :goto_0
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method
