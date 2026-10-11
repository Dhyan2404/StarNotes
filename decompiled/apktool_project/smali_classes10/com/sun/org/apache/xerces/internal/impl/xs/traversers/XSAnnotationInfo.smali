.class final Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fAnnotation:Ljava/lang/String;

.field fCharOffset:I

.field fColumn:I

.field fLine:I

.field next:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    .line 4
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    .line 5
    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    .line 8
    instance-of p1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;

    if-eqz p1, :cond_0

    .line 9
    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;

    .line 10
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    .line 11
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    .line 12
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    .line 14
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    .line 15
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    :goto_0
    return-void
.end method
