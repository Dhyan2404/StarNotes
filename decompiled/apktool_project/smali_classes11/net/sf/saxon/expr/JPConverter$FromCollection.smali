.class public Lnet/sf/saxon/expr/JPConverter$FromCollection;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromCollection"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromCollection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromCollection;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromCollection;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromCollection;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromCollection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0, p2}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->asItem(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returned Collection contains an object that cannot be converted to an Item ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SXJE0051"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method
