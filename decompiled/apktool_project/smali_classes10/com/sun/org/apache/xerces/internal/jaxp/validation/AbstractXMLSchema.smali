.class abstract Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;
.super Ljavax/xml/validation/Schema;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/validation/Schema;-><init>()V

    return-void
.end method


# virtual methods
.method public final newValidator()Ljavax/xml/validation/Validator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method

.method public final newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method
