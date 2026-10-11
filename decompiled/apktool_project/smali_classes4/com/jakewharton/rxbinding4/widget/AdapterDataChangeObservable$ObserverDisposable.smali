.class public final Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;
.super Lio/reactivex/rxjava3/android/MainThreadDisposable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Lio/reactivex/rxjava3/android/MainThreadDisposable;"
    }
.end annotation


# instance fields
.field public final f:Landroid/database/DataSetObserver;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 1
    .param p1    # Landroid/widget/Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;->g:Landroid/widget/Adapter;

    new-instance p1, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable$dataSetObserver$1;

    invoke-direct {p1, p0, p2}, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable$dataSetObserver$1;-><init>(Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;Lio/reactivex/rxjava3/core/Observer;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;->f:Landroid/database/DataSetObserver;

    return-void
.end method

.method public static final synthetic a(Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;)Landroid/widget/Adapter;
    .locals 0

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;->g:Landroid/widget/Adapter;

    return-object p0
.end method


# virtual methods
.method public onDispose()V
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;->g:Landroid/widget/Adapter;

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;->f:Landroid/database/DataSetObserver;

    invoke-interface {v0, p0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
