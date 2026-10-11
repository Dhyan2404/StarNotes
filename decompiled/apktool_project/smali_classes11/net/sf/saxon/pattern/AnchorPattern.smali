.class public Lnet/sf/saxon/pattern/AnchorPattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# static fields
.field public static final q:Lnet/sf/saxon/pattern/AnchorPattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/pattern/AnchorPattern;

    invoke-direct {v0}, Lnet/sf/saxon/pattern/AnchorPattern;-><init>()V

    sput-object v0, Lnet/sf/saxon/pattern/AnchorPattern;->q:Lnet/sf/saxon/pattern/AnchorPattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/pattern/AnchorPattern;
    .locals 1

    sget-object v0, Lnet/sf/saxon/pattern/AnchorPattern;->q:Lnet/sf/saxon/pattern/AnchorPattern;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/AnchorPattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    .line 1
    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "p.anchor"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->PARENT_NODE_KINDS:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 0

    const-string p0, "."

    return-object p0
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/AnchorPattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    return-object p0
.end method
