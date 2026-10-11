.class public final Lorg/reactivestreams/FlowAdapters$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reactivestreams/FlowAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Flow$Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reactivestreams/FlowAdapters$h;->e:Ljava/util/concurrent/Flow$Subscription;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$h;->e:Ljava/util/concurrent/Flow$Subscription;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/hog;->a(Ljava/util/concurrent/Flow$Subscription;)V

    return-void
.end method

.method public request(J)V
    .locals 0

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$h;->e:Ljava/util/concurrent/Flow$Subscription;

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/iog;->a(Ljava/util/concurrent/Flow$Subscription;J)V

    return-void
.end method
