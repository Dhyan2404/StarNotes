.class public final Lcom/google/common/util/concurrent/Striped$g;
.super Lcom/sunia/HTREnginev2/fug;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/locks/Lock;

.field public final f:Lcom/google/common/util/concurrent/Striped$h;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/Striped$h;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/fug;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$g;->e:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$g;->f:Lcom/google/common/util/concurrent/Striped$h;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Striped$g;->e:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/Striped$f;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$g;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Striped$g;->f:Lcom/google/common/util/concurrent/Striped$h;

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/Striped$f;-><init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/Striped$h;)V

    return-object v0
.end method
