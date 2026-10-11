.class Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;


# instance fields
.field private fIsFragmentResolved:Z

.field fMatchingChildCount:I

.field private fShortHandPointer:Ljava/lang/String;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method private hasMatchingIdentifier(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p4, p1

    :goto_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ge p4, v0, :cond_3

    invoke-virtual {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->getSchemaDeterminedID(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->getChildrenSchemaDeterminedID(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->getDTDDeterminedID(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return p1
.end method


# virtual methods
.method public getChildrenSchemaDeterminedID(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTDDeterminedID(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemaDeterminedID(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    return-object p0
.end method

.method public isChildFragmentResolved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/2addr p0, v0

    return p0
.end method

.method public isFragmentResolved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return p0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    :cond_0
    if-nez p4, :cond_2

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    :cond_1
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fMatchingChildCount:I

    :cond_4
    :goto_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return p0
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    return-void
.end method
