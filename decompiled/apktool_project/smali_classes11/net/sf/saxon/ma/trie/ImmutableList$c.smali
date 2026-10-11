.class public Lnet/sf/saxon/ma/trie/ImmutableList$c;
.super Lnet/sf/saxon/ma/trie/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/sf/saxon/ma/trie/ImmutableList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final g:Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableList$c;->f:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/ma/trie/ImmutableList$c;->g:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableList;Lnet/sf/saxon/ma/trie/ImmutableList$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableList$c;-><init>(Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public head()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableList$c;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public tail()Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableList$c;->g:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-object p0
.end method
