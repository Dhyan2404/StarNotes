.class public final synthetic Lcom/sunia/HTREnginev2/w2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lcom/sunia/HTREnginev2/f3f$b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w2f;->e:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w2f;->f:Lcom/sunia/HTREnginev2/f3f$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w2f;->e:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w2f;->f:Lcom/sunia/HTREnginev2/f3f$b;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/e3f;->h(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method
