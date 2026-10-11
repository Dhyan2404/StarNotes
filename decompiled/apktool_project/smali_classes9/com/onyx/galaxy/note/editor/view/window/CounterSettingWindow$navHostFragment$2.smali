.class final Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$navHostFragment$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/navigation/fragment/NavHostFragment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/fragment/NavHostFragment;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$navHostFragment$2;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/navigation/fragment/NavHostFragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$navHostFragment$2;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->navTimerHostFragmentMain:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentContainerView;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$navHostFragment$2;->invoke()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p0

    return-object p0
.end method
