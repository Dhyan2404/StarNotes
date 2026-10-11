.class public Lcom/google/common/collect/ArrayTable$d$a;
.super Lcom/sunia/HTREnginev2/z3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$d;->a(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/z3<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/common/collect/ArrayTable$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$d$a;->f:Lcom/google/common/collect/ArrayTable$d;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$d$a;->e:I

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z3;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d$a;->f:Lcom/google/common/collect/ArrayTable$d;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$d$a;->e:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ArrayTable$d;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/sunia/HTREnginev2/xvk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d$a;->f:Lcom/google/common/collect/ArrayTable$d;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$d$a;->e:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ArrayTable$d;->d(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/sunia/HTREnginev2/xvk;
        .end annotation
    .end param
    .annotation runtime Lcom/sunia/HTREnginev2/xvk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d$a;->f:Lcom/google/common/collect/ArrayTable$d;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$d$a;->e:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$d;->e(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
