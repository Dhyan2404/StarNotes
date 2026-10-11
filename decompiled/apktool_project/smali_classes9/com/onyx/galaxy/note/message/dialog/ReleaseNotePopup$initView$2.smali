.class public final Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->r()V
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
        "com/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
        "position",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->pageText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v4}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getImageList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->pageIndicator:Lcom/onyx/galaxy/note/ui/view/PageIndicatorView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v3}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getImageList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorView;->setIndicatorIndex(II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v3}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getTitleList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->contentText:Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;->a:Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->access$getContentList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;->setRichText(Ljava/lang/String;)V

    return-void
.end method
