.class public abstract Lnet/sf/saxon/ma/trie/ImmutableList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/trie/ImmutableList$c;,
        Lnet/sf/saxon/ma/trie/ImmutableList$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Lnet/sf/saxon/ma/trie/ImmutableList$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/ma/trie/ImmutableList$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/ma/trie/ImmutableList$b;-><init>(Lnet/sf/saxon/ma/trie/ImmutableList$a;)V

    sput-object v0, Lnet/sf/saxon/ma/trie/ImmutableList;->e:Lnet/sf/saxon/ma/trie/ImmutableList$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static empty()Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/ma/trie/ImmutableList;->e:Lnet/sf/saxon/ma/trie/ImmutableList$b;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/ma/trie/ImmutableList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-ne p0, p1, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/trie/ImmutableList$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableList$a;-><init>(Lnet/sf/saxon/ma/trie/ImmutableList;)V

    return-object v0
.end method

.method public prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/trie/ImmutableList$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lnet/sf/saxon/ma/trie/ImmutableList$c;-><init>(Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableList;Lnet/sf/saxon/ma/trie/ImmutableList$a;)V

    return-object v0
.end method

.method public reverse()Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableList;->empty()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->tail()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract tail()Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "TT;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
