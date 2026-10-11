.class Lorg/apache/xerces/dom/NodeListCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e043ddb01f12e5aL


# instance fields
.field fChild:Lorg/apache/xerces/dom/ChildNode;

.field fChildIndex:I

.field fLength:I

.field fOwner:Lorg/apache/xerces/dom/ParentNode;

.field next:Lorg/apache/xerces/dom/NodeListCache;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/ParentNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    iput v0, p0, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeListCache;->fOwner:Lorg/apache/xerces/dom/ParentNode;

    return-void
.end method
