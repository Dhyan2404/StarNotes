.class final Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;->invoke(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getNoteQuotaViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->setNoteUsageInfo(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getNoteQuotaViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->noteQuotaBinding:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    const-string v0, "noteQuotaBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->checkLeftNoteQuota(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V

    return-void
.end method
