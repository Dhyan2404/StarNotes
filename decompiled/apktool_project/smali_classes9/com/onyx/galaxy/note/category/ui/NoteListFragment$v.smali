.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getNotificationViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->onNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;->a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    return-void
.end method
