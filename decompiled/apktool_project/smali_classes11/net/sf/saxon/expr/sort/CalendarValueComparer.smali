.class public Lnet/sf/saxon/expr/sort/CalendarValueComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# instance fields
.field public final transient a:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/CalendarValueComparer;->a:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0
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
    check-cast p1, Lnet/sf/saxon/value/CalendarValue;

    check-cast p2, Lnet/sf/saxon/value/CalendarValue;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CalendarValueComparer;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/value/CalendarValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

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

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/CalendarValueComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/sort/CalendarValueComparer;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/CalendarValueComparer;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 0

    const-string p0, "CalVC"

    return-object p0
.end method
