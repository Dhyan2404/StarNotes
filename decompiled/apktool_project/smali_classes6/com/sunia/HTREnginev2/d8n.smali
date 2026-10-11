.class public final synthetic Lcom/sunia/HTREnginev2/d8n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/util/function/Function;

.field public final synthetic f:Ljava/util/function/Function;

.field public final synthetic g:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d8n;->e:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d8n;->f:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/d8n;->g:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8n;->e:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/d8n;->f:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8n;->g:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableTable$Builder;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/common/collect/c0;->g(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$Builder;Ljava/lang/Object;)V

    return-void
.end method
