.class public Lnet/sf/saxon/lib/StandardErrorReporter;
.super Lnet/sf/saxon/lib/StandardDiagnostics;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ErrorReporter;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lnet/sf/saxon/s9api/XmlProcessingError;

.field protected transient logger:Lnet/sf/saxon/lib/Logger;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->e:I

    const/16 v1, 0x19

    iput v1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->f:I

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->g:I

    const/16 v0, 0x3e8

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->h:I

    const/16 v0, 0xff

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->i:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->j:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->k:Ljava/util/Set;

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/io/StringWriter;)V
    .locals 0

    new-instance p0, Ljava/io/PrintWriter;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p1, Lorg/xml/sax/SAXParseException;

    return p0
.end method

.method public constructFirstLine(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/tree/AttributeLocation;

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->getLocationMessageText(Ljavax/xml/transform/SourceLocator;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    if-eqz v1, :cond_7

    check-cast v0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getLocalLineNumber()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getColumnNumber()I

    move-result v2

    const-string v3, ""

    const/16 v4, 0x20

    const-string v5, "on line "

    if-gtz v1, :cond_1

    move-object v6, v3

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "at "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz v1, :cond_3

    const-string v1, "char "

    goto :goto_1

    :cond_3
    const-string v1, "column "

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getNearbyText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/lib/StandardErrorReporter;->formatExtraContext(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/tree/AttributeLocation;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardDiagnostics;->getLocationMessageText(Ljavax/xml/transform/SourceLocator;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "of "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->getLocationMessage(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructMessage(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/lib/StandardErrorReporter;->constructFirstLine(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->constructSecondLine(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructSecondLine(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->getExpandedMessage(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->expandSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public error(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->g:I

    iget v1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->h:I

    if-le v0, v1, :cond_0

    const-string v0, "Too many errors reported"

    invoke-interface {p1, v0}, Lnet/sf/saxon/s9api/XmlProcessingError;->setTerminationMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    if-eq v0, v1, :cond_6

    sget-object v1, Lnet/sf/saxon/lib/StandardErrorReporter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "in pattern "

    goto :goto_1

    :cond_3
    const-string v0, "in schema "

    goto :goto_1

    :cond_4
    const-string v0, "in expression "

    goto :goto_1

    :cond_5
    const-string v0, "in query "

    goto :goto_1

    :cond_6
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isTypeError()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Type error "

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isStaticError()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Static error "

    goto :goto_2

    :cond_8
    const-string v1, "Error "

    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/lib/StandardErrorReporter;->constructMessage(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    instance-of v0, p1, Lnet/sf/saxon/trans/XmlProcessingException;

    if-eqz v0, :cond_9

    check-cast p1, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XmlProcessingException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getXPathContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of v0, p1, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    if-nez v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->outputStackTrace(Lnet/sf/saxon/lib/Logger;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_9
    return-void
.end method

.method public expandSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/Logger;->isUnicodeAware()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->i:I

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->expandSpecialCharacters(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatErrorCode(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;
    .locals 1

    iget-boolean p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->m:Z

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, " "

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public formatExtraContext(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const-class p0, Lnet/sf/saxon/functions/Error;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "signaled by call to error() "

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "evaluating ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "near"

    goto :goto_0

    :cond_2
    const-string p1, "in"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public formatNestedMessages(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->b(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/StandardErrorReporter;->a(Ljava/lang/Throwable;Ljava/io/StringWriter;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p2, ". Caused by "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedMessage(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->formatErrorCode(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/StandardErrorReporter;->formatNestedMessages(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationMessage(Lnet/sf/saxon/s9api/XmlProcessingError;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardDiagnostics;->getLocationMessageText(Ljavax/xml/transform/SourceLocator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogger()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    return-object p0
.end method

.method public getMaxOrdinaryCharacter()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->i:I

    return p0
.end method

.method public getMaximumNumberOfErrors()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->h:I

    return p0
.end method

.method public getMaximumNumberOfWarnings()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->f:I

    return p0
.end method

.method public getStackTraceDetail()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->j:I

    return p0
.end method

.method public isReportingWarnings()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->e:I

    invoke-virtual {p0}, Lnet/sf/saxon/lib/StandardErrorReporter;->getMaximumNumberOfWarnings()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public outputStackTrace(Lnet/sf/saxon/lib/Logger;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->j:I

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->logStackTrace(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Logger;I)V

    return-void
.end method

.method public report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->l:Lnet/sf/saxon/s9api/XmlProcessingError;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->l:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->warning(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorReporter;->error(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLogger(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public setMaxOrdinaryCharacter(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->i:I

    return-void
.end method

.method public setMaximumNumberOfErrors(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->h:I

    return-void
.end method

.method public setMaximumNumberOfWarnings(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->f:I

    return-void
.end method

.method public setOutputErrorCodes(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->m:Z

    return-void
.end method

.method public setStackTraceDetail(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->j:I

    return-void
.end method

.method public warning(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    :cond_0
    const-string v0, ""

    const-string v1, "Warning "

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/lib/StandardErrorReporter;->constructMessage(Lnet/sf/saxon/s9api/XmlProcessingError;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->e:I

    invoke-virtual {p0}, Lnet/sf/saxon/lib/StandardErrorReporter;->getMaximumNumberOfWarnings()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->logger:Lnet/sf/saxon/lib/Logger;

    const-string v1, "No more warnings will be displayed"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorReporter;->k:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
