.class public Lcom/sun/org/apache/xerces/internal/impl/xs/opti/AttrImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field element:Lorg/w3c/dom/Element;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->nodeType:S

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/AttrImpl;->element:Lorg/w3c/dom/Element;

    .line 5
    iput-object p6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/AttrImpl;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->rawname:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/AttrImpl;->element:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/AttrImpl;->value:Ljava/lang/String;

    return-object p0
.end method

.method public isId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/AttrImpl;->value:Ljava/lang/String;

    return-void
.end method
