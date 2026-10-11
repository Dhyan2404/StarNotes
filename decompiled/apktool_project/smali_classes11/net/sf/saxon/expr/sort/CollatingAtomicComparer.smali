.class public Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# instance fields
.field public final a:Lnet/sf/saxon/lib/StringCollator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/StringCollator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    :goto_0
    return-void
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/StringCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    check-cast p1, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;

    iget-object p1, p1, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

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

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;->getCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/lib/StringCollator;->getCollationURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
