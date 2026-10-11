.class public Lnet/sf/saxon/expr/sort/AtomicSortComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/sort/AtomicSortComparer$b;
    }
.end annotation


# static fields
.field public static COLLATION_KEY_NaN:Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# instance fields
.field public a:Lnet/sf/saxon/lib/StringCollator;

.field public final transient b:Lnet/sf/saxon/expr/XPathContext;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/sort/AtomicSortComparer$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/sort/AtomicSortComparer$b;-><init>(Lnet/sf/saxon/expr/sort/AtomicSortComparer$a;)V

    sput-object v0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->COLLATION_KEY_NaN:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    :cond_0
    iput-object p3, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    iput p2, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->c:I

    return-void
.end method

.method public static makeSortComparer(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 1

    const/16 v0, 0x201

    if-eq p1, v0, :cond_2

    const/16 v0, 0x211

    if-eq p1, v0, :cond_2

    const/16 v0, 0x215

    if-eq p1, v0, :cond_1

    const/16 v0, 0x277

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance v0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)V

    return-object v0

    :pswitch_0
    new-instance p0, Lnet/sf/saxon/expr/sort/CalendarValueComparer;

    invoke-direct {p0, p2}, Lnet/sf/saxon/expr/sort/CalendarValueComparer;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0

    :cond_0
    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->getInstance()Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_2
    invoke-static {}, Lnet/sf/saxon/expr/sort/DecimalSortComparer;->getDecimalSortComparerInstance()Lnet/sf/saxon/expr/sort/DecimalSortComparer;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, Lnet/sf/saxon/expr/sort/CodepointCollator;

    if-eqz p1, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x203
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x207
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/StringCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p2, v2, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object v0

    if-eqz v1, :cond_a

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot compare "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Further information: see http://saxonica.plan.io/issues/3450"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->compareNonComparables(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    return p0
.end method

.method public compareNonComparables(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 2

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Values are not comparable ("

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->c:I

    return p0
.end method

.method public getStringCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    iget p0, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->c:I

    invoke-direct {v0, v1, p0, p1}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public save()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtSC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->getCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/lib/StringCollator;->getCollationURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
