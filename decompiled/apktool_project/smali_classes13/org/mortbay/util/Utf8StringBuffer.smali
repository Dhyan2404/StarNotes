.class public Lorg/mortbay/util/Utf8StringBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/StringBuffer;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 6

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    .line 2
    iget v2, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    if-lez v2, :cond_0

    .line 3
    iget-object p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    .line 5
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0x7f

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 7
    :cond_1
    iget v2, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    const/4 v3, 0x1

    const/16 v4, 0xc0

    if-nez v2, :cond_7

    and-int/lit16 v2, p1, 0xc0

    if-eq v2, v4, :cond_2

    .line 8
    iget-object p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    .line 10
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p1, 0xe0

    if-ne v0, v4, :cond_3

    .line 11
    iput v3, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    and-int/lit8 p1, p1, 0x1f

    .line 12
    iput p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    and-int/lit8 p1, p1, 0xf

    .line 14
    iput p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto :goto_0

    :cond_4
    and-int/lit16 v0, p1, 0xf8

    const/4 v1, 0x3

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_5

    .line 15
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    and-int/lit8 p1, p1, 0x7

    .line 16
    iput p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto :goto_0

    :cond_5
    and-int/lit16 v0, p1, 0xfc

    const/16 v2, 0xf8

    if-ne v0, v2, :cond_6

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    and-int/2addr p1, v1

    .line 18
    iput p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto :goto_0

    :cond_6
    and-int/lit16 v0, p1, 0xfe

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_9

    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    and-int/2addr p1, v3

    .line 20
    iput p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    goto :goto_0

    :cond_7
    and-int/lit16 v5, p1, 0xc0

    if-ne v5, v4, :cond_8

    .line 21
    iget-object p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    .line 23
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    .line 24
    iput-boolean v3, p0, Lorg/mortbay/util/Utf8StringBuffer;->d:Z

    goto :goto_0

    .line 25
    :cond_8
    iget v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    shl-int/lit8 v1, v1, 0x6

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    sub-int/2addr v2, v3

    .line 26
    iput v2, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    if-nez v2, :cond_9

    .line 27
    iget-object p0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    :goto_0
    return-void
.end method

.method public append([BII)V
    .locals 1

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->d:Z

    if-nez v0, :cond_1

    iget p0, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->b:I

    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->c:I

    iput-boolean v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/Utf8StringBuffer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
