.class public final synthetic Lcom/sunia/HTREnginev2/voj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MoreCollectors$a;

    check-cast p2, Lcom/google/common/collect/MoreCollectors$a;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$a;->b(Lcom/google/common/collect/MoreCollectors$a;)Lcom/google/common/collect/MoreCollectors$a;

    move-result-object p0

    return-object p0
.end method
