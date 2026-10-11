.class public Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/events/MutationEvent;


# static fields
.field public static final DOM_ATTR_MODIFIED:Ljava/lang/String; = "DOMAttrModified"

.field public static final DOM_CHARACTER_DATA_MODIFIED:Ljava/lang/String; = "DOMCharacterDataModified"

.field public static final DOM_NODE_INSERTED:Ljava/lang/String; = "DOMNodeInserted"

.field public static final DOM_NODE_INSERTED_INTO_DOCUMENT:Ljava/lang/String; = "DOMNodeInsertedIntoDocument"

.field public static final DOM_NODE_REMOVED:Ljava/lang/String; = "DOMNodeRemoved"

.field public static final DOM_NODE_REMOVED_FROM_DOCUMENT:Ljava/lang/String; = "DOMNodeRemovedFromDocument"

.field public static final DOM_SUBTREE_MODIFIED:Ljava/lang/String; = "DOMSubtreeModified"


# instance fields
.field public attrChange:S

.field attrName:Ljava/lang/String;

.field newValue:Ljava/lang/String;

.field prevValue:Ljava/lang/String;

.field relatedNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->relatedNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttrChange()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->attrChange:S

    return p0
.end method

.method public getAttrName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    return-object p0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    return-object p0
.end method

.method public getPrevValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    return-object p0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->relatedNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->relatedNode:Lorg/w3c/dom/Node;

    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    iput-object p6, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    iput-object p7, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    iput-short p8, p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->attrChange:S

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    return-void
.end method
