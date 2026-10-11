.class abstract Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ElementsNodeList"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ">;"
        }
    .end annotation
.end field

.field private final _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private final _root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field private _version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_version:J

    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->lambda$ensureElements$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->match(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :cond_1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ensureElements()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_version:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/y;

    invoke-direct {v1, p0}, Lorg/apache/xmlbeans/impl/store/y;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->access$100(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$ensureElements$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLength()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->ensureElements()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->ensureElements()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public abstract match(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
.end method
