.class final Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "progress",
        "",
        "progressValue",
        "isFromUser",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->tvProgressValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-static {v1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->access$generateProgressValueStr(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
