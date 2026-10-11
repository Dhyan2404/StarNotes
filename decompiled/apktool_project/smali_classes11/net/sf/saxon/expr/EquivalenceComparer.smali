.class public Lnet/sf/saxon/expr/EquivalenceComparer;
.super Lnet/sf/saxon/expr/sort/GenericAtomicComparer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method


# virtual methods
.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/StringCollator;->comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/CalendarValue;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    instance-of v0, p2, Lnet/sf/saxon/value/CalendarValue;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/value/CalendarValue;

    check-cast p2, Lnet/sf/saxon/value/CalendarValue;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/value/CalendarValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/EquivalenceComparer;
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/expr/EquivalenceComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/EquivalenceComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public bridge synthetic provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/EquivalenceComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/EquivalenceComparer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GenericAtomicComparer;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/EquivalenceComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/EquivalenceComparer;

    move-result-object p0

    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EQUIV|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
