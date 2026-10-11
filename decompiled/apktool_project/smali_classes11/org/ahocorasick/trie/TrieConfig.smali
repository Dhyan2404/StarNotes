.class public Lorg/ahocorasick/trie/TrieConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->b:Z

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->c:Z

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->d:Z

    iput-boolean v0, p0, Lorg/ahocorasick/trie/TrieConfig;->e:Z

    return-void
.end method


# virtual methods
.method public isAllowOverlaps()Z
    .locals 0

    iget-boolean p0, p0, Lorg/ahocorasick/trie/TrieConfig;->a:Z

    return p0
.end method

.method public isCaseInsensitive()Z
    .locals 0

    iget-boolean p0, p0, Lorg/ahocorasick/trie/TrieConfig;->d:Z

    return p0
.end method

.method public isOnlyWholeWords()Z
    .locals 0

    iget-boolean p0, p0, Lorg/ahocorasick/trie/TrieConfig;->b:Z

    return p0
.end method

.method public isOnlyWholeWordsWhiteSpaceSeparated()Z
    .locals 0

    iget-boolean p0, p0, Lorg/ahocorasick/trie/TrieConfig;->c:Z

    return p0
.end method

.method public isStopOnHit()Z
    .locals 0

    iget-boolean p0, p0, Lorg/ahocorasick/trie/TrieConfig;->e:Z

    return p0
.end method

.method public setAllowOverlaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ahocorasick/trie/TrieConfig;->a:Z

    return-void
.end method

.method public setCaseInsensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ahocorasick/trie/TrieConfig;->d:Z

    return-void
.end method

.method public setOnlyWholeWords(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ahocorasick/trie/TrieConfig;->b:Z

    return-void
.end method

.method public setOnlyWholeWordsWhiteSpaceSeparated(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ahocorasick/trie/TrieConfig;->c:Z

    return-void
.end method

.method public setStopOnHit(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ahocorasick/trie/TrieConfig;->e:Z

    return-void
.end method
