.class public final Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;
.super Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
.source "SourceFile"


# instance fields
.field private fNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->getSystemIdFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method private static getSystemIdFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-void
.end method
