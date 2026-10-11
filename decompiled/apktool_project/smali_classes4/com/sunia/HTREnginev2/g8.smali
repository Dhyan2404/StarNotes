.class public final Lcom/sunia/HTREnginev2/g8;
.super Lcom/jakewharton/rxbinding4/InitialValueObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/g8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding4/InitialValueObservable<",
        "Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 1
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/InitialValueObservable;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    return-void
.end method


# virtual methods
.method public d()Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/AdapterViewNothingSelectionEvent;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewNothingSelectionEvent;-><init>(Landroid/widget/AdapterView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v5

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;-><init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g8;->d()Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;

    move-result-object p0

    return-object p0
.end method

.method public subscribeListener(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jakewharton/rxbinding4/internal/Preconditions;->checkMainThread(Lio/reactivex/rxjava3/core/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/g8$a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    invoke-direct {v0, v1, p1}, Lcom/sunia/HTREnginev2/g8$a;-><init>(Landroid/widget/AdapterView;Lio/reactivex/rxjava3/core/Observer;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g8;->e:Landroid/widget/AdapterView;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
