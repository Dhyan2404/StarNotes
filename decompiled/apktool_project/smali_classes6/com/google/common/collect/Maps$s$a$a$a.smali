.class public Lcom/google/common/collect/Maps$s$a$a$a;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$s$a$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/Map$Entry;

.field public final synthetic f:Lcom/google/common/collect/Maps$s$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$s$a$a;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$s$a$a$a;->f:Lcom/google/common/collect/Maps$s$a$a;

    iput-object p2, p0, Lcom/google/common/collect/Maps$s$a$a$a;->e:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$s$a$a$a;->delegate()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public delegate()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/common/collect/Maps$s$a$a$a;->e:Ljava/util/Map$Entry;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/sunia/HTREnginev2/xvk;
        .end annotation
    .end param
    .annotation runtime Lcom/sunia/HTREnginev2/xvk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$s$a$a$a;->f:Lcom/google/common/collect/Maps$s$a$a;

    iget-object v0, v0, Lcom/google/common/collect/Maps$s$a$a;->f:Lcom/google/common/collect/Maps$s$a;

    iget-object v0, v0, Lcom/google/common/collect/Maps$s$a;->e:Lcom/google/common/collect/Maps$s;

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/Maps$n;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
