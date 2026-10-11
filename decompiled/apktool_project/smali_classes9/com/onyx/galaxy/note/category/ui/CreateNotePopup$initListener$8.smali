.class final Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8;->this$0:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8;->this$0:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

    const-string v1, "click_galaxy_note_add_0006"

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;->access$reportEvent(Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8;->this$0:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup$initListener$8$a;-><init>(Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
