.class public Lnet/sf/saxon/serialize/CharacterMapIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/serialize/CharacterMap;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/serialize/CharacterMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public copy()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 2

    new-instance v0, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCharacterMap(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/serialize/CharacterMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/serialize/CharacterMap;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/serialize/CharacterMap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public makeCharacterMapExpander(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/SerializerFactory;)Lnet/sf/saxon/serialize/CharacterMapExpander;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\n\r"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/CharacterMapIndex;->getCharacterMap(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Character map \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been defined"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SEPM0016"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p3, p2}, Lnet/sf/saxon/lib/SerializerFactory;->newCharacterMapExpander(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/serialize/CharacterMapExpander;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/CharacterMapExpander;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-direct {p1, v0}, Lnet/sf/saxon/serialize/CharacterMap;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/CharacterMapExpander;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMapIndex;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
