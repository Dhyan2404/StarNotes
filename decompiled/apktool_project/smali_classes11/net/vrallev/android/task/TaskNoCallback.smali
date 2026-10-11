.class public abstract Lnet/vrallev/android/task/TaskNoCallback;
.super Lnet/vrallev/android/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/vrallev/android/task/Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/vrallev/android/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/vrallev/android/task/TaskNoCallback;->execute()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public final execute()Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/vrallev/android/task/TaskNoCallback;->executeTask()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract executeTask()V
.end method
