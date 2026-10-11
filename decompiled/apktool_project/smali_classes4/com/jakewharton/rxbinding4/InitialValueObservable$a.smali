.class public final Lcom/jakewharton/rxbinding4/InitialValueObservable$a;
.super Lio/reactivex/rxjava3/core/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/InitialValueObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/jakewharton/rxbinding4/InitialValueObservable;


# direct methods
.method public constructor <init>(Lcom/jakewharton/rxbinding4/InitialValueObservable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/InitialValueObservable$a;->e:Lcom/jakewharton/rxbinding4/InitialValueObservable;

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/InitialValueObservable$a;->e:Lcom/jakewharton/rxbinding4/InitialValueObservable;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding4/InitialValueObservable;->subscribeListener(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
