.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/StringList;


# static fields
.field public static final EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/StringList;


# instance fields
.field private fArray:[Ljava/lang/String;

.field private fLength:I

.field private fVector:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl$1;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl$1;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    move p1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    if-ge p1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    return p0
.end method

.method public item(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
