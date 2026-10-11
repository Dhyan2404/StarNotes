.class public Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementationSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;
    .locals 2

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;
    .locals 3

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationListImpl;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationListImpl;-><init>(Ljava/util/Vector;)V

    return-object p0
.end method

.method public testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z
    .locals 5

    new-instance p0, Ljava/util/StringTokenizer;

    invoke-direct {p0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    move v1, v3

    :pswitch_0
    if-eqz v1, :cond_3

    invoke-interface {p1, p2, v2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    return v3

    :cond_4
    move-object p2, v2

    goto :goto_0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
