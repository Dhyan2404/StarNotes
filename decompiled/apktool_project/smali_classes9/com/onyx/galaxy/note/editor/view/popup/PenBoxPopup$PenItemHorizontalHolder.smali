.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemHorizontalHolder;
.super Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PenItemHorizontalHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemHorizontalHolder;",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;",
        "I",
        "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;",
        "getViewBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;",
        "viewBinding",
        "<init>",
        "(Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final I:Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemHorizontalHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->iconView:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    const-string v1, "iconView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->setIconView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->ivSelectedArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivSelectedArrow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->setIvSelectedArrow(Landroid/view/View;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->clContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v1, "clContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->setClContent(Landroid/view/View;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->vSelectedHorizontal:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v1, "vSelectedHorizontal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->setVSelected(Landroid/view/View;)V

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->value:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->setTvValue(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemHorizontalHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    return-object p0
.end method
