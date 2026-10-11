.class public interface abstract Lnet/vrallev/android/task/TaskCacheFragmentInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;,
        Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_FACTORY:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

.field public static final PENDING_RESULT_KEY:Ljava/lang/String; = "PENDING_RESULT_KEY"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface$a;

    invoke-direct {v0}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$a;-><init>()V

    sput-object v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->DEFAULT_FACTORY:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    return-void
.end method


# virtual methods
.method public abstract canSaveInstanceState()Z
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getParentActivity()Landroid/app/Activity;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract putPendingResult(Lnet/vrallev/android/task/TaskPendingResult;)V
.end method

.method public abstract remove(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
