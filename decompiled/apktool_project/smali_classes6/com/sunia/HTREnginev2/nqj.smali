.class public final synthetic Lcom/sunia/HTREnginev2/nqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/function/ObjIntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nqj;->e:Ljava/util/function/ObjIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nqj;->e:Ljava/util/function/ObjIntConsumer;

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multiset;->w(Ljava/util/function/ObjIntConsumer;Lcom/google/common/collect/Multiset$Entry;)V

    return-void
.end method
