.class public Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementStack2"
.end annotation


# instance fields
.field protected fCount:I

.field protected fDepth:I

.field protected fLastDepth:I

.field protected fMark:I

.field protected fPosition:I

.field protected fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    return-void
.end method

.method public getNext()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    aget-object p0, v0, v1

    return-object p0
.end method

.method public matchElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    if-gt v1, v0, :cond_1

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;

    iput-boolean v2, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    add-int/lit8 p1, v1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;

    iput-boolean v3, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    :cond_1
    :goto_0
    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    return v2
.end method

.method public nextElement()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    iput-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    aget-object p0, v1, v0

    return-object p0
.end method

.method public popElement()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    return v0
.end method

.method public resize()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
