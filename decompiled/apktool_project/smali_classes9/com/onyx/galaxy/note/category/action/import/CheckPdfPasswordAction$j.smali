.class public final Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->v(Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->f:Landroid/net/Uri;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j$a;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->f:Landroid/net/Uri;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j$a;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;->a(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
