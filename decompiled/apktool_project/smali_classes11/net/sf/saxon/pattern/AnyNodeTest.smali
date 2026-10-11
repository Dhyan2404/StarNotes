.class public final Lnet/sf/saxon/pattern/AnyNodeTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/QNameTest;


# static fields
.field public static final i:Lnet/sf/saxon/pattern/AnyNodeTest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/pattern/AnyNodeTest;

    invoke-direct {v0}, Lnet/sf/saxon/pattern/AnyNodeTest;-><init>()V

    sput-object v0, Lnet/sf/saxon/pattern/AnyNodeTest;->i:Lnet/sf/saxon/pattern/AnyNodeTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    return-void
.end method

.method public static synthetic c([BI)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/pattern/AnyNodeTest;->d([BI)Z

    move-result p0

    return p0
.end method

.method public static synthetic d([BI)Z
    .locals 0

    aget-byte p0, p0, p1

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;
    .locals 1

    sget-object v0, Lnet/sf/saxon/pattern/AnyNodeTest;->i:Lnet/sf/saxon/pattern/AnyNodeTest;

    return-object v0
.end method


# virtual methods
.method public exportQNameTest()Ljava/lang/String;
    .locals 0

    const-string p0, "*"

    return-object p0
.end method

.method public generateJavaScriptNameTest(I)Ljava/lang/String;
    .locals 0

    const-string p0, "true"

    return-object p0
.end method

.method public final getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/tb;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/tb;-><init>([B)V

    invoke-static {p1}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    .line 1
    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "node()"

    return-object p0
.end method
