.class public final synthetic Lcom/sunia/HTREnginev2/i7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/android/MainThreadDisposable;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/android/MainThreadDisposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i7j;->e:Lio/reactivex/rxjava3/android/MainThreadDisposable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i7j;->e:Lio/reactivex/rxjava3/android/MainThreadDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->onDispose()V

    return-void
.end method
