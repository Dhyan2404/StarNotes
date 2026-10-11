.class public Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/CodepointCollator;

.field public static final b:Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->a:Lnet/sf/saxon/expr/sort/CodepointCollator;

    new-instance v0, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->b:Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->b:Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    return-object v0
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0

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
    check-cast p1, Lnet/sf/saxon/value/StringValue;

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    sget-object p0, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->a:Lnet/sf/saxon/expr/sort/CodepointCollator;

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/CodepointCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/StringValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->a:Lnet/sf/saxon/expr/sort/CodepointCollator;

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 0

    const-string p0, "CCC"

    return-object p0
.end method
