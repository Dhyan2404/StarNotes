.class public final synthetic Lcom/sunia/HTREnginev2/t8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$r;

.field public final synthetic f:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$r;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t8j;->e:Lcom/google/common/collect/Maps$r;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t8j;->f:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t8j;->e:Lcom/google/common/collect/Maps$r;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t8j;->f:Ljava/util/function/BiFunction;

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/collect/Maps$r;->g(Lcom/google/common/collect/Maps$r;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
