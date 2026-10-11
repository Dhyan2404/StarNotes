.class public final Lcom/sunia/HTREnginev2/ngn;
.super Lcom/jakewharton/rxbinding4/InitialValueObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/ngn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding4/InitialValueObservable<",
        "Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/InitialValueObservable;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ngn;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public d()Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ngn;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string p0, "view.text"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    return-object v6
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ngn;->d()Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;

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
            "Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/ngn$a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ngn;->e:Landroid/widget/TextView;

    invoke-direct {v0, v1, p1}, Lcom/sunia/HTREnginev2/ngn$a;-><init>(Landroid/widget/TextView;Lio/reactivex/rxjava3/core/Observer;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ngn;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
