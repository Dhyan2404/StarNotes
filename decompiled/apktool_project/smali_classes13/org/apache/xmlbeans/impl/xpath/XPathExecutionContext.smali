.class public Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ATTRS:I = 0x4

.field public static final DESCEND:I = 0x2

.field public static final HIT:I = 0x1


# instance fields
.field private _paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

.field private final _stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private _xpath:Lorg/apache/xmlbeans/impl/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_stack:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;I)Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->lambda$init$0(I)Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_stack:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$init$0(I)Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;-><init>(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$1;)V

    return-object p1
.end method


# virtual methods
.method public final attr(Ljavax/xml/namespace/QName;)Z
    .locals 4

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->attr(Ljavax/xml/namespace/QName;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final element(Ljavax/xml/namespace/QName;)I
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->element(Ljavax/xml/namespace/QName;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final end()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final init(Lorg/apache/xmlbeans/impl/xpath/XPath;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_xpath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_xpath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/xpath/XPath;->_selector:Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    new-instance v1, Lcom/sunia/HTREnginev2/bmo;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bmo;-><init>(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/xpath/XPath;->_selector:Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->init(Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final start()I
    .locals 4

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->start()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
