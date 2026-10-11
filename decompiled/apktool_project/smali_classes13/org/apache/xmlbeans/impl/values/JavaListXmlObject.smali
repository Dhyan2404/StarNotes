.class public Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/xmlbeans/XmlObject;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final adder:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final getter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final remover:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final setter:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sizer:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->getter:Ljava/util/function/Function;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->setter:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->adder:Ljava/util/function/Function;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->remover:Ljava/util/function/Consumer;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->sizer:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->add(ILorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public add(ILorg/apache/xmlbeans/XmlObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->adder:Ljava/util/function/Function;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XmlBean generated using partial methods - no add method available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->get(I)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->getter:Ljava/util/function/Function;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XmlBean generated using partial methods - no getter available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->remove(I)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->remover:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->get(I)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->remover:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XmlBean generated using partial methods - no remove method available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->set(ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public set(ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->setter:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->get(I)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->setter:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XmlBean generated using partial methods - no setter available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;->sizer:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "XmlBean generated using partial methods - no size-of method available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
