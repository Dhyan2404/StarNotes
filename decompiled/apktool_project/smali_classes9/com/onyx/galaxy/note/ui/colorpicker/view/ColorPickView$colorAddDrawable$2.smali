.class final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$colorAddDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$colorAddDrawable$2;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$colorAddDrawable$2;->this$0:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$getCurrentColor$p(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)I

    move-result p0

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    .line 5
    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v3

    .line 6
    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    .line 7
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;-><init>(IFIF)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$colorAddDrawable$2;->invoke()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;

    move-result-object p0

    return-object p0
.end method
