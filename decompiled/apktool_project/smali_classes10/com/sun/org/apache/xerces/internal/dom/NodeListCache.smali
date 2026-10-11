.class Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2d37393237353239L


# instance fields
.field fChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

.field fChildIndex:I

.field fLength:I

.field fOwner:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

.field next:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fLength:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fChildIndex:I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fOwner:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    return-void
.end method
