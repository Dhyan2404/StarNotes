.class public final synthetic Lcom/sunia/HTREnginev2/jqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/function/Consumer;

.field public final synthetic f:Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/common/base/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jqi;->e:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jqi;->f:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jqi;->e:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jqi;->f:Lcom/google/common/base/Function;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Iterables$f;->c(Ljava/util/function/Consumer;Lcom/google/common/base/Function;Ljava/lang/Object;)V

    return-void
.end method
