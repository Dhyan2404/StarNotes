.class public abstract Lcom/google/android/datatransport/runtime/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Component;
    modules = {
        Lcom/google/android/datatransport/runtime/backends/BackendRegistryModule;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;,
        Lcom/sunia/HTREnginev2/pyf;,
        Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule;,
        Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule;,
        Lcom/google/android/datatransport/runtime/time/TimeModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/f$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/f;->f()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    move-result-object p0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public abstract f()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
.end method

.method public abstract j()Lcom/google/android/datatransport/runtime/TransportRuntime;
.end method
