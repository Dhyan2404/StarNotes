.class public final synthetic Lcom/sunia/HTREnginev2/u2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/e3f;

.field public final synthetic f:Ljava/util/concurrent/Callable;

.field public final synthetic g:Lcom/sunia/HTREnginev2/f3f$b;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u2f;->e:Lcom/sunia/HTREnginev2/e3f;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u2f;->f:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/u2f;->g:Lcom/sunia/HTREnginev2/f3f$b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u2f;->e:Lcom/sunia/HTREnginev2/e3f;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u2f;->f:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u2f;->g:Lcom/sunia/HTREnginev2/f3f$b;

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/e3f;->d(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
