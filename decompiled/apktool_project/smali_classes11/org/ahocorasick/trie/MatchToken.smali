.class public Lorg/ahocorasick/trie/MatchToken;
.super Lorg/ahocorasick/trie/Token;
.source "SourceFile"


# instance fields
.field public b:Lorg/ahocorasick/trie/Emit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ahocorasick/trie/Emit;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ahocorasick/trie/Token;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/ahocorasick/trie/MatchToken;->b:Lorg/ahocorasick/trie/Emit;

    return-void
.end method


# virtual methods
.method public getEmit()Lorg/ahocorasick/trie/Emit;
    .locals 0

    iget-object p0, p0, Lorg/ahocorasick/trie/MatchToken;->b:Lorg/ahocorasick/trie/Emit;

    return-object p0
.end method

.method public isMatch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
