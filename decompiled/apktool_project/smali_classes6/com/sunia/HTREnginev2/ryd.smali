.class public final synthetic Lcom/sunia/HTREnginev2/ryd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ryd;->e:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ryd;->e:Ljava/util/function/BinaryOperator;

    invoke-static {p0}, Lcom/google/common/collect/k;->l(Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/k$a;

    move-result-object p0

    return-object p0
.end method
