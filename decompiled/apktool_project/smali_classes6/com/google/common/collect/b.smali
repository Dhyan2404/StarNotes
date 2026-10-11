.class public final synthetic Lcom/google/common/collect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/function/BiConsumer;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/b;->e:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/google/common/collect/b;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b;->e:Ljava/util/function/BiConsumer;

    iget-object p0, p0, Lcom/google/common/collect/b;->f:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->g(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
