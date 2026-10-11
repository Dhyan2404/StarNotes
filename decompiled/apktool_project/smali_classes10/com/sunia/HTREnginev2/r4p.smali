.class public final synthetic Lcom/sunia/HTREnginev2/r4p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/q;

.field public final synthetic f:Lcom/sunia/calculatorv2/ink/model/e;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r4p;->e:Lcom/sunia/HTREnginev2/q;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r4p;->f:Lcom/sunia/calculatorv2/ink/model/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r4p;->e:Lcom/sunia/HTREnginev2/q;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r4p;->f:Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/q;->f0(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;)V

    return-void
.end method
