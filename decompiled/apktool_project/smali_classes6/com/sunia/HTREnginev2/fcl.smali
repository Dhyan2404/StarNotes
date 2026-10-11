.class public final synthetic Lcom/sunia/HTREnginev2/fcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/gcl;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/gcl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fcl;->e:Lcom/sunia/HTREnginev2/gcl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fcl;->e:Lcom/sunia/HTREnginev2/gcl;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gcl;->s()V

    return-void
.end method
