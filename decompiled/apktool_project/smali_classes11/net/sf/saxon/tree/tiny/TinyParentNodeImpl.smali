.class public abstract Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;
.super Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;-><init>()V

    return-void
.end method

.method public static getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v3, p1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    const/4 v4, 0x3

    if-ge v2, p1, :cond_3

    aget-short v6, v0, v2

    if-gt v6, v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_1
    aget-byte v3, v3, v2

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    if-ge v3, p1, :cond_2

    aget-short p1, v0, v3

    if-gt p1, v1, :cond_3

    :cond_2
    invoke-static {p0, v2}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v0, v0, v2

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v0, v0, v2

    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    if-nez p1, :cond_5

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :cond_5
    invoke-static {p0, v2, p1}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;->appendStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;ILnet/sf/saxon/str/UnicodeBuilder;)V

    goto :goto_2

    :cond_6
    :goto_1
    if-nez p1, :cond_7

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :cond_7
    invoke-static {p0, v2}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/ZenoString;->of(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-static {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    add-int/lit8 v1, v0, 0x1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v1, v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    add-int/lit8 v1, v0, 0x1

    aget-short v1, p0, v1

    aget-short p0, p0, v0

    if-le v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
