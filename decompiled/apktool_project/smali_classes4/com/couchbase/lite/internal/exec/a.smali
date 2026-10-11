.class public final synthetic Lcom/couchbase/lite/internal/exec/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/a;->a:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/a;->a:Ljava/lang/Thread;

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/exec/CBLExecutor$1;->a(Ljava/lang/Thread;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
