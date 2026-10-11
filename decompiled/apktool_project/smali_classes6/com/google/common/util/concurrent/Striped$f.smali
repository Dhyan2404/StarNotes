.class public final Lcom/google/common/util/concurrent/Striped$f;
.super Lcom/sunia/HTREnginev2/ytg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/Condition;

.field public final b:Lcom/google/common/util/concurrent/Striped$h;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/Striped$h;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/ytg;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/locks/Condition;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$f;->b:Lcom/google/common/util/concurrent/Striped$h;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method
