.class public Lcom/google/common/collect/Maps$t$a;
.super Lcom/google/common/collect/Maps$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$t;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$b0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/Maps$t;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$t;Ljava/util/NavigableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$t$a;->f:Lcom/google/common/collect/Maps$t;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$b0;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$t$a;->f:Lcom/google/common/collect/Maps$t;

    invoke-static {v0}, Lcom/google/common/collect/Maps$t;->c(Lcom/google/common/collect/Maps$t;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$t$a;->f:Lcom/google/common/collect/Maps$t;

    invoke-static {p0}, Lcom/google/common/collect/Maps$t;->b(Lcom/google/common/collect/Maps$t;)Lcom/google/common/base/Predicate;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Maps$s;->e(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$t$a;->f:Lcom/google/common/collect/Maps$t;

    invoke-static {v0}, Lcom/google/common/collect/Maps$t;->c(Lcom/google/common/collect/Maps$t;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$t$a;->f:Lcom/google/common/collect/Maps$t;

    invoke-static {p0}, Lcom/google/common/collect/Maps$t;->b(Lcom/google/common/collect/Maps$t;)Lcom/google/common/base/Predicate;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Maps$s;->f(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
