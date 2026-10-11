.class public final synthetic Lcom/sunia/HTREnginev2/z7n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/util/function/Function;

.field public final synthetic f:Ljava/util/function/Function;

.field public final synthetic g:Ljava/util/function/Function;

.field public final synthetic h:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z7n;->e:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z7n;->f:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/z7n;->g:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/z7n;->h:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z7n;->e:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/z7n;->f:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/z7n;->g:Ljava/util/function/Function;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/z7n;->h:Ljava/util/function/BinaryOperator;

    move-object v4, p1

    check-cast v4, Lcom/google/common/collect/Table;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/c0;->b(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/Table;Ljava/lang/Object;)V

    return-void
.end method
