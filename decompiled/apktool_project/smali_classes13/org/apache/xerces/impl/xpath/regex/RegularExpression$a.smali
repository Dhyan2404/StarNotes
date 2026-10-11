.class public final Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;
.super Lorg/apache/xerces/impl/xpath/regex/RegularExpression$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$e;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    return-void
.end method


# virtual methods
.method public a(I)C
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public final b(ZIIII)Z
    .locals 1

    if-ltz p2, :cond_2

    sub-int v0, p3, p2

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->f(IIII)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->d(IIII)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(ZIILjava/lang/String;I)Z
    .locals 1

    if-ltz p2, :cond_2

    sub-int v0, p3, p2

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->g(IILjava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->e(IILjava/lang/String;I)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final d(IIII)Z
    .locals 2

    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p4, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p4, p3

    if-eq p1, p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    move p4, p2

    move p1, v0

    move p3, v1

    goto :goto_0
.end method

.method public final e(IILjava/lang/String;I)Z
    .locals 3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p4, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    add-int/lit8 v2, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 p4, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_1

    return p2

    :cond_1
    move v0, p4

    move p4, v1

    move p1, v2

    goto :goto_0
.end method

.method public final f(IIII)Z
    .locals 2

    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p4, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p4, p3

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p3

    if-eq p1, p3, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    move p4, p2

    move p1, v0

    move p3, v1

    goto :goto_0
.end method

.method public final g(IILjava/lang/String;I)Z
    .locals 3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p4, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    add-int/lit8 v2, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 p4, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq p1, v0, :cond_3

    return p2

    :cond_3
    :goto_1
    move v0, p4

    move p4, v1

    move p1, v2

    goto :goto_0
.end method

.method public final h([C)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->a:[C

    return-void
.end method
