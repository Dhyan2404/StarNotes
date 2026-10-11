.class public final synthetic Lcom/sunia/HTREnginev2/v2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/Callable;

.field public final synthetic f:Lcom/sunia/HTREnginev2/f3f$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v2f;->e:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v2f;->f:Lcom/sunia/HTREnginev2/f3f$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v2f;->e:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v2f;->f:Lcom/sunia/HTREnginev2/f3f$b;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/e3f;->m(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method
