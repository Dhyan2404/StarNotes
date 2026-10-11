.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->J(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/galaxy/note/category/action/DelayShowLoadingAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/galaxy/note/category/action/DelayShowLoadingAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$j0;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$j0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/category/action/DelayShowLoadingAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/DelayShowLoadingAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$j0;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getActivityContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/DelayShowLoadingAction;-><init>(Landroid/content/Context;J)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$j0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$j0;->a(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
