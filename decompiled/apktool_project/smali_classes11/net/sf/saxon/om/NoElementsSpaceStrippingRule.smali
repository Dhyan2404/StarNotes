.class public Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SpaceStrippingRule;


# static fields
.field public static final a:Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    invoke-direct {v0}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->a:Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->a:Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    return-object v0
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    const-string p0, "strip.none"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
