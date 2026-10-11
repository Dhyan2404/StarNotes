.class public Lcom/google/common/collect/TreeTraverser$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser$b;->forEach(Ljava/util/function/Consumer;)V
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

.field public final synthetic f:Lcom/google/common/collect/TreeTraverser$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeTraverser$b;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$b$a;->f:Lcom/google/common/collect/TreeTraverser$b;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$b$a;->e:Ljava/util/function/Consumer;

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

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$b$a;->e:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$b$a;->f:Lcom/google/common/collect/TreeTraverser$b;

    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$b;->g:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
