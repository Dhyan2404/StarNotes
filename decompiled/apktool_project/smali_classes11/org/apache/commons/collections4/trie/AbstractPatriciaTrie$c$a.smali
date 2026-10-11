.class public Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c$a;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.j<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c$a;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c$a;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$c;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->b()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
