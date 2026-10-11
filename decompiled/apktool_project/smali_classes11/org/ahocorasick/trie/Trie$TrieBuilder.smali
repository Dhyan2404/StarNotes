.class public Lorg/ahocorasick/trie/Trie$TrieBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ahocorasick/trie/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieBuilder"
.end annotation


# instance fields
.field public a:Lorg/ahocorasick/trie/TrieConfig;

.field public b:Lorg/ahocorasick/trie/Trie;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/ahocorasick/trie/TrieConfig;

    invoke-direct {v0}, Lorg/ahocorasick/trie/TrieConfig;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->a:Lorg/ahocorasick/trie/TrieConfig;

    .line 4
    new-instance v1, Lorg/ahocorasick/trie/Trie;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/ahocorasick/trie/Trie;-><init>(Lorg/ahocorasick/trie/TrieConfig;Lorg/ahocorasick/trie/Trie$a;)V

    iput-object v1, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->b:Lorg/ahocorasick/trie/Trie;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ahocorasick/trie/Trie$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ahocorasick/trie/Trie$TrieBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 1

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->b:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0, p1}, Lorg/ahocorasick/trie/Trie;->a(Lorg/ahocorasick/trie/Trie;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lorg/ahocorasick/trie/Trie;
    .locals 1

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->b:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0}, Lorg/ahocorasick/trie/Trie;->c(Lorg/ahocorasick/trie/Trie;)V

    iget-object p0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->b:Lorg/ahocorasick/trie/Trie;

    return-object p0
.end method

.method public caseInsensitive()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->a:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setCaseInsensitive(Z)V

    return-object p0
.end method

.method public onlyWholeWords()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->a:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setOnlyWholeWords(Z)V

    return-object p0
.end method

.method public onlyWholeWordsWhiteSpaceSeparated()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->a:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setOnlyWholeWordsWhiteSpaceSeparated(Z)V

    return-object p0
.end method

.method public removeOverlaps()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->a:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setAllowOverlaps(Z)V

    return-object p0
.end method

.method public stopOnHit()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->b:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0}, Lorg/ahocorasick/trie/Trie;->b(Lorg/ahocorasick/trie/Trie;)Lorg/ahocorasick/trie/TrieConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setStopOnHit(Z)V

    return-object p0
.end method
