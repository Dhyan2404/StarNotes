.class public final Lio/grpc/Context$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lio/grpc/Context;


# direct methods
.method public constructor <init>(Lio/grpc/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/Context$i;->a:Lio/grpc/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Context$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/Context$i;-><init>(Lio/grpc/Context;)V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 1

    iget-object p0, p0, Lio/grpc/Context$i;->a:Lio/grpc/Context;

    instance-of v0, p0, Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_0

    check-cast p0, Lio/grpc/Context$CancellableContext;

    invoke-virtual {p1}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/Context;->M()V

    :goto_0
    return-void
.end method
