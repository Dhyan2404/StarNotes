.class public Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/rules/BuiltInRuleSet;


# static fields
.field public static final e:Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;

    invoke-direct {v0}, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;->e:Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;->e:Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;

    return-object v0
.end method


# virtual methods
.method public getActionForParentNodes(I)[Lnet/sf/saxon/trans/rules/BuiltInRules;
    .locals 0

    sget-object p0, Lnet/sf/saxon/trans/rules/BuiltInRules;->DEEP_COPY:Lnet/sf/saxon/trans/rules/BuiltInRules;

    filled-new-array {p0}, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "deep-copy"

    return-object p0
.end method

.method public process(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 p2, 0x0

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p3

    const/4 p5, 0x1

    if-eq p3, p5, :cond_5

    const/4 p5, 0x2

    if-eq p3, p5, :cond_4

    const/4 p5, 0x3

    if-eq p3, p5, :cond_3

    const/4 p1, 0x7

    if-eq p3, p1, :cond_2

    const/16 p1, 0x8

    if-eq p3, p1, :cond_1

    const/16 p1, 0x9

    if-eq p3, p1, :cond_5

    const/16 p1, 0xd

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p1, p0, p2}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p4, p0, p6, p2}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p4, p1, p0, p6, p2}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p4, p0, p6, p2}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_4
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p4

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_5
    invoke-virtual {p4}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x6

    invoke-static {p0, p4, p1, p6}, Lnet/sf/saxon/tree/util/Navigator;->copy(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/s9api/Location;)V

    return-void

    :cond_7
    invoke-virtual {p4, p1, p6, p2}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method
