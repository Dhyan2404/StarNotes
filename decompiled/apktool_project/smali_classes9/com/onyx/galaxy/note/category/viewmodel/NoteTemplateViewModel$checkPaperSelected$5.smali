.class final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkPaperSelected(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;->this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;->this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p1

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;->getBASE_CATEGORIES_SOURCE()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;-><init>(ZLjava/util/List;)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;->this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5$a;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
