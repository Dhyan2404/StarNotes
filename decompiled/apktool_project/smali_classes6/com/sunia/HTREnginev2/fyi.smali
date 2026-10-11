.class public final synthetic Lcom/sunia/HTREnginev2/fyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fyi;->e:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fyi;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fyi;->e:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fyi;->f:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/hyi;->f(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
