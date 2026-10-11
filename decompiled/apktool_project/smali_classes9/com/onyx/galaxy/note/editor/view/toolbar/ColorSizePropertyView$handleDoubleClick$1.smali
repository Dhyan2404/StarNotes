.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1",
        "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;",
        "onColorSelected",
        "",
        "color",
        "",
        "onColorSetSelected",
        "colorSet",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;IILcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;",
            "II",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "I",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->q:I

    move v1, p3

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->r:I

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->s:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    move-object v1, p5

    move-object v2, p6

    move-object v3, p1

    move-object v4, p1

    move v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->q:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->s:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->r:I

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$setViewColor(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;Ljava/util/List;I)V

    return-void
.end method

.method public onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->s:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "penViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getColorSet()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->s:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$handleDoubleClick$1;->r:I

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$setViewColor(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;Ljava/util/List;I)V

    return-void
.end method
