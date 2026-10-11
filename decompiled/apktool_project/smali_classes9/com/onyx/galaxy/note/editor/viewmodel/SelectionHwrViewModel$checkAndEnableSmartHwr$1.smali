.class final Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->g(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field final synthetic $smartHwrButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->$smartHwrButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->$recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->this$0:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->$smartHwrButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->$recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->this$0:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;->$smartHwrButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    invoke-direct {v1, v2, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;->activateHwrEngine(Landroid/content/Context;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
