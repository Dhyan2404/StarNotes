.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->J0()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListFunctionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,598:1\n65#2,4:599\n37#2:603\n53#2:604\n72#2:605\n*S KotlinDebug\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3\n*L\n411#1:599,4\n411#1:603\n411#1:604\n411#1:605\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteListFunctionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,598:1\n65#2,4:599\n37#2:603\n53#2:604\n72#2:605\n*S KotlinDebug\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3\n*L\n411#1:599,4\n411#1:603\n411#1:604\n411#1:605\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

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

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->sidebarNotificationBinding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->container:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->sidebarNotificationBinding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    const-string v1, "image"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->sidebarNotificationBinding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    const-string v2, "sidebarNotificationBinding"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getNotificationViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleSidebarNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;-><init>(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;->a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    return-void
.end method
