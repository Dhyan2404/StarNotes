.class public final Lcom/sunia/HTREnginev2/dmj$a;
.super Lio/reactivex/rxjava3/android/MainThreadDisposable;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/dmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final f:Landroid/view/MenuItem;

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dmj$a;->f:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dmj$a;->g:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/dmj$a;->h:Lio/reactivex/rxjava3/core/Observer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/dmj$a;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dmj$a;->h:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dmj$a;->h:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->dispose()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDispose()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dmj$a;->f:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/view/MenuItemActionViewCollapseEvent;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxbinding4/view/MenuItemActionViewCollapseEvent;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/dmj$a;->a(Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;)Z

    move-result p0

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/view/MenuItemActionViewExpandEvent;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxbinding4/view/MenuItemActionViewExpandEvent;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/dmj$a;->a(Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;)Z

    move-result p0

    return p0
.end method
