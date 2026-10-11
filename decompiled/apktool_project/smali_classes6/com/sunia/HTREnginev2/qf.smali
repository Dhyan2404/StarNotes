.class public final synthetic Lcom/sunia/HTREnginev2/qf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qf;->a:Lcom/google/common/collect/ArrayTable;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qf;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {p0, p1}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
