.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# static fields
.field public static final EXSLT_DATETIME_PREFIX:Ljava/lang/String; = "datetime"

.field public static final EXSLT_DATETIME_URI:Ljava/lang/String; = "http://exslt.org/dates-and-times"

.field public static final EXSLT_DYNAMIC_PREFIX:Ljava/lang/String; = "dyn"

.field public static final EXSLT_DYNAMIC_URI:Ljava/lang/String; = "http://exslt.org/dynamic"

.field public static final EXSLT_MATH_PREFIX:Ljava/lang/String; = "math"

.field public static final EXSLT_MATH_URI:Ljava/lang/String; = "http://exslt.org/math"

.field public static final EXSLT_PREFIX:Ljava/lang/String; = "exslt"

.field public static final EXSLT_SET_PREFIX:Ljava/lang/String; = "set"

.field public static final EXSLT_SET_URI:Ljava/lang/String; = "http://exslt.org/sets"

.field public static final EXSLT_STRING_PREFIX:Ljava/lang/String; = "str"

.field public static final EXSLT_STRING_URI:Ljava/lang/String; = "http://exslt.org/strings"

.field public static final EXSLT_URI:Ljava/lang/String; = "http://exslt.org/common"

.field public static final JAVA_EXT_PREFIX:Ljava/lang/String; = "java"

.field public static final JAVA_EXT_URI:Ljava/lang/String; = "http://xml.apache.org/xalan/java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_a

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_1
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "http://www.w3.org/2000/xmlns/"

    return-object p0

    :cond_2
    const-string v0, "exslt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "http://exslt.org/common"

    return-object p0

    :cond_3
    const-string v0, "math"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "http://exslt.org/math"

    return-object p0

    :cond_4
    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "http://exslt.org/sets"

    return-object p0

    :cond_5
    const-string v0, "str"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "http://exslt.org/strings"

    return-object p0

    :cond_6
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "http://exslt.org/dates-and-times"

    return-object p0

    :cond_7
    const-string v0, "dyn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "http://exslt.org/dynamic"

    return-object p0

    :cond_8
    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "http://xml.apache.org/xalan/java"

    :cond_9
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NAMESPACE_CONTEXT_NULL_PREFIX"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_9

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "xml"

    return-object p0

    :cond_0
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "xmlns"

    return-object p0

    :cond_1
    const-string v0, "http://exslt.org/common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "exslt"

    return-object p0

    :cond_2
    const-string v0, "http://exslt.org/math"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "math"

    return-object p0

    :cond_3
    const-string v0, "http://exslt.org/sets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "set"

    return-object p0

    :cond_4
    const-string v0, "http://exslt.org/strings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "str"

    return-object p0

    :cond_5
    const-string v0, "http://exslt.org/dates-and-times"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "datetime"

    return-object p0

    :cond_6
    const-string v0, "http://exslt.org/dynamic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "dyn"

    return-object p0

    :cond_7
    const-string v0, "http://xml.apache.org/xalan/java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "java"

    :cond_8
    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_NAMESPACE_CONTEXT_NULL_NAMESPACE"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;-><init>(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;Ljava/lang/String;)V

    return-object v0
.end method
