.class public Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;
.super Ljavax/imageio/ImageReadParam;
.source "SourceFile"


# instance fields
.field public a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

.field public b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field public c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/imageio/ImageReadParam;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void
.end method


# virtual methods
.method public areTablesSet()Z
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getACHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDCHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljavax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setDecodeTables([Ljavax/imageio/plugins/jpeg/JPEGQTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    array-length v0, p2

    if-gt v0, v1, :cond_0

    array-length v0, p3

    if-gt v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [Ljavax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {p2}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {p3}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid JPEG table arrays"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unsetDecodeTables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void
.end method
