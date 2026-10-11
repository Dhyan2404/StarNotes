.class public Lnet/sf/saxon/functions/CharactersFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/CharactersFn;->b(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    new-instance v1, Lnet/sf/saxon/str/UnicodeChar;

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-direct {v1, p0}, Lnet/sf/saxon/str/UnicodeChar;-><init>(I)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->iterateCharacters()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/ItemMappingIterator;

    new-instance p2, Lcom/sunia/HTREnginev2/ird;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/ird;-><init>()V

    invoke-static {p2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    new-instance p0, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p0, p1}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p0
.end method
