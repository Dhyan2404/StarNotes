.class public Lnet/sf/saxon/ma/trie/ImmutableList$b;
.super Lnet/sf/saxon/ma/trie/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableList$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableList$b;-><init>()V

    return-void
.end method


# virtual methods
.method public head()Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "head() called on empty list"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public tail()Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 1

    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "head() called on empty list"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
