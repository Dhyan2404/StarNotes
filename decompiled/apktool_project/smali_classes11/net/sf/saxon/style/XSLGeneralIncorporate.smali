.class public abstract Lnet/sf/saxon/style/XSLGeneralIncorporate;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final synthetic w:Z


# instance fields
.field public u:Ljava/lang/String;

.field public v:Lnet/sf/saxon/tree/linked/DocumentImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Lnet/sf/saxon/style/StylesheetModule;Ljavax/xml/transform/Source;)Z
    .locals 2

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/DocumentKey;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/DocumentKey;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "A stylesheet cannot "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " itself"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of p2, p0, Lnet/sf/saxon/style/XSLInclude;

    if-eqz p2, :cond_0

    const-string p2, "XTSE0180"

    goto :goto_1

    :cond_0
    const-string p2, "XTSE0210"

    :goto_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetModule;->getImporter()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0

    return-void
.end method

.method public getIncludedStylesheet(Lnet/sf/saxon/style/StylesheetModule;I)Lnet/sf/saxon/style/StylesheetModule;
    .locals 7

    const-string v0, "XTSE0165"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->u:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetModule;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetDocument(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/style/XSLModuleRoot;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/XSLStylesheet;

    if-eqz v4, :cond_1

    new-instance v1, Lnet/sf/saxon/style/StylesheetModule;

    invoke-direct {v1, v4, p2}, Lnet/sf/saxon/style/StylesheetModule;-><init>(Lnet/sf/saxon/style/StyleElement;I)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/style/StylesheetModule;->setImporter(Lnet/sf/saxon/style/StylesheetModule;)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->Z(Lnet/sf/saxon/style/StylesheetModule;Ljavax/xml/transform/Source;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-object v2

    :cond_1
    iget-object v4, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->v:Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v4}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object v4

    instance-of v5, v4, Lnet/sf/saxon/style/LiteralResultElement;

    if-eqz v5, :cond_2

    check-cast v4, Lnet/sf/saxon/style/LiteralResultElement;

    invoke-virtual {v4, v6}, Lnet/sf/saxon/style/LiteralResultElement;->makeStylesheet(Z)Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object v4

    :cond_2
    instance-of v5, v4, Lnet/sf/saxon/style/XSLStylesheet;

    if-nez v5, :cond_4

    instance-of p1, p0, Lnet/sf/saxon/style/XSLImport;

    if-eqz p1, :cond_3

    const-string p1, "Imported"

    goto :goto_0

    :cond_3
    const-string p1, "Included"

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " document "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->u:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a stylesheet"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4
    check-cast v4, Lnet/sf/saxon/style/XSLStylesheet;

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->putStylesheetDocument(Lnet/sf/saxon/om/DocumentKey;Lnet/sf/saxon/style/XSLStylesheet;)V

    new-instance v1, Lnet/sf/saxon/style/StylesheetModule;

    invoke-direct {v1, v4, p2}, Lnet/sf/saxon/style/StylesheetModule;-><init>(Lnet/sf/saxon/style/StyleElement;I)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/style/StylesheetModule;->setImporter(Lnet/sf/saxon/style/StylesheetModule;)V

    new-instance p2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-direct {p2, v1, v4}, Lnet/sf/saxon/style/ComponentDeclaration;-><init>(Lnet/sf/saxon/style/StylesheetModule;Lnet/sf/saxon/style/StyleElement;)V

    invoke-virtual {v4, p2}, Lnet/sf/saxon/style/XSLStylesheet;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    iget-object p2, v4, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    if-eqz p2, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v5, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne v3, v5, :cond_5

    invoke-virtual {v4, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_1

    :cond_5
    iget-object v3, v4, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v5, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_UNLESS_FORWARDS_COMPATIBLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne v3, v5, :cond_6

    invoke-virtual {v4, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_6
    :goto_1
    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetModule;->spliceIncludes()V

    invoke-virtual {v4}, Lnet/sf/saxon/style/XSLModuleRoot;->getInputTypeAnnotationsAttribute()I

    move-result p2

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetModule;->getInputTypeAnnotations()I

    move-result v3

    or-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/StylesheetModule;->setInputTypeAnnotations(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-object v2
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isImport()Z
.end method

.method public prepareAttributes()V
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "href"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setTargetDocument(Lnet/sf/saxon/tree/linked/DocumentImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLGeneralIncorporate;->v:Lnet/sf/saxon/tree/linked/DocumentImpl;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->validateInstruction()V

    return-void
.end method

.method public validateInstruction()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->isImport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XTSE0190"

    goto :goto_0

    :cond_0
    const-string v0, "XTSE0170"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    return-void
.end method
