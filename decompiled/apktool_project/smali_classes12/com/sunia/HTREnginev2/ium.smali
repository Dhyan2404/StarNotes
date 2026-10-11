.class public final synthetic Lcom/sunia/HTREnginev2/ium;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic e:Lcom/zaxxer/sparsebits/SparseBitSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ium;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ium;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->set(I)V

    return-void
.end method
