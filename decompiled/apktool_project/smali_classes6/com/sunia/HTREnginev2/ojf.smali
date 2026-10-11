.class public final synthetic Lcom/sunia/HTREnginev2/ojf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/rjf;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/rjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ojf;->e:Lcom/sunia/HTREnginev2/rjf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ojf;->e:Lcom/sunia/HTREnginev2/rjf;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/rjf;->A(Lcom/sunia/HTREnginev2/rjf;)V

    return-void
.end method
