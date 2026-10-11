.class public Lnet/sf/saxon/functions/DistinctValues;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;
    }
.end annotation


# static fields
.field public static final NaN_MATCH_KEY:Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/value/QNameValue;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "+NaN+"

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/functions/DistinctValues;->NaN_MATCH_KEY:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/om/LazySequence;

    new-instance v1, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-direct {v1, p2, p0, p1}, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "DistinctValues"

    return-object p0
.end method
