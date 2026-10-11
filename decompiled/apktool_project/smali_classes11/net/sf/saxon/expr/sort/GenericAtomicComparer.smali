.class public Lnet/sf/saxon/expr/sort/GenericAtomicComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# instance fields
.field public a:Lnet/sf/saxon/lib/StringCollator;

.field public final transient b:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public static makeAtomicComparer(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/16 v2, 0x212

    if-eq v0, v2, :cond_1

    const/16 v2, 0x213

    if-eq v0, v2, :cond_1

    const/16 v2, 0x215

    if-eq v0, v2, :cond_0

    const/16 v2, 0x279

    if-eq v0, v2, :cond_0

    const/16 v2, 0x27a

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    new-instance p0, Lnet/sf/saxon/expr/sort/CalendarValueComparer;

    invoke-direct {p0, p3}, Lnet/sf/saxon/expr/sort/CalendarValueComparer;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0

    :cond_0
    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;->getInstance()Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/expr/sort/EqualityComparer;->getInstance()Lnet/sf/saxon/expr/sort/EqualityComparer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;->getInstance()Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p0, 0x211

    const/16 p1, 0x277

    const/16 v2, 0x201

    if-eq v0, v2, :cond_4

    if-eq v0, p1, :cond_4

    if-ne v0, p0, :cond_5

    :cond_4
    if-eq v1, v2, :cond_6

    if-eq v1, p1, :cond_6

    if-ne v1, p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0

    :cond_6
    :goto_1
    instance-of p0, p2, Lnet/sf/saxon/expr/sort/CodepointCollator;

    if-eqz p0, :cond_7

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;

    invoke-direct {p0, p2}, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x202
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x207
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/StringCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p2, p0, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object p0

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {v1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Objects are not comparable ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lnet/sf/saxon/expr/sort/ComparisonException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/ComparisonException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

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

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/StringCollator;->comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/CalendarValue;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lnet/sf/saxon/value/CalendarValue;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/value/CalendarValue;

    check-cast p2, Lnet/sf/saxon/value/CalendarValue;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/value/CalendarValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p2, p0, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    check-cast p1, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    iget-object p1, p1, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public getContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public getStringCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    move-result-object p0

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GenericAtomicComparer;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public save()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GAC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {p0}, Lnet/sf/saxon/lib/StringCollator;->getCollationURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
