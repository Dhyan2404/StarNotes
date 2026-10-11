.class public Lnet/sf/saxon/s9api/XdmMap$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/XdmMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lnet/sf/saxon/s9api/XdmAtomicValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/XdmMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XdmMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmMap$a;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/map/KeyValuePair;)Lnet/sf/saxon/s9api/XdmAtomicValue;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmMap$a;->b(Lnet/sf/saxon/ma/map/KeyValuePair;)Lnet/sf/saxon/s9api/XdmAtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/ma/map/KeyValuePair;)Lnet/sf/saxon/s9api/XdmAtomicValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$a;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bvo;-><init>()V

    new-instance v1, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$a;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$a;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->size()I

    move-result p0

    return p0
.end method
