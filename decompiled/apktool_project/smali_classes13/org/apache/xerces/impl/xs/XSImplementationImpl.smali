.class public Lorg/apache/xerces/impl/xs/XSImplementationImpl;
.super Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSImplementation;


# static fields
.field public static final u:Lorg/apache/xerces/impl/xs/XSImplementationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xs/XSImplementationImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/xs/XSImplementationImpl;->u:Lorg/apache/xerces/impl/xs/XSImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/impl/xs/XSImplementationImpl;->u:Lorg/apache/xerces/impl/xs/XSImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createLSInputList([Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/xs/LSInputList;
    .locals 1

    if-eqz p1, :cond_0

    array-length p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/w3c/dom/ls/LSInput;

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;-><init>([Lorg/w3c/dom/ls/LSInput;I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/LSInputListImpl;

    :goto_1
    return-object v0
.end method

.method public createStringList([Ljava/lang/String;)Lorg/apache/xerces/xs/StringList;
    .locals 1

    if-eqz p1, :cond_0

    array-length p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    :goto_1
    return-object v0
.end method

.method public createXSLoader(Lorg/apache/xerces/xs/StringList;)Lorg/apache/xerces/xs/XSLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation

    new-instance p0, Lorg/apache/xerces/impl/xs/XSLoaderImpl;

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/XSLoaderImpl;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/xerces/xs/StringList;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Lorg/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v0, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/xerces/xs/XSException;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public getRecognizedVersions()Lorg/apache/xerces/xs/StringList;
    .locals 2

    new-instance p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    const-string v0, "1.0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object p0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "XS-Loader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
