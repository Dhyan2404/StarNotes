.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySubarray;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArraySubarray"
.end annotation


# static fields
.field public static final synthetic h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p1, p2, p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    const/4 v0, 0x1

    .line 3
    aget-object v1, p2, v0

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result v1

    .line 4
    array-length v2, p2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    .line 5
    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    .line 6
    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v2

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    invoke-static {p2, p0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result p0

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Specified length of subarray is less than zero"

    const-string p2, "FOAY0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/2addr p0, v0

    :goto_0
    const-string p2, "FOAY0001"

    if-lt v1, v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v2

    add-int/2addr v2, v0

    if-gt v1, v2, :cond_4

    add-int/2addr p0, v1

    .line 11
    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v2

    add-int/2addr v2, v0

    if-gt p0, v2, :cond_3

    sub-int/2addr v1, v0

    sub-int/2addr p0, v0

    .line 12
    invoke-virtual {p1, v1, p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->subArray(II)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Specified length of subarray is too great for start position given"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Start position is out of bounds"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Start position is less than one"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySubarray;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method
