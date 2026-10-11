.class public Lorg/apache/xerces/dom/ProcessingInstructionImpl;
.super Lorg/apache/xerces/dom/CharacterDataImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# static fields
.field static final serialVersionUID:J = 0x68d6bec406f214c6L


# instance fields
.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/apache/xerces/dom/CharacterDataImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object p0
.end method
