.class Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingImpl"
.end annotation


# static fields
.field private static final RANGE:I = 0x80


# instance fields
.field private m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

.field private final m_alreadyKnown:[Z

.field private m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

.field private final m_encoding:Ljava/lang/String;

.field private final m_explFirst:I

.field private final m_explLast:I

.field private final m_first:I

.field private final m_isInEncoding:[Z

.field private final m_last:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;)V
    .locals 6

    .line 2
    iget-object v2, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Ljava/lang/String;III)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Ljava/lang/String;III)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->this$0:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v1, v0, [Z

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    new-array v1, v0, [Z

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    .line 6
    iput p3, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_first:I

    .line 7
    iput p4, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_last:I

    .line 8
    iput p5, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    add-int/lit8 p3, p5, 0x7f

    .line 9
    iput p3, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    .line 10
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    .line 11
    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    if-ltz p5, :cond_2

    const/16 p4, 0x7f

    if-gt p5, p4, :cond_2

    const-string p5, "UTF8"

    .line 12
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "UTF-16"

    iget-object p5, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ASCII"

    iget-object p5, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "US-ASCII"

    iget-object p5, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Unicode"

    iget-object p5, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "UNICODE"

    iget-object p5, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const-string p5, "ISO8859"

    invoke-virtual {p2, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    move p2, p3

    :goto_0
    if-ge p2, p4, :cond_2

    .line 13
    iget p5, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int p5, p2, p5

    if-ltz p5, :cond_1

    if-ge p5, v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean p3, v1, p5

    .line 15
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p3, v1, p5

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 17
    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    array-length p4, p2

    if-ge p1, p4, :cond_3

    .line 18
    aput-boolean p3, p2, p1

    .line 19
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public isInEncoding(C)Z
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->toCodePoint(C)I

    move-result v5

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    const/4 v1, 0x1

    if-ge v5, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    if-nez v2, :cond_0

    .line 4
    new-instance v6, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->this$0:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_first:I

    add-int/lit8 v7, v0, -0x1

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result p0

    goto :goto_0

    .line 6
    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v2, v5, :cond_3

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_2

    .line 8
    new-instance v6, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->this$0:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_last:I

    move-object v0, v6

    move-object v1, v3

    move-object v2, v4

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result p0

    goto :goto_0

    :cond_3
    sub-int/2addr v5, v0

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    .line 11
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean p0, p0, v5

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->access$100(CLjava/lang/String;)Z

    move-result p1

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v1, v0, v5

    .line 14
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p1, p0, v5

    move p0, p1

    :goto_0
    return p0
.end method

.method public isInEncoding(CC)Z
    .locals 9

    .line 15
    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->toCodePoint(CC)I

    move-result v5

    .line 16
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    const/4 v1, 0x1

    if-ge v5, v0, :cond_1

    .line 17
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    if-nez v2, :cond_0

    .line 18
    new-instance v6, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->this$0:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_first:I

    add-int/lit8 v7, v0, -0x1

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_before:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result p0

    goto :goto_0

    .line 20
    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v2, v5, :cond_3

    .line 21
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_2

    .line 22
    new-instance v6, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->this$0:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_last:I

    move-object v0, v6

    move-object v1, v3

    move-object v2, v4

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_after:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result p0

    goto :goto_0

    :cond_3
    sub-int/2addr v5, v0

    .line 24
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    .line 25
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean p0, p0, v5

    goto :goto_0

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->access$200(CCLjava/lang/String;)Z

    move-result p1

    .line 27
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v1, p2, v5

    .line 28
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p1, p0, v5

    move p0, p1

    :goto_0
    return p0
.end method
