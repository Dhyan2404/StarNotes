.class final Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->J(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFunctionToolLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1247:1\n254#2:1248\n*S KotlinDebug\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3\n*L\n1100#1:1248\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFunctionToolLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1247:1\n254#2:1248\n*S KotlinDebug\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3\n*L\n1100#1:1248\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;->this$0:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;->this$0:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->access$getShortcutBarMoreFunctionPopup$p(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;->this$0:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    const-string v1, "playLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;->updateAudioSetItem(ZZ)V

    :cond_1
    return-void
.end method
