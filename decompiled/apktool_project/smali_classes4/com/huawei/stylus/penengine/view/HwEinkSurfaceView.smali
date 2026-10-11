.class public Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final TOOL_TYPE_BOTH:I = 0x3

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field public static final i:Ljava/lang/String; = "HwEinkSurfaceView"


# instance fields
.field public e:Landroid/view/SurfaceView;

.field public f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

.field public g:Landroid/content/Context;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->h:Z

    .line 5
    iput-object p1, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->g:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    iget-object v0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->initView(Landroid/util/AttributeSet;I)Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->e:Landroid/view/SurfaceView;

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object p2, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->e:Landroid/view/SurfaceView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public canPaste()Z
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->canPaste()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke canPaste failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public canRedo()Z
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->canRedo()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke canRedo failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public canUndo()Z
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->canUndo()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke canUndo failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public cancelSelection()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->cancelSelection()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, cancelSelection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->clear()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke clear failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public copySelection()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->copySelection()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, copySelection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public cutSelection()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->cutSelection()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, cutSelection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->h:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public eraseArea(Landroid/graphics/Path;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->eraseArea(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, invoke eraseArea failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public eraseSelection()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->eraseSelection()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, eraseSelection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getActionMode()I
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getActionMode()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getWritingMode failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getEraserType()I
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getEraserType()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getEraserType failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public getEraserWidth()I
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getEraserWidth()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getEraserRadius failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    return p0
.end method

.method public getPenColor()I
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getPenColor()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getBrushColor failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x1000000

    return p0
.end method

.method public getPenType()I
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getPenType()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getBrushType failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public getPenWidth()F
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getPenWidth()F

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getBrushWidth failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x41200000    # 10.0f

    return p0
.end method

.method public getSelectionPath()Landroid/graphics/Path;
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getSelectionPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getSelectionPath failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0
.end method

.method public getSelectionStroke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getSelectionStroke()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getSelectionStroke failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getStrokeInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getStrokeInfo()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getStrokeInfo failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, getThumbnail failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0xc8

    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->getThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, getThumbnail failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p1, 0xc8

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public hasAction()Z
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->hasAction()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke hasAction failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hideArea(Landroid/graphics/Path;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->hideArea(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, invoke hideArea failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke isEmpty failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pasteSelection(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->pasteSelection(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, pasteSelection failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public redo()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->redo()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke redo failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setActionMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setActionMode(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setWritingMode failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBackground(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setBackground(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setBackground failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)Z
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setBackgroundBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setBackgroundBitmap failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setClipPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setClipPath failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDispatchPoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->h:Z

    return-void
.end method

.method public setEraserBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setEraserBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setEraserBackgroundBitmap failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEraserInputToolType(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setEraserInputToolType(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setEraserToolType failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEraserShowBorder(Z)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setEraserShowBorder(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setEraserShowBorder failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEraserType(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setEraserType(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setEraserType failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEraserWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setEraserWidth(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setEraserRadius failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHwEinkListener(Lcom/huawei/stylus/penengine/eink/listener/IHwEinkListener;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setHwEinkListener(Lcom/huawei/stylus/penengine/eink/listener/IHwEinkListener;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setHwEinkPointListener failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setInputToolType(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setInputToolType(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setInputToolType failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPenColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setPenColor(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setBrushColor failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPenType(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setPenType(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setBrushType failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPenWidth(F)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setPenWidth(F)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setBrushWidth failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSelectInputToolType(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setSelectInputToolType(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setSelectToolType failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStrokeInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/eink/model/StrokeInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->setStrokeInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, setStrokeInfo failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showArea(Landroid/graphics/Path;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->showArea(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string p1, "invalid view, invoke showArea failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public undo()V
    .locals 1

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->f:Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/penkit/impl/eink/HwEinkStylusImpl;->undo()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwEinkSurfaceView;->i:Ljava/lang/String;

    const-string v0, "invalid view, invoke undo failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
