.class public final synthetic Lcom/sunia/HTREnginev2/xzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic e:Ljava/util/function/Consumer;

.field public final synthetic f:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzd;->e:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xzd;->f:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzd;->e:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzd;->f:Ljava/util/function/IntFunction;

    invoke-static {v0, p0, p1}, Lcom/sunia/HTREnginev2/vzd$c;->a(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method
