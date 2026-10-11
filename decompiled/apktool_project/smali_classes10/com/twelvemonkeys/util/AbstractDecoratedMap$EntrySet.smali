.class public Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/AbstractDecoratedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->removeEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->size()I

    move-result p0

    return p0
.end method
