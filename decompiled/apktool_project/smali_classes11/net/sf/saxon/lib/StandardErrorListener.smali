.class public Lnet/sf/saxon/lib/StandardErrorListener;
.super Lnet/sf/saxon/lib/StandardDiagnostics;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/ErrorListener;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected transient logger:Lnet/sf/saxon/lib/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->e:I

    const/16 v0, 0x19

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->f:I

    const/16 v0, 0xff

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->h:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->i:Ljava/util/Set;

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    return-void
.end method


# virtual methods
.method public constructFirstLine(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    instance-of v0, p1, Lnet/sf/saxon/trans/XPathException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getFailingExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/tree/AttributeLocation;

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/StandardDiagnostics;->getLocationMessageText(Ljavax/xml/transform/SourceLocator;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    const-string v2, ") "

    const-string v3, ""

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getLocalLineNumber()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getColumnNumber()I

    move-result v4

    const/16 v5, 0x20

    const-string v6, "on line "

    if-gtz v1, :cond_2

    move-object v7, v3

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-gez v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz v1, :cond_4

    const-string v1, "char "

    goto :goto_2

    :cond_4
    const-string v1, "column "

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getNearbyText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->formatExtraContext(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Lnet/sf/saxon/tree/AttributeLocation;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/StandardDiagnostics;->getLocationMessageText(Ljavax/xml/transform/SourceLocator;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "of "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of p2, p2, Lnet/sf/saxon/type/ValidationException;

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Validation error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->getLocationMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "evaluating ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->getLocationMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructMessage(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/lib/StandardErrorListener;->constructFirstLine(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n  "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/StandardErrorListener;->constructSecondLine(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructSecondLine(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;)Ljava/lang/String;
    .locals 2

    instance-of v0, p2, Lnet/sf/saxon/type/ValidationException;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->getExpandedMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/type/ValidationException;

    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationFailure;->getConstraintReferenceMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/StandardDiagnostics;->formatListOfOffendingNodes(Lnet/sf/saxon/type/ValidationFailure;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->getExpandedMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->expandSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 9

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/type/ValidationException;

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->getExpandedMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/type/ValidationException;

    invoke-virtual {v3}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/type/ValidationFailure;->getConstraintReferenceMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/type/ValidationFailure;->getValidationLocationText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/type/ValidationFailure;->getContextLocationText()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Validation error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->getLocationMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n  "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/lib/StandardDiagnostics;->wordWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/lib/StandardDiagnostics;->formatListOfOffendingNodes(Lnet/sf/saxon/type/ValidationFailure;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string v2, "Error "

    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1, v2}, Lnet/sf/saxon/lib/StandardErrorListener;->constructMessage(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    if-eqz v0, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    const-string p1, "Processing terminated because error recovery is disabled"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public expandSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/Logger;->isUnicodeAware()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->g:I

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->expandSpecialCharacters(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 3

    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    if-nez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getHostLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "in expression "

    goto :goto_0

    :cond_2
    const-string v2, "XQuery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "in query "

    goto :goto_0

    :cond_3
    const-string v2, "XSLT Pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "in pattern "

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isSyntaxError()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Syntax error "

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isStaticError()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Static error "

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Type error "

    goto :goto_1

    :cond_7
    const-string v2, "Error "

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/sf/saxon/lib/StandardErrorListener;->constructMessage(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    instance-of v0, p1, Lnet/sf/saxon/trans/XPathException;

    if-eqz v0, :cond_8

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/trans/XPathException;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    :cond_8
    if-eqz v0, :cond_9

    check-cast p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getXPathContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of v0, p1, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    if-nez v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->outputStackTrace(Lnet/sf/saxon/lib/Logger;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_9
    return-void
.end method

.method public formatErrorCode(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;
    .locals 1

    instance-of p0, p1, Lnet/sf/saxon/trans/XPathException;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/trans/XPathException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_3

    const-string p1, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public formatErrorObject(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

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

.method public formatNestedMessages(Ljavax/xml/transform/TransformerException;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :goto_0
    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    const-string v1, "net.sf.saxon.trans.XPathException: "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ": "

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v1, "TRaX Transform Exception"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p2, p0

    :cond_4
    instance-of p0, p1, Ljavax/xml/transform/TransformerException;

    if-eqz p0, :cond_5

    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    :goto_1
    move-object p1, p0

    goto :goto_0

    :cond_5
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-eqz p0, :cond_6

    check-cast p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p0

    goto :goto_1

    :cond_6
    :goto_2
    return-object p2
.end method

.method public getExpandedMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardErrorListener;->formatErrorCode(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/trans/XPathException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorObject()Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/lib/StandardErrorListener;->formatErrorObject(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/StandardErrorListener;->formatNestedMessages(Ljavax/xml/transform/TransformerException;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationMessage(Ljavax/xml/transform/TransformerException;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->getLocationMessageText(Ljavax/xml/transform/SourceLocator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogger()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    return-object p0
.end method

.method public getMaxOrdinaryCharacter(I)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->g:I

    return p0
.end method

.method public getMaximumNumberOfWarnings()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->f:I

    return p0
.end method

.method public getStackTraceDetail()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->h:I

    return p0
.end method

.method public isReportingWarnings()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeAnother(Lnet/sf/saxon/s9api/HostLanguage;)Lnet/sf/saxon/lib/StandardErrorListener;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/lib/StandardErrorListener;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lnet/sf/saxon/lib/StandardErrorListener;

    invoke-direct {p1}, Lnet/sf/saxon/lib/StandardErrorListener;-><init>()V

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    iput-object p0, p1, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    return-object p1
.end method

.method public outputStackTrace(Lnet/sf/saxon/lib/Logger;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->h:I

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->logStackTrace(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Logger;I)V

    return-void
.end method

.method public setLogger(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public setMaxOrdinaryCharacter(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->g:I

    return-void
.end method

.method public setMaximumNumberOfWarnings(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->f:I

    return-void
.end method

.method public setStackTraceDetail(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->h:I

    return-void
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Warning "

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/sf/saxon/lib/StandardErrorListener;->constructMessage(Ljavax/xml/transform/TransformerException;Lnet/sf/saxon/trans/XPathException;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of p1, p1, Lnet/sf/saxon/type/ValidationException;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    iget p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->e:I

    invoke-virtual {p0}, Lnet/sf/saxon/lib/StandardErrorListener;->getMaximumNumberOfWarnings()I

    move-result v1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->logger:Lnet/sf/saxon/lib/Logger;

    const-string v1, "No more warnings will be displayed"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/lib/StandardErrorListener;->e:I

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorListener;->i:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
