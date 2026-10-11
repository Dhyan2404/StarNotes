.class public Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SpaceStrippingRule;


# static fields
.field public static final a:Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    invoke-direct {v0}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->a:Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->a:Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    return-object v0
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    const-string p0, "strip.all"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Stripper;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method
