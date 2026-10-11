.class public final synthetic Lcom/sunia/HTREnginev2/f7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/uwi;

.field public final synthetic f:Lcom/google/firebase/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/uwi;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7e;->e:Lcom/sunia/HTREnginev2/uwi;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f7e;->f:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f7e;->e:Lcom/sunia/HTREnginev2/uwi;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7e;->f:Lcom/google/firebase/inject/Provider;

    invoke-static {v0, p0}, Lcom/google/firebase/components/ComponentRuntime;->c(Lcom/sunia/HTREnginev2/uwi;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
