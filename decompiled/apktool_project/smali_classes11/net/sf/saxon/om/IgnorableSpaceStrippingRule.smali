.class public Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SpaceStrippingRule;


# static fields
.field public static final a:Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    invoke-direct {v0}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->a:Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->a:Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    return-object v0
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    const-string p0, "strip.ignorable"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    if-eq p2, p0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isMixedContent()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method
