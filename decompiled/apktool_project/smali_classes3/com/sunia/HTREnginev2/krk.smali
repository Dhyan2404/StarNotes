.class public final synthetic Lcom/sunia/HTREnginev2/krk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/bxn;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/bxn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/krk;->e:Lcom/sunia/HTREnginev2/bxn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/krk;->e:Lcom/sunia/HTREnginev2/bxn;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bxn;->b()V

    return-void
.end method
