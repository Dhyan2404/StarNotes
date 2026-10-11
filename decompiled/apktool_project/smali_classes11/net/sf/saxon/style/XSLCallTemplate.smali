.class public Lnet/sf/saxon/style/XSLCallTemplate;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final x:Lnet/sf/saxon/om/StructuredQName;


# instance fields
.field public u:Lnet/sf/saxon/om/StructuredQName;

.field public v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "error-template"

    const-string v3, "saxon"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/style/XSLCallTemplate;->x:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->w:Z

    return-void
.end method


# virtual methods
.method public final Z()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getLocalParamDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    iget-boolean v5, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isRequired:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-nez v5, :cond_0

    new-instance v5, Lcom/sunia/HTREnginev2/w2n;

    const-class v6, Lnet/sf/saxon/style/XSLWithParam;

    invoke-direct {v5, v6}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v5}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/NodeInfo;

    check-cast v6, Lnet/sf/saxon/style/XSLWithParam;

    invoke-virtual {v6}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    iget-object v7, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value supplied for required parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v2, v4}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XTSE0690"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    instance-of v5, v2, Lnet/sf/saxon/style/XSLWithParam;

    if-eqz v5, :cond_4

    check-cast v2, Lnet/sf/saxon/style/XSLWithParam;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLWithParam;->isTunnelParam()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    iget-object v7, v6, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v6, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-nez v7, :cond_5

    iget-object v5, v6, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v5}, Lnet/sf/saxon/style/XSLWithParam;->checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v4

    :goto_3
    if-nez v5, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not declared in the called template"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "XTSE0680"

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final a0(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getNamedTemplate(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string v1, "original"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->getXslOriginal(I)Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find a template named "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XTSE0650"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/CallTemplate;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    iget-boolean v3, p0, Lnet/sf/saxon/style/XSLCallTemplate;->w:Z

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isWithinDeclaredStreamableConstruct()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/sf/saxon/expr/instruct/CallTemplate;-><init>(Lnet/sf/saxon/expr/instruct/NamedTemplate;Lnet/sf/saxon/om/StructuredQName;ZZ)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, p2, v2}, Lnet/sf/saxon/style/StyleElement;->getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->setActualParameters([Lnet/sf/saxon/expr/instruct/WithParam;[Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object v0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public markTailCalls()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->w:Z

    return v0
.end method

.method public postValidate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLCallTemplate;->Z()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Target template not known"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public prepareAttributes()V
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "name"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    sget-object v0, Lnet/sf/saxon/style/XSLCallTemplate;->x:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, v1, v4}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/XSLWithParam;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/style/XSLFallback;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->mayContainFallback()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "XTSE0010"

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No character data is allowed within xsl:call-template"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed as a child of xsl:call-template"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    if-nez p1, :cond_5

    sget-object p1, Lnet/sf/saxon/style/XSLCallTemplate;->x:Lnet/sf/saxon/om/StructuredQName;

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    sget-object v0, Lnet/sf/saxon/style/XSLCallTemplate;->x:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->u:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLCallTemplate;->a0(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCallTemplate;->v:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    :cond_6
    return-void
.end method
