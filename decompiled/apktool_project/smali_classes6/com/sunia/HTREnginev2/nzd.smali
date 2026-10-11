.class public final synthetic Lcom/sunia/HTREnginev2/nzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/k$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nzd;->e:Lcom/google/common/collect/k$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nzd;->e:Lcom/google/common/collect/k$a;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/k$a;->b(Ljava/lang/Enum;Ljava/lang/Object;)V

    return-void
.end method
