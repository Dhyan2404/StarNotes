.class public final synthetic Lcom/sunia/HTREnginev2/y4p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/q$a;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/q$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y4p;->e:Lcom/sunia/HTREnginev2/q$a;

    iput p2, p0, Lcom/sunia/HTREnginev2/y4p;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y4p;->e:Lcom/sunia/HTREnginev2/q$a;

    iget p0, p0, Lcom/sunia/HTREnginev2/y4p;->f:I

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/q$a;->a(Lcom/sunia/HTREnginev2/q$a;I)V

    return-void
.end method
