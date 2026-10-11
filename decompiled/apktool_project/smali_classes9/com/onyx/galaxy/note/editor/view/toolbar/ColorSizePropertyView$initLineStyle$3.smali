.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "lineStyleType",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Integer;)V"
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;->invoke(Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    const-string v1, "penViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    .line 3
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$updateLineStyle(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)V

    .line 4
    sget-object v3, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getLineStyleTypeOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphShapeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3$1;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setLineStyleType(I)V

    :cond_5
    return-void
.end method
