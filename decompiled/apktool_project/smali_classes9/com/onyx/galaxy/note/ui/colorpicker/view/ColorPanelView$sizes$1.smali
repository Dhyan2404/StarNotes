.class public final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008H*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0004\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0004\u001a\u0004\u0008#\u0010\u0006\"\u0004\u0008$\u0010\u0008R\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0004\u001a\u0004\u0008\'\u0010\u0006\"\u0004\u0008(\u0010\u0008R\"\u0010-\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0004\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\"\u00105\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u0004\u001a\u0004\u00083\u0010\u0006\"\u0004\u00084\u0010\u0008R\"\u00109\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u0004\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0004\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010\u0004\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008R\"\u0010E\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010\u0004\u001a\u0004\u0008C\u0010\u0006\"\u0004\u0008D\u0010\u0008R\"\u0010I\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u0004\u001a\u0004\u0008G\u0010\u0006\"\u0004\u0008H\u0010\u0008\u00a8\u0006J"
    }
    d2 = {
        "com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1",
        "",
        "",
        "a",
        "F",
        "getViewWidth",
        "()F",
        "setViewWidth",
        "(F)V",
        "viewWidth",
        "b",
        "getViewHeight",
        "setViewHeight",
        "viewHeight",
        "c",
        "getBarHeight",
        "setBarHeight",
        "barHeight",
        "d",
        "getPickBlock",
        "setPickBlock",
        "pickBlock",
        "e",
        "getSlideBlock",
        "setSlideBlock",
        "slideBlock",
        "f",
        "getSlideBlockShadowSize",
        "setSlideBlockShadowSize",
        "slideBlockShadowSize",
        "g",
        "getScreenPicker",
        "setScreenPicker",
        "screenPicker",
        "h",
        "getPickBlockStroke",
        "setPickBlockStroke",
        "pickBlockStroke",
        "i",
        "getSlideBlockStroke",
        "setSlideBlockStroke",
        "slideBlockStroke",
        "j",
        "getScreenPickerStroke",
        "setScreenPickerStroke",
        "screenPickerStroke",
        "k",
        "getMinPanelX",
        "setMinPanelX",
        "minPanelX",
        "l",
        "getMaxPanelX",
        "setMaxPanelX",
        "maxPanelX",
        "m",
        "getMinPanelY",
        "setMinPanelY",
        "minPanelY",
        "n",
        "getMaxPanelY",
        "setMaxPanelY",
        "maxPanelY",
        "o",
        "getMinBarX",
        "setMinBarX",
        "minBarX",
        "p",
        "getMaxBarX",
        "setMaxBarX",
        "maxBarX",
        "q",
        "getCaptureIconPaddingPercent",
        "setCaptureIconPaddingPercent",
        "captureIconPaddingPercent",
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
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->f:F

    sget v1, Lcom/onyx/galaxy/note/R$fraction;->capture_icon_padding_percent:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->q:F

    return-void
.end method


# virtual methods
.method public final getBarHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->c:F

    return p0
.end method

.method public final getCaptureIconPaddingPercent()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->q:F

    return p0
.end method

.method public final getMaxBarX()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->p:F

    return p0
.end method

.method public final getMaxPanelX()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->l:F

    return p0
.end method

.method public final getMaxPanelY()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->n:F

    return p0
.end method

.method public final getMinBarX()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->o:F

    return p0
.end method

.method public final getMinPanelX()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->k:F

    return p0
.end method

.method public final getMinPanelY()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->m:F

    return p0
.end method

.method public final getPickBlock()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->d:F

    return p0
.end method

.method public final getPickBlockStroke()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->h:F

    return p0
.end method

.method public final getScreenPicker()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->g:F

    return p0
.end method

.method public final getScreenPickerStroke()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->j:F

    return p0
.end method

.method public final getSlideBlock()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->e:F

    return p0
.end method

.method public final getSlideBlockShadowSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->f:F

    return p0
.end method

.method public final getSlideBlockStroke()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->i:F

    return p0
.end method

.method public final getViewHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->b:F

    return p0
.end method

.method public final getViewWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->a:F

    return p0
.end method

.method public final setBarHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->c:F

    return-void
.end method

.method public final setCaptureIconPaddingPercent(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->q:F

    return-void
.end method

.method public final setMaxBarX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->p:F

    return-void
.end method

.method public final setMaxPanelX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->l:F

    return-void
.end method

.method public final setMaxPanelY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->n:F

    return-void
.end method

.method public final setMinBarX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->o:F

    return-void
.end method

.method public final setMinPanelX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->k:F

    return-void
.end method

.method public final setMinPanelY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->m:F

    return-void
.end method

.method public final setPickBlock(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->d:F

    return-void
.end method

.method public final setPickBlockStroke(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->h:F

    return-void
.end method

.method public final setScreenPicker(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->g:F

    return-void
.end method

.method public final setScreenPickerStroke(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->j:F

    return-void
.end method

.method public final setSlideBlock(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->e:F

    return-void
.end method

.method public final setSlideBlockShadowSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->f:F

    return-void
.end method

.method public final setSlideBlockStroke(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->i:F

    return-void
.end method

.method public final setViewHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->b:F

    return-void
.end method

.method public final setViewWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;->a:F

    return-void
.end method
