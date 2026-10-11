.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;


# static fields
.field public static final EMPTY_MAP:Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;


# instance fields
.field fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

.field fLength:I

.field fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field fNSNum:I

.field fName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field fNamespaces:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl$1;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl$1;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolHash;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    return-void
.end method

.method public constructor <init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 18
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 19
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 20
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    return-void

    .line 21
    :cond_0
    aget-object v1, p1, v1

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 24
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    .line 25
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 11
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 12
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    .line 14
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getLength()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->getLength()I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSObject;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fMaps:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    if-eqz p1, :cond_1

    aget-object p0, p1, v1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    return-object p0

    :cond_1
    :goto_1
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->fArray:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aget-object p1, p1, v0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method
