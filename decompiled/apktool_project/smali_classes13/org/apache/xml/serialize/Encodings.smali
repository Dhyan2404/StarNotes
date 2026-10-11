.class public Lorg/apache/xml/serialize/Encodings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x7f

.field public static final b:I = 0xffff

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String; = "UTF8"

.field public static e:Ljava/util/Hashtable; = null

.field public static final f:Ljava/lang/String; = "\\~\u007f\u00a2\u00a3\u00a5\u00ac\u2014\u2015\u2016\u2026\u203e\u203e\u2225\u222f\u301c\uff3c\uff5e\uffe0\uffe1\uffe2\uffe3"


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "Unicode"

    const-string v1, "UnicodeBig"

    const-string v2, "UnicodeLittle"

    const-string v3, "GB2312"

    const-string v4, "UTF8"

    const-string v5, "UTF-16"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serialize/Encodings;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lorg/apache/xml/serialize/EncodingInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const v0, 0xffff

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    const-string p1, "UTF8"

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serialize/EncodingInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xml/serialize/EncodingInfo;

    invoke-static {p1}, Lorg/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    const/4 v3, 0x0

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    invoke-static {p0}, Lorg/apache/xml/serialize/EncodingInfo;->testJavaEncodingName(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/serialize/EncodingInfo;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    :goto_0
    sget-object v1, Lorg/apache/xml/serialize/Encodings;->c:[Ljava/lang/String;

    array-length v4, v1

    if-lt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance p1, Lorg/apache/xml/serialize/EncodingInfo;

    invoke-static {p0}, Lorg/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4, p0, v0}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    array-length v0, v1

    if-ne v3, v0, :cond_4

    new-instance p1, Lorg/apache/xml/serialize/EncodingInfo;

    invoke-static {p0}, Lorg/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v2}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    sget-object v0, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    sget-object p1, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/serialize/EncodingInfo;

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    :goto_2
    sget-object v4, Lorg/apache/xml/serialize/Encodings;->c:[Ljava/lang/String;

    array-length v5, v4

    if-lt v3, v5, :cond_9

    goto :goto_3

    :cond_9
    aget-object v5, v4, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance p1, Lorg/apache/xml/serialize/EncodingInfo;

    invoke-direct {p1, p0, v1, v0}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_3
    array-length v0, v4

    if-ne v3, v0, :cond_a

    new-instance p1, Lorg/apache/xml/serialize/EncodingInfo;

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    sget-object p0, Lorg/apache/xml/serialize/Encodings;->e:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
