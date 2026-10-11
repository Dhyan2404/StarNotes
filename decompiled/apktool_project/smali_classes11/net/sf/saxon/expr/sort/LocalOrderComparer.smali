.class public final Lnet/sf/saxon/expr/sort/LocalOrderComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/sf/saxon/om/NodeInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lnet/sf/saxon/expr/sort/LocalOrderComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->e:Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->e:Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->compare(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public compare(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method
