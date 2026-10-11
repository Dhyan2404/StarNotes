.class final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->onCloudStorageRefreshTokenFailedEvent(Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/app/Activity;",
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
.field final synthetic $event:Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;->$event:Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;->invoke(Landroid/app/Activity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->driveTokenExpiredTipContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1;->$event:Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->showTips(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method
