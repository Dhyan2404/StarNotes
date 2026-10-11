.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$b;

.field public final f:J


# direct methods
.method public constructor <init>(JLio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "parent"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$c;->f:J

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$c;->e:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$c;->e:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$b;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$c;->f:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTimeoutTimed$b;->onTimeout(J)V

    return-void
.end method
