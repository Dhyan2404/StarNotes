.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;
.super Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLSchemaDescription;


# static fields
.field public static final CONTEXT_ATTRIBUTE:S = 0x6s

.field public static final CONTEXT_ELEMENT:S = 0x5s

.field public static final CONTEXT_IMPORT:S = 0x2s

.field public static final CONTEXT_INCLUDE:S = 0x0s

.field public static final CONTEXT_INITIALIZE:S = -0x1s

.field public static final CONTEXT_INSTANCE:S = 0x4s

.field public static final CONTEXT_PREPARSE:S = 0x3s

.field public static final CONTEXT_REDEFINE:S = 0x1s

.field public static final CONTEXT_XSITYPE:S = 0x7s


# instance fields
.field protected fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

.field protected fContextType:S

.field protected fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fLocationHints:[Ljava/lang/String;

.field protected fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLSchemaDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLSchemaDescription;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public fromInstance()Z
    .locals 1

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAttributes()Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-object p0
.end method

.method public getContextType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    return p0
.end method

.method public getEnclosingElementName()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object p0
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0
.end method

.method public getLocationHints()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggeringComponent()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public makeClone()Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    iget-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->clear()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-void
.end method

.method public setAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-void
.end method

.method public setContextType(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    return-void
.end method

.method public setEnclosingElementName(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-void
.end method

.method public setLocationHints([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setTargetNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-void
.end method

.method public setTriggeringComponent(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-void
.end method
