.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayHead;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayHead"
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p1, p2, p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Argument to array:head is an empty array"

    const-string p2, "FOAY0001"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
