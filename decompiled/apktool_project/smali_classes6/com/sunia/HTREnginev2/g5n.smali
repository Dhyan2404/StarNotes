.class public final synthetic Lcom/sunia/HTREnginev2/g5n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/h5n;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/h5n;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g5n;->e:Lcom/sunia/HTREnginev2/h5n;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g5n;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g5n;->e:Lcom/sunia/HTREnginev2/h5n;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g5n;->f:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/h5n;->a(Lcom/sunia/HTREnginev2/h5n;Ljava/lang/Object;)V

    return-void
.end method
