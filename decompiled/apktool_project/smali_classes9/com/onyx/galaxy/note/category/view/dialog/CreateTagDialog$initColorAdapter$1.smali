.class public final Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;",
        "onSelectColor",
        "",
        "color",
        "",
        "onShowColorPicker",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

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
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->access$setTagColor$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->ivTagFaceBottom:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->access$getColorsOption$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/IntListOption;->set(Lcom/onyx/android/sdk/base/extension/IntList;)V

    return-void
.end method

.method public onShowColorPicker()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method
