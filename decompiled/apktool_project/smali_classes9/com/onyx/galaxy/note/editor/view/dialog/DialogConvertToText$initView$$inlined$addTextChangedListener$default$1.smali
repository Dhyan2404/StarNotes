.class public final Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText$initView$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 DialogConvertToText.kt\ncom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n104#2,6:98\n71#3:104\n77#4:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 DialogConvertToText.kt\ncom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n104#2,6:98\n71#3:104\n77#4:105\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText$initView$$inlined$addTextChangedListener$default$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText$initView$$inlined$addTextChangedListener$default$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;)Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;->convert:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText$initView$$inlined$addTextChangedListener$default$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;)Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;->copy:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText$initView$$inlined$addTextChangedListener$default$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;)Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;->buttonDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText$initView$$inlined$addTextChangedListener$default$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/dialog/DialogConvertToText;)Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;->export:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
