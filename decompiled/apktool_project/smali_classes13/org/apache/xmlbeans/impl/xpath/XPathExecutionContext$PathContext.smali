.class final Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PathContext"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

.field private final _prev:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xpath/XPathStep;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->this$0:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_prev:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;-><init>(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)V

    return-void
.end method

.method private backtrack()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_hasBacktrack:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    return-void

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_prev:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_deep:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-boolean v2, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_deep:Z

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->top(I)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->match(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_prev:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_prev:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private top(I)Ljavax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->this$0:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->access$000(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->this$0:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->access$000(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    return-object p0
.end method


# virtual methods
.method public attr(Ljavax/xml/namespace/QName;)Z
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_attr:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->match(Ljavax/xml/namespace/QName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public element(Ljavax/xml/namespace/QName;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_prev:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_attr:Z

    if-nez v2, :cond_3

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->match(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_name:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1

    iget p0, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_flags:I

    return p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->backtrack()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    const/4 p1, 0x1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_flags:I

    or-int/2addr p1, p0

    :goto_0
    return p1

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->backtrack()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->match(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-boolean v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_deep:Z

    if-eqz v0, :cond_3

    :goto_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_flags:I

    return p0
.end method

.method public end()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_prev:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    return-void
.end method

.method public init(Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_prev:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public start()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_name:Ljavax/xml/namespace/QName;

    if-eqz v1, :cond_0

    iget p0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_flags:I

    return p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    const/4 p0, 0x1

    return p0
.end method
