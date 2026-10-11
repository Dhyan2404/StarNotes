.class final Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDFilter;
.implements Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;


# instance fields
.field private fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

.field private fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

.field private fUnparsedEntities:Ljava/util/HashMap;

.field private final fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDTDSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-object p0
.end method

.method public ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method
