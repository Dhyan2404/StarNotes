.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFoldLeft;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayFoldLeft"
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
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object v0, p2, p0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v1

    const/4 v2, 0x1

    aget-object v3, p2, v2

    const/4 v4, 0x2

    aget-object p2, p2, v4

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Function;

    move v5, p0

    :goto_0
    if-ge v5, v1, :cond_0

    new-array v6, v4, [Lnet/sf/saxon/om/Sequence;

    aput-object v3, v6, p0

    invoke-virtual {v0, v5}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p2, p1, v6}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
