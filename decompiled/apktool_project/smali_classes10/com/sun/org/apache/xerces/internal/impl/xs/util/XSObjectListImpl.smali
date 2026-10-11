.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;


# static fields
.field private static final DEFAULT_SIZE:I = 0x4

.field public static final EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;


# instance fields
.field private fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

.field private fLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl$1;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl$1;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    return-void
.end method

.method public constructor <init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    .line 6
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    return-void
.end method


# virtual methods
.method public add(ILcom/sun/org/apache/xerces/internal/xs/XSObject;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aput-object p2, p0, p1

    return-void
.end method

.method public add(Lcom/sun/org/apache/xerces/internal/xs/XSObject;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x4

    .line 2
    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    return-void
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    return p0
.end method

.method public item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
