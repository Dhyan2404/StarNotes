.class public final Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;",
        "onSelectColor",
        "",
        "color",
        "",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissColorPicker()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener$DefaultImpls;->onDismissColorPicker(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    return-void
.end method

.method public onSelectColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$getAnnotationColorStyle$p(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$setAnnotationColorStyle$p(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;I)V

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$getAnnotationColorStyle$p(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$getAnnotationColorAdapter(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/IntListOption;->set(Lcom/onyx/android/sdk/base/extension/IntList;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$getAnnotationColorStyle$p(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$getAnnotationColorAdapter(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;->a:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->access$changeAnnotationColor(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;I)V

    return-void
.end method

.method public onShowColorPicker()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener$DefaultImpls;->onShowColorPicker(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    return-void
.end method
