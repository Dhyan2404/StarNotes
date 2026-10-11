.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItemList;


# instance fields
.field private fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;

.field private fLength:I

.field private fVector:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fLength:I

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fVector:Ljava/util/Vector;

    .line 5
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fLength:I

    return-void
.end method

.method public constructor <init>([Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;

    .line 8
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fLength:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fLength:I

    return p0
.end method

.method public item(I)Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
