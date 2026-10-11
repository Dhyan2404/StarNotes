.class Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmallContainerKeyEnumeration"
.end annotation


# instance fields
.field enumArray:[Ljava/lang/Object;

.field next:I

.field final synthetic this$1:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->this$1:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    :goto_0
    iget v1, p1, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->enumArray:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;->next:I

    return-object v2

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
