.class final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2;
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
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,394:1\n125#2,17:395\n*S KotlinDebug\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2\n*L\n273#1:395,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
        "SMAP\nColorPickView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,394:1\n125#2,17:395\n*S KotlinDebug\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2\n*L\n273#1:395,17\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2;->invoke(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(F)V
    .locals 4

    const/16 v0, 0xff

    int-to-float v1, v0

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->getSelectionColor()I

    move-result v1

    shr-int/lit8 v2, v1, 0x10

    and-int/2addr v2, v0

    shr-int/lit8 v3, v1, 0x8

    and-int/2addr v3, v0

    and-int/2addr v0, v1

    .line 3
    invoke-static {p1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorValueCallback$2;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$saveInputColor(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;I)V

    return-void
.end method
