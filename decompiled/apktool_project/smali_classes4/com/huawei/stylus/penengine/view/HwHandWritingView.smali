.class public Lcom/huawei/stylus/penengine/view/HwHandWritingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "HwHandWritingView"


# instance fields
.field public e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/huawei/stylus/penengine/view/HwHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/stylus/penengine/view/HwHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iget-object v0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/huawei/penkit/impl/kitpaint/HwHandWritingImpl;

    invoke-direct {v0, p1}, Lcom/huawei/penkit/impl/kitpaint/HwHandWritingImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    .line 6
    invoke-interface {v0, p2, p3}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->initView(Landroid/util/AttributeSet;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->f:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p1, p2, p3}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->initToolBox(Landroid/util/AttributeSet;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->g:Landroid/view/View;

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x51

    .line 10
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iget-object p3, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->f:Landroid/view/View;

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->g:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->canRedo()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canUndo()Z
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->canUndo()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->clear()V

    return-void
.end method

.method public clearStepChange()Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    sget-object p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    const-string v0, "clearStepChange error, mHandWritingView == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->clearStepChange()V

    const/4 p0, 0x1

    return p0
.end method

.method public enableCanvasScale(Z)Z
    .locals 3

    sget-object v0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCanvasScale :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    const-string p0, "enableCanvasScale error, mHandWritingView == null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->enableCanvasScale(Z)Z

    move-result p0

    return p0
.end method

.method public final enableDrag(Z)Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->g:Landroid/view/View;

    if-nez v0, :cond_1

    sget-object p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    const-string p1, "mToolBox is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->enableDrag(Landroid/view/ViewGroup;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public enableInstantShape(Z)Z
    .locals 3

    sget-object v0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInstantShape :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    const-string p0, "enableInstantShape error, mHandWritingView == null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->enableInstantShape(Z)Z

    move-result p0

    return p0
.end method

.method public enableInstantTable(Z)Z
    .locals 3

    sget-object v0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInstantTable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    const-string p0, "enableInstantTable error, mHandWritingView == null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->enableInstantTable(Z)Z

    move-result p0

    return p0
.end method

.method public enablePencilTilt(Z)Z
    .locals 3

    sget-object v0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePencilTilt :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    const-string p0, "enablePencilTilt error, mHandWritingView == null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->enablePencilTilt(Z)Z

    move-result p0

    return p0
.end method

.method public getContentRange()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->getContentRange()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->getContentRange()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0, p1, p2}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->getThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getVisibleRange()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->getVisibleRange()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public isChanged()Z
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->isChanged()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public load()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->load()Z

    return-void
.end method

.method public load(Ljava/lang/String;)Z
    .locals 2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->load(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    const-string p1, "load file, getCanonicalPath IOException."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_0
    sget-object p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    const-string p1, "file not exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public redo()V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->redo()V

    :cond_0
    return-void
.end method

.method public resetChangedState()Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    sget-object p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    const-string v0, "resetChangedState error, mHandWritingView == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->resetChangedState()V

    const/4 p0, 0x1

    return p0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->save(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setMaxPages(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->setMaxPages(I)V

    return-void
.end method

.method public setPaintScrollable(Z)Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-nez p0, :cond_1

    sget-object p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->h:Ljava/lang/String;

    const-string p1, "setPaintScrollable error, mHandWritingView == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->setPaintScrollable(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setPaintViewListener(Lcom/huawei/stylus/penengine/view/IPaintViewListener;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->setPaintViewListener(Lcom/huawei/stylus/penengine/view/IPaintViewListener;)V

    :cond_0
    return-void
.end method

.method public setSupportFinger(Z)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0, p1}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->setSupportFinger(Z)V

    return-void
.end method

.method public setToolType(III)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    invoke-interface {p0, p1, p2, p3}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->setToolType(III)V

    return-void
.end method

.method public setToolViewVisible(IZ)Z
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->setToolViewVisible(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public undo()V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/view/HwHandWritingView;->e:Lcom/huawei/stylus/penengine/view/IHwHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/huawei/stylus/penengine/view/IHwHandWritingView;->undo()V

    :cond_0
    return-void
.end method
