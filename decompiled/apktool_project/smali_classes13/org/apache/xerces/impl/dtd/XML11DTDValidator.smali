.class public Lorg/apache/xerces/impl/dtd/XML11DTDValidator;
.super Lorg/apache/xerces/impl/dtd/XMLDTDValidator;
.source "SourceFile"


# static fields
.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v1, "XML11ID"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v1, "XML11IDREF"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v1, "XML11IDREFS"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v1, "XML11NMTOKEN"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    const-string v1, "XML11NMTOKENS"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lorg/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1

    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t()Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method
