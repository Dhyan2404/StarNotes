.class public Lorg/mortbay/jetty/servlet/PathMap;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/PathMap$Entry;
    }
.end annotation


# static fields
.field private static __pathSpecSeparators:Ljava/lang/String;


# instance fields
.field _default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

.field _defaultSingletonList:Ljava/util/List;

.field _entrySet:Ljava/util/Set;

.field _exactMap:Lorg/mortbay/util/StringMap;

.field _nodefault:Z

.field _prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

.field _prefixMap:Lorg/mortbay/util/StringMap;

.field _suffixMap:Lorg/mortbay/util/StringMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.mortbay.http.PathMap.separators"

    const-string v1, ":,"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 3
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 4
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 7
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 9
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    new-instance p1, Lorg/mortbay/util/StringMap;

    invoke-direct {p1}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 22
    new-instance p1, Lorg/mortbay/util/StringMap;

    invoke-direct {p1}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 23
    new-instance p1, Lorg/mortbay/util/StringMap;

    invoke-direct {p1}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 26
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 28
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 31
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 32
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 35
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 38
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0xb

    .line 10
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 12
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 13
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 16
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 18
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    .line 19
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    return-void
.end method

.method private static isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const-string v1, "/*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2, p0, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eq p0, v0, :cond_0

    const/16 p0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p2, v3, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return v3

    .line 6
    :cond_2
    invoke-static {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_3
    const/16 p2, 0x2a

    if-ne v1, p2, :cond_4

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p2, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, p2, p0, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public static pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x2a

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, p0, v3, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static relativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string p1, "./"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static setPathSpecSeparators(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/mortbay/jetty/servlet/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsMatch(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    :cond_2
    :goto_0
    const/16 v4, 0x2f

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v4, p1, v3, v2}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    if-eqz v2, :cond_4

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    :goto_1
    const/16 v2, 0x2e

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_5

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    add-int/lit8 v4, v3, 0x1

    sub-int v5, v1, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, p1, v4, v5}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    if-eqz p1, :cond_7

    if-nez v0, :cond_6

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    return-object p0

    :cond_6
    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    return-object p0

    :cond_1
    move v1, v0

    :cond_2
    const/16 v3, 0x2f

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v3, p1, v2, v1}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    return-object p0

    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const/16 v1, 0x2e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    add-int/lit8 v3, v2, 0x1

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, p1, v3, v4}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    return-object p0

    :cond_5
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    return-object p0
.end method

.method public getMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/mortbay/jetty/servlet/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PathSpec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ". must start with \'/\' or \'*.\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-direct {v2, p1, p2}, Lorg/mortbay/jetty/servlet/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "/*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_2

    :cond_2
    const-string v3, "/*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v5, v3, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v5, v3, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v3, "*."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v3, p1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-static {v2}, Lorg/mortbay/util/SingletonList;->newSingletonList(Ljava/lang/Object;)Lorg/mortbay/util/SingletonList;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, p1}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v3, p1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    move-object p1, v1

    goto/16 :goto_0

    :cond_8
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0

    :cond_0
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
