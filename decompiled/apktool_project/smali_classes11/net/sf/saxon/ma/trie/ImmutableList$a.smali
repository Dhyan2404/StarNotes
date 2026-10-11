.class public Lnet/sf/saxon/ma/trie/ImmutableList$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lnet/sf/saxon/ma/trie/ImmutableList;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableList;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableList$a;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableList$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableList$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableList$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->head()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableList$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/trie/ImmutableList;->tail()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableList$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-object v0
.end method
