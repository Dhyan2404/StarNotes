.class Lcom/sun/org/apache/xpath/internal/domapi/XPathNSResolverImpl;
.super Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/xpath/XPathNSResolver;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
