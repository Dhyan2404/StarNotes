.class public final synthetic Lcom/sunia/HTREnginev2/w0n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w0n;->e:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w0n;->e:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/google/common/collect/Streams$l;

    invoke-static {p0, p1}, Lcom/google/common/collect/Streams;->b(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$l;)V

    return-void
.end method
