.class public final synthetic Lcom/sunia/HTREnginev2/mri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/JdkFutureAdapters$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mri;->e:Lcom/google/common/util/concurrent/JdkFutureAdapters$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mri;->e:Lcom/google/common/util/concurrent/JdkFutureAdapters$a;

    invoke-static {p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->e(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)V

    return-void
.end method
