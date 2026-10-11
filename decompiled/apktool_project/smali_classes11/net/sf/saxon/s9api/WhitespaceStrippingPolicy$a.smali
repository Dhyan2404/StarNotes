.class public final Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SpaceStrippingRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->makeCustomPolicy(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy$a;->a:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy$a;->a:Ljava/util/function/Predicate;

    new-instance p2, Lnet/sf/saxon/s9api/QName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Stripper;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method
