.class public Lorg/apache/xerces/xni/XMLString;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ch:[C

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLString;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    return-void
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lt v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals([CII)Z
    .locals 4

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-eq v1, p3, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setValues(Lorg/apache/xerces/xni/XMLString;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    return-void
.end method

.method public setValues([CII)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iput p2, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    iput p3, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget p0, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    invoke-direct {v1, v2, p0, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method
