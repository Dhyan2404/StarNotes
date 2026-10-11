.class public Lnet/vrallev/android/task/TaskExecutor$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/vrallev/android/task/TaskExecutor$b;->b(Ljava/lang/Object;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/util/Pair;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lnet/vrallev/android/task/TaskExecutor$b;


# direct methods
.method public constructor <init>(Lnet/vrallev/android/task/TaskExecutor$b;Landroid/util/Pair;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b$a;->g:Lnet/vrallev/android/task/TaskExecutor$b;

    iput-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b$a;->e:Landroid/util/Pair;

    iput-object p3, p0, Lnet/vrallev/android/task/TaskExecutor$b$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b$a;->g:Lnet/vrallev/android/task/TaskExecutor$b;

    iget-object v1, v0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor$b$a;->e:Landroid/util/Pair;

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$b$a;->f:Ljava/lang/Object;

    invoke-static {v0}, Lnet/vrallev/android/task/TaskExecutor$b;->a(Lnet/vrallev/android/task/TaskExecutor$b;)Lnet/vrallev/android/task/Task;

    move-result-object v0

    invoke-virtual {v1, v2, p0, v0}, Lnet/vrallev/android/task/TaskExecutor;->h(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V

    return-void
.end method
