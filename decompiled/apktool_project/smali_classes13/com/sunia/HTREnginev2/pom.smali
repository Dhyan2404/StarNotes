.class public final Lcom/sunia/HTREnginev2/pom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xpointer/XPointerPart;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lorg/apache/xerces/util/SymbolTable;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    iput v0, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    iput v0, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pom;->c:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/AttributePSVI;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p1}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/xerces/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    move p4, p1

    :goto_0
    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-lt p4, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/sunia/HTREnginev2/pom;->c(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/sunia/HTREnginev2/pom;->a(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2, p4}, Lcom/sunia/HTREnginev2/pom;->b(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pom;->a:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return p1
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pom;->a:Ljava/lang/String;

    return-object p0
.end method

.method public isChildFragmentResolved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFragmentResolved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    return p0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pom;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    return-void
.end method

.method public resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    :cond_0
    if-nez p4, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/pom;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    :cond_1
    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/pom;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/pom;->d:I

    :cond_4
    :goto_0
    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/pom;->b:Z

    return p0
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pom;->a:Ljava/lang/String;

    return-void
.end method
