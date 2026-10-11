.class public Lnet/sf/saxon/om/AtomicArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AtomicSequence;


# static fields
.field public static EMPTY_ATOMIC_ARRAY:Lnet/sf/saxon/om/AtomicArray;

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/om/AtomicArray;->f:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/om/AtomicArray;

    invoke-direct {v1, v0}, Lnet/sf/saxon/om/AtomicArray;-><init>(Ljava/util/List;)V

    sput-object v1, Lnet/sf/saxon/om/AtomicArray;->EMPTY_ATOMIC_ARRAY:Lnet/sf/saxon/om/AtomicArray;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v1, Lcom/sunia/HTREnginev2/eg;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/eg;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    .line 6
    iput-object v0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/om/AtomicArray;->b(Ljava/util/ArrayList;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/om/AtomicArray;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AtomicArray;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    if-nez v1, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    if-nez v1, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/om/AtomicArray;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/AtomicArray;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/om/AtomicArray;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$OfAtomic;

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$OfAtomic;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/om/AtomicArray;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/AtomicArray;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/AtomicArray;
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    add-int v0, p1, p2

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    iget-object p2, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    :cond_1
    new-instance v0, Lnet/sf/saxon/om/AtomicArray;

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicArray;->e:Ljava/util/List;

    add-int/2addr p2, p1

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/AtomicArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/AtomicArray;->subsequence(II)Lnet/sf/saxon/om/AtomicArray;

    move-result-object p0

    return-object p0
.end method
