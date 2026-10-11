.class public final Lnet/sf/saxon/expr/sort/GlobalOrderComparer;
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
.field public static final e:Lnet/sf/saxon/expr/sort/GlobalOrderComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->e:Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->e:Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->compare(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public compare(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I
    .locals 4

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide v0

    .line 3
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    .line 4
    invoke-interface {p1, p2}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0

    :cond_1
    sub-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method
