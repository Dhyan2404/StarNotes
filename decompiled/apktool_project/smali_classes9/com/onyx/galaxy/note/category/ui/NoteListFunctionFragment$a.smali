.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$a;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$a;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$a;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->sidebarNotificationBinding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$a;->a(Ljava/util/List;)V

    return-void
.end method
