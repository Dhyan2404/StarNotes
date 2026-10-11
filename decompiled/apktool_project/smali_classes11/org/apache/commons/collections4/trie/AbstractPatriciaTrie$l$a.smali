.class public Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l$a;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.j<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l$a;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l$a;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$l;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->b()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
