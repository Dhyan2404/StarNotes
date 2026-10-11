.class public Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

.field public static final a:C = ';'

.field public static final b:C = ','

.field public static final c:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    invoke-direct {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->DEFAULT:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    invoke-direct {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->c:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C[C)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

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

.method public static parseElements(Ljava/lang/String;Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/burgstaller/okhttp/digest/fromhttpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 1
    invoke-static {p0, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    :goto_0
    check-cast p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;

    invoke-interface {p1, v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;->parseElements(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public static parseHeaderElement(Ljava/lang/String;Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;)Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/burgstaller/okhttp/digest/fromhttpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 1
    invoke-static {p0, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    :goto_0
    check-cast p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;

    invoke-interface {p1, v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;->parseHeaderElement(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public static parseNameValuePair(Ljava/lang/String;Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/burgstaller/okhttp/digest/fromhttpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 1
    invoke-static {p0, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    :goto_0
    check-cast p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;

    invoke-interface {p1, v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;->parseNameValuePair(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p0

    return-object p0
.end method

.method public static parseParameters(Ljava/lang/String;Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/burgstaller/okhttp/digest/fromhttpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 1
    invoke-static {p0, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    :goto_0
    check-cast p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;

    invoke-interface {p1, v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderValueParser;->parseParameters(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;)Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;
    .locals 0

    new-instance p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderElement;

    invoke-direct {p0, p1, p2, p3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;)V

    return-object p0
.end method

.method public createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 0

    new-instance p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    invoke-direct {p0, p1, p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public parseElements(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;
    .locals 3

    const-string v0, "Char array buffer"

    .line 6
    invoke-static {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 7
    invoke-static {p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    check-cast p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->parseHeaderElement(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public parseHeaderElement(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;
    .locals 3

    const-string v0, "Char array buffer"

    .line 6
    invoke-static {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 7
    invoke-static {p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->parseNameValuePair(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->parseParameters(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;)Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public parseNameValuePair(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 1

    .line 6
    sget-object v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->c:[C

    invoke-virtual {p0, p1, p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->parseNameValuePair(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;[C)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p0

    return-object p0
.end method

.method public parseNameValuePair(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;[C)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 12

    const-string v0, "Char array buffer"

    .line 7
    invoke-static {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 8
    invoke-static {p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getPos()I

    move-result v0

    .line 10
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getPos()I

    move-result v1

    .line 11
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v2, :cond_2

    .line 12
    invoke-virtual {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {v5, p3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->a(C[C)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v5, v4

    :goto_2
    if-ne v0, v2, :cond_3

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    move v5, v3

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :goto_3
    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->updatePos(I)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, v1, p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p0

    return-object p0

    :cond_4
    move v6, v0

    move v7, v4

    move v8, v7

    :goto_4
    const/16 v9, 0x22

    if-ge v6, v2, :cond_9

    .line 18
    invoke-virtual {p1, v6}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_5

    if-nez v7, :cond_5

    xor-int/lit8 v8, v8, 0x1

    :cond_5
    if-nez v8, :cond_6

    if-nez v7, :cond_6

    .line 19
    invoke-static {v10, p3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->a(C[C)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v7, :cond_8

    :cond_7
    move v7, v4

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_7

    const/16 v7, 0x5c

    if-ne v10, v7, :cond_7

    move v7, v3

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_6
    if-ge v0, v6, :cond_a

    .line 20
    invoke-virtual {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HTTP;->isWhitespace(C)Z

    move-result p3

    if-eqz p3, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move p3, v6

    :goto_7
    if-le p3, v0, :cond_b

    add-int/lit8 v2, p3, -0x1

    .line 21
    invoke-virtual {p1, v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    :cond_b
    sub-int v2, p3, v0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_c

    .line 22
    invoke-virtual {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_c

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p1, v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_c

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 23
    :cond_c
    invoke-virtual {p1, v0, p3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 24
    :cond_d
    invoke-virtual {p2, v6}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->updatePos(I)V

    .line 25
    invoke-virtual {p0, v1, p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p0

    return-object p0
.end method

.method public parseParameters(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 3

    const-string v0, "Char array buffer"

    .line 6
    invoke-static {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 7
    invoke-static {p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getPos()I

    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getUpperBound()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 11
    invoke-static {v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HTTP;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->updatePos(I)V

    .line 13
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    return-object p0

    .line 14
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :cond_3
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->parseNameValuePair(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    check-cast p0, [Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    return-object p0
.end method
