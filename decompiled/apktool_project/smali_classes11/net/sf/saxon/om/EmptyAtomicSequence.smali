.class public Lnet/sf/saxon/om/EmptyAtomicSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AtomicSequence;


# static fields
.field public static final e:Lnet/sf/saxon/om/EmptyAtomicSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/EmptyAtomicSequence;

    invoke-direct {v0}, Lnet/sf/saxon/om/EmptyAtomicSequence;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/EmptyAtomicSequence;->e:Lnet/sf/saxon/om/EmptyAtomicSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/om/EmptyAtomicSequence;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/EmptyAtomicSequence;->e:Lnet/sf/saxon/om/EmptyAtomicSequence;

    return-object v0
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/om/EmptyAtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/EmptyAtomicSequence;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/om/EmptyAtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 0

    .line 2
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
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

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/EmptyAtomicSequence;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/om/EmptyAtomicSequence;->reduce()Lnet/sf/saxon/om/EmptyAtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/EmptyAtomicSequence;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/EmptyAtomicSequence;->subsequence(II)Lnet/sf/saxon/om/EmptyAtomicSequence;

    move-result-object p0

    return-object p0
.end method
