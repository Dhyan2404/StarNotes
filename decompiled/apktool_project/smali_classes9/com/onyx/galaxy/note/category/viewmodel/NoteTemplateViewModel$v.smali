.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateFragmentArgs()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/Orientation;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
            "Lcom/onyx/android/sdk/base/data/Orientation;",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->f:Lcom/onyx/android/sdk/base/data/Orientation;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->f:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setFromMMKV(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->access$setTemplateParams(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurFillColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->selectPaperColor(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkPaperSelected(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;->a(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
