.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;->a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3\n*L\n1#1,414:1\n69#2:415\n70#2:418\n412#3,2:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3\n*L\n1#1,414:1\n69#2:415\n70#2:418\n412#3,2:416\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/message/model/NotificationModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;->e:Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;->f:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;->e:Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;->f:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->sidebarNotificationBinding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    const-string p4, "sidebarNotificationBinding"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3$accept$$inlined$doOnLayout$1;->f:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getNotificationViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleSidebarNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    return-void
.end method
