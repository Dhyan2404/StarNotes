.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/Throwable;

.field public final synthetic f:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "e"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;->f:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;->f:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->f:Lio/reactivex/rxjava3/core/SingleObserver;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;->e:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
