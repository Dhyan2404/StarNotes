.class public Lorg/apache/commons/collections4/trie/PatriciaTrie;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "Ljava/lang/String;",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3db4abf059650deeL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+TE;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->clear()V

    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic size()I
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
