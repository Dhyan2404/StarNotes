.class public final synthetic Lcom/sunia/HTREnginev2/x8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$f0;

.field public final synthetic f:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$f0;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x8j;->e:Lcom/google/common/collect/Maps$f0;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x8j;->f:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x8j;->e:Lcom/google/common/collect/Maps$f0;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x8j;->f:Ljava/util/function/BiConsumer;

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/collect/Maps$f0;->a(Lcom/google/common/collect/Maps$f0;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
