.class public final synthetic Lcom/couchbase/lite/internal/exec/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/d;->a:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/d;->a:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->a(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
