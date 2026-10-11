.class public Lcom/oplus/ocs/base/task/TaskExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/task/TaskExecutors$MainExecutor;
    }
.end annotation


# static fields
.field public static final CURRENT_THREAD:Ljava/util/concurrent/Executor;

.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/ocs/base/task/TaskExecutors$MainExecutor;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskExecutors$MainExecutor;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oplus/ocs/base/task/r;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/r;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
