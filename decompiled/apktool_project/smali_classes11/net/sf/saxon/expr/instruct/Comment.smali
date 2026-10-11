.class public final Lnet/sf/saxon/expr/instruct/Comment;
.super Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;
.source "SourceFile"


# static fields
.field public static final n:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->TWO_HYPHENS:[B

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/Comment;->n:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;-><init>()V

    return-void
.end method

.method public static checkContentXQuery(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/expr/instruct/Comment;->d(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "XQDY0072"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static checkContentXSLT(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    invoke-static {p0}, Lnet/sf/saxon/expr/instruct/Comment;->d(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    sget-object v0, Lnet/sf/saxon/expr/instruct/Comment;->n:Lnet/sf/saxon/str/UnicodeString;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    const-wide/16 v5, 0x1

    if-ltz v0, :cond_0

    add-long/2addr v3, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static d(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lnet/sf/saxon/expr/instruct/Comment;->n:Lnet/sf/saxon/str/UnicodeString;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const-string p0, "Invalid characters (--) in comment"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    const-string p0, "Comment cannot end in \'-\'"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/Comment;->checkContentXSLT(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/Comment;->checkContentXQuery(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/instruct/Comment;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/Comment;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "comment"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->isLocal()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x90

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public localTypeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/instruct/Comment;->checkContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {p2, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method

.method public processValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/Comment;->checkContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
