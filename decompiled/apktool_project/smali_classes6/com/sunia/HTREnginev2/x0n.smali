.class public final synthetic Lcom/sunia/HTREnginev2/x0n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Streams$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Streams$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x0n;->e:Lcom/google/common/collect/Streams$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x0n;->e:Lcom/google/common/collect/Streams$b;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Streams$b;->b(Ljava/lang/Object;)V

    return-void
.end method
