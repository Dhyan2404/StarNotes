.class public Lnet/sf/saxon/expr/sort/TextComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# instance fields
.field public final a:Lnet/sf/saxon/expr/sort/AtomicComparer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/StringValue;
    .locals 0

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/TextComparer;->a(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/TextComparer;->a(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/TextComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBaseComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->getCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    if-eq p1, v0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/sort/TextComparer;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/TextComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    :cond_0
    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEXT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/TextComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
