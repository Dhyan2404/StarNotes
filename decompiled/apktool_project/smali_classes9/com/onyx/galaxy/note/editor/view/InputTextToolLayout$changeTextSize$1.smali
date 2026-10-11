.class final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->o(Landroid/view/View;)V
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
        "<anonymous parameter 0>",
        "",
        "value",
        "<anonymous parameter 2>",
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
.field final synthetic $max:I

.field final synthetic $min:I

.field final synthetic $popup:Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;


# direct methods
.method public constructor <init>(IILcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->$min:I

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->$max:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->$popup:Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 1

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->$min:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->$max:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->$popup:Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setValueText(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$postAndSaveTextSize(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;I)V

    return-void
.end method
