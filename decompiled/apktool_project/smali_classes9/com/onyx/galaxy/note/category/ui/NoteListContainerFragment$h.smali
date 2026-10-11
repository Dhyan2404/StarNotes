.class public final Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$h;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$h;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$h;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    const-string v1, "bannerLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleBannerNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$h;->a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    return-void
.end method
