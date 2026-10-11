.class public Lcom/google/common/collect/TreeTraverser$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser$c;->forEach(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/function/Consumer;

.field public final synthetic f:Lcom/google/common/collect/TreeTraverser$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeTraverser$c;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$c$a;->f:Lcom/google/common/collect/TreeTraverser$c;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$c$a;->e:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$c$a;->f:Lcom/google/common/collect/TreeTraverser$c;

    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$c;->g:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$c$a;->e:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
