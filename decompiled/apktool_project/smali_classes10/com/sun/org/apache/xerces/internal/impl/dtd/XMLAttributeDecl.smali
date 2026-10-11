.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field public optional:Z

.field public final simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->optional:Z

    return-void
.end method

.method public setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->setValues(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;)V

    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->optional:Z

    return-void
.end method
