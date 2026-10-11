.class public final Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;,
        Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;
    }
.end annotation


# instance fields
.field final javaName:Ljava/lang/String;

.field private m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(CLjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(CCLjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static inEncoding(CCLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [C

    aput-char p0, v0, v1

    const/4 v2, 0x1

    aput-char p1, v0, v2

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->inEncoding(C[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method private static inEncoding(CLjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [C

    aput-char p0, v2, v0

    .line 1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 2
    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 3
    invoke-static {p0, v2}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->inEncoding(C[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0
.end method

.method private static inEncoding(C[B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    aget-byte p1, p1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_2

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public isInEncoding(C)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$1;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result p0

    return p0
.end method

.method public isInEncoding(CC)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$EncodingImpl;-><init>(Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$1;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->m_encoding:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result p0

    return p0
.end method
