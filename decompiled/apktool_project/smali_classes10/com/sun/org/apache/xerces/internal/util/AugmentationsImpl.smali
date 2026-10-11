.class public Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/Augmentations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$LargeContainer;,
        Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;,
        Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;
    }
.end annotation


# instance fields
.field private fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;-><init>(Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->getItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->isFull()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->expand()Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    :cond_0
    return-object p1
.end method

.method public removeAllItems()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->clear()V

    return-void
.end method

.method public removeItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->removeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
