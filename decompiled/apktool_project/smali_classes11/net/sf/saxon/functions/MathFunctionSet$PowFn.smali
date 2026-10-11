.class public Lnet/sf/saxon/functions/MathFunctionSet$PowFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/MathFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowFn"
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
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;
    .locals 6
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

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 5
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double p2, v0, v4

    if-nez p2, :cond_2

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, v2, v3}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p2, Lnet/sf/saxon/value/DoubleValue;

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/MathFunctionSet$PowFn;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
