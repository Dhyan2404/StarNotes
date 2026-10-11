.class final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->p(Landroid/view/View;)V
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
        "percent",
        "",
        "value",
        "fromUser",
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
.field final synthetic $popup:Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->$popup:Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getTextStyle$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSpacing(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getInputHelper$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "inputHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance p3, Lcom/onyx/android/sdk/universal/editor/events/note/TextSpacingEvent;

    invoke-direct {p3, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSpacingEvent;-><init>(F)V

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->postEvent(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->$popup:Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$formatTextSpacing(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setValueText(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getTextInputConfig(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    new-instance p3, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1$1;

    invoke-direct {p3, p2}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1$1;-><init>(F)V

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getTextStyle$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$updateTextSpacingView(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    return-void
.end method
