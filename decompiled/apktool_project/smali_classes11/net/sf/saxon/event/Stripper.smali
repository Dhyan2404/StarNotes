.class public Lnet/sf/saxon/event/Stripper;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/Stripper$StripRuleTarget;
    }
.end annotation


# static fields
.field public static final ALWAYS_PRESERVE:I = 0x1

.field public static final ALWAYS_STRIP:I = 0x2

.field public static final ASSERTIONS_EXIST:I = 0x10

.field public static final PRESERVE:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

.field public static final PRESERVE_PARENT:I = 0x4

.field public static final SIMPLE_CONTENT:I = 0x8

.field public static final STRIP:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

.field public static final STRIP_DEFAULT:I

.field public static final synthetic g:Z


# instance fields
.field public e:[I

.field public f:I

.field protected rule:Lnet/sf/saxon/om/SpaceStrippingRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Stripper$a;

    invoke-direct {v0}, Lnet/sf/saxon/event/Stripper$a;-><init>()V

    sput-object v0, Lnet/sf/saxon/event/Stripper;->STRIP:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    new-instance v0, Lnet/sf/saxon/event/Stripper$b;

    invoke-direct {v0}, Lnet/sf/saxon/event/Stripper$b;-><init>()V

    sput-object v0, Lnet/sf/saxon/event/Stripper;->PRESERVE:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/16 p2, 0x64

    new-array p2, p2, [I

    iput-object p2, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    const/4 p2, 0x0

    iput p2, p0, Lnet/sf/saxon/event/Stripper;->f:I

    iput-object p1, p0, Lnet/sf/saxon/event/Stripper;->rule:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-void
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/Stripper;->rule:Lnet/sf/saxon/om/SpaceStrippingRule;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/SpaceStrippingRule;->isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I

    move-result p0

    return p0
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    iget v1, p0, Lnet/sf/saxon/event/Stripper;->f:I

    aget v0, v0, v1

    and-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget v0, p0, Lnet/sf/saxon/event/Stripper;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/Stripper;->f:I

    return-void
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/event/Stripper;->f:I

    iget-object v1, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->open()V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p4, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    iget p5, p0, Lnet/sf/saxon/event/Stripper;->f:I

    aget p4, p4, p5

    and-int/lit8 p4, p4, 0x14

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/Stripper;->c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I

    move-result p1

    const/4 p5, 0x2

    const/4 p6, 0x1

    if-ne p1, p6, :cond_0

    or-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, p5, :cond_1

    or-int/lit8 p4, p4, 0x2

    :cond_1
    :goto_0
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p1

    if-eq p2, p1, :cond_4

    if-nez p4, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, p2

    check-cast p1, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p1}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    or-int/lit8 p1, p4, 0x8

    move p4, p1

    :cond_3
    instance-of p1, p2, Lnet/sf/saxon/type/ComplexType;

    if-eqz p1, :cond_4

    check-cast p2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->hasAssertions()Z

    move-result p1

    if-eqz p1, :cond_4

    or-int/lit8 p4, p4, 0x10

    :cond_4
    iget p1, p0, Lnet/sf/saxon/event/Stripper;->f:I

    add-int/2addr p1, p6

    iput p1, p0, Lnet/sf/saxon/event/Stripper;->f:I

    iget-object p2, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    array-length p6, p2

    if-lt p1, p6, :cond_5

    mul-int/2addr p1, p5

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    iget p2, p0, Lnet/sf/saxon/event/Stripper;->f:I

    aput p4, p1, p2

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    const-string p2, "space"

    invoke-interface {p3, p1, p2}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "preserve"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    iget p0, p0, Lnet/sf/saxon/event/Stripper;->f:I

    aget p2, p1, p0

    or-int/lit8 p2, p2, 0x4

    aput p2, p1, p0

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lnet/sf/saxon/event/Stripper;->e:[I

    iget p0, p0, Lnet/sf/saxon/event/Stripper;->f:I

    aget p2, p1, p0

    and-int/lit8 p2, p2, -0x5

    aput p2, p1, p0

    :cond_7
    :goto_1
    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
