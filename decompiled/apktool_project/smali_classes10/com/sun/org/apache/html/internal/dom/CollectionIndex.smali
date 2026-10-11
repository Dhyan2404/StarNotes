.class Lcom/sun/org/apache/html/internal/dom/CollectionIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/html/internal/dom/CollectionIndex;->_index:I

    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/html/internal/dom/CollectionIndex;->_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/html/internal/dom/CollectionIndex;->_index:I

    return-void
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/html/internal/dom/CollectionIndex;->_index:I

    return p0
.end method

.method public isZero()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/html/internal/dom/CollectionIndex;->_index:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
