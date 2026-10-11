.class public final synthetic Lcom/sunia/HTREnginev2/w8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$a0;

.field public final synthetic f:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$a0;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w8j;->e:Lcom/google/common/collect/Maps$a0;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w8j;->f:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w8j;->e:Lcom/google/common/collect/Maps$a0;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w8j;->f:Ljava/util/function/BiConsumer;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Maps$a0;->c(Lcom/google/common/collect/Maps$a0;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method
