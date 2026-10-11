.class final Lcom/sun/org/apache/xerces/internal/impl/dv/xs/HexBinaryDV$XHex;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/HexBinaryDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XHex"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;-><init>([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/HexBinaryDV$XHex;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/HexBinaryDV$XHex;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->data:[B

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->data:[B

    aget-byte v3, v3, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->data:[B

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/util/HexBin;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->canonical:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/util/ByteListImpl;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
