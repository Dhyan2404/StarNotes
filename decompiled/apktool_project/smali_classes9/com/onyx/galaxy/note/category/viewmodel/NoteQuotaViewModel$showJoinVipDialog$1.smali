.class final Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$showJoinVipDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->showJoinVipDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;",
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
        "Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$showJoinVipDialog$1;->this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$showJoinVipDialog$1;->invoke(Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;->dismiss()V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$showJoinVipDialog$1;->this$0:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    const-string p1, "joinVipWithNotebookNoneQuota"

    const-string v0, "homepage_add_note_popups"

    invoke-static {p0, p1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->access$navigate(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
