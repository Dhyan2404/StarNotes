.class public final Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->D0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$f;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$f;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$f;->a(Ljava/util/List;)V

    return-void
.end method
