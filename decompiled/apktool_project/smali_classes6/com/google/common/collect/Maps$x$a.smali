.class public Lcom/google/common/collect/Maps$x$a;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$x;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$x;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$x$a;->e:Lcom/google/common/collect/Maps$x;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Maps$x$a;->e:Lcom/google/common/collect/Maps$x;

    return-object p0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Maps$x$a;->e:Lcom/google/common/collect/Maps$x;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$x;->forEachEntry(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Maps$x$a;->e:Lcom/google/common/collect/Maps$x;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$x;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Maps$x$a;->e:Lcom/google/common/collect/Maps$x;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$x;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
