.class public Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lorg/apache/xmlbeans/XmlError;",
        ">;"
    }
.end annotation


# instance fields
.field private _firstError:Lorg/apache/xmlbeans/XmlError;

.field private final _underlying:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_underlying:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/xmlbeans/XmlError;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->add(Lorg/apache/xmlbeans/XmlError;)Z

    move-result p0

    return p0
.end method

.method public add(Lorg/apache/xmlbeans/XmlError;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_firstError:Lorg/apache/xmlbeans/XmlError;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getSeverity()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_firstError:Lorg/apache/xmlbeans/XmlError;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_underlying:Ljava/util/Collection;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public firstError()Lorg/apache/xmlbeans/XmlError;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_firstError:Lorg/apache/xmlbeans/XmlError;

    return-object p0
.end method

.method public hasError()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_firstError:Lorg/apache/xmlbeans/XmlError;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_underlying:Ljava/util/Collection;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->_underlying:Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method
