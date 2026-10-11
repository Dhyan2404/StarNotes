.class public final synthetic Lcom/sunia/HTREnginev2/j8n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic e:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j8n;->e:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j8n;->e:Ljava/util/function/BinaryOperator;

    check-cast p1, Lcom/google/common/collect/c0$b;

    check-cast p2, Lcom/google/common/collect/c0$b;

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/c0;->d(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/c0$b;Lcom/google/common/collect/c0$b;)Lcom/google/common/collect/c0$b;

    move-result-object p0

    return-object p0
.end method
