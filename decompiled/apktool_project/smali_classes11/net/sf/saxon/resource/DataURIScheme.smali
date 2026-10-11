.class public Lnet/sf/saxon/resource/DataURIScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-string v3, "charset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/net/URI;)Lnet/sf/saxon/lib/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";base64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, -0x7

    :cond_0
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Base64BinaryValue;->decode(Lnet/sf/saxon/str/UnicodeString;)[B

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/resource/BinaryResource;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1, v0}, Lnet/sf/saxon/resource/BinaryResource;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/resource/BinaryResource;->setData([B)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lnet/sf/saxon/resource/DataURIScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "US-ASCII"

    :cond_2
    invoke-static {v0}, Lnet/sf/saxon/resource/DataURIScheme;->c(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-direct {v3}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-static {v1}, Lnet/sf/saxon/resource/DataURIScheme;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    iput-object v2, v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    iput-object v0, v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    const/4 p0, 0x1

    iput p0, v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I

    new-instance p0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {p0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object p0, v3, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->parseOptions:Lnet/sf/saxon/lib/ParseOptions;

    new-instance p0, Lnet/sf/saxon/resource/UnparsedTextResource;

    invoke-direct {p0, v3}, Lnet/sf/saxon/resource/UnparsedTextResource;-><init>(Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing comma in data URI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
