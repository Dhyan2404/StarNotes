.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayInsertBefore;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayInsertBefore"
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    const/4 p1, 0x1

    .line 3
    aget-object v0, p2, p1

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x2

    .line 5
    aget-object p1, p2, p1

    .line 6
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->insert(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Specified position is not in range"

    const-string p2, "FOAY0001"

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayInsertBefore;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method
