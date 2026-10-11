.class final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->D()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,394:1\n117#2:395\n125#2,17:396\n*S KotlinDebug\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1\n*L\n266#1:395\n267#1:396,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nColorPickView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,394:1\n117#2:395\n125#2,17:396\n*S KotlinDebug\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1\n*L\n266#1:395\n267#1:396,17\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->getSelectionColor()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$1;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$saveInputColor(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;I)V

    return-void
.end method
