.class public Lorg/apache/xmlbeans/impl/xpath/XPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;,
        Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
    }
.end annotation


# static fields
.field public static final _DEFAULT_ELT_NS:Ljava/lang/String; = "$xmlbeans!default_uri"

.field public static final _NS_BOUNDARY:Ljava/lang/String; = "$xmlbeans!ns_boundary"


# instance fields
.field private final _sawDeepDot:Z

.field final _selector:Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPath;->_selector:Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/xpath/XPath;->_sawDeepDot:Z

    return-void
.end method

.method public static compileXPath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const-string v0, "$this"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object p0

    return-object p0
.end method

.method public static compileXPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object p0

    return-object p0
.end method

.method public static compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/impl/xpath/XPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;

    invoke-direct {v0, p2, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->compile(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object p0

    return-object p0
.end method

.method public static compileXPath(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/impl/xpath/XPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const-string v0, "$this"

    .line 3
    invoke-static {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sawDeepDot()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPath;->_sawDeepDot:Z

    return p0
.end method
