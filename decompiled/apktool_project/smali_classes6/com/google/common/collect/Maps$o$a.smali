.class public Lcom/google/common/collect/Maps$o$a;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$o;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$o;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$o$a;->e:Lcom/google/common/collect/Maps$o;

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

    iget-object p0, p0, Lcom/google/common/collect/Maps$o$a;->e:Lcom/google/common/collect/Maps$o;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$o$a;->e:Lcom/google/common/collect/Maps$o;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$o;->e()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$o$a;->e:Lcom/google/common/collect/Maps$o;

    iget-object p0, p0, Lcom/google/common/collect/Maps$o;->i:Lcom/google/common/base/Function;

    invoke-static {v0, p0}, Lcom/google/common/collect/Maps;->i(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
