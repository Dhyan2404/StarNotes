.class public Lnet/sf/saxon/ma/map/DictionaryMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/map/DictionaryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lnet/sf/saxon/ma/map/DictionaryMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/ma/map/DictionaryMap$a;->f:Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/DictionaryMap$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/DictionaryMap$a;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/ma/map/DictionaryMap$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
