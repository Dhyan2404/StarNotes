.class public Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final STROKE_TYPE_BALLPOINT:I = 0x2

.field public static final STROKE_TYPE_ERASER:I = 0x0

.field public static final STROKE_TYPE_LASSO:I = 0x5

.field public static final STROKE_TYPE_MARKER:I = 0x4

.field public static final STROKE_TYPE_PEN:I = 0x1

.field public static final STROKE_TYPE_PENCIL:I = 0x3

.field public static final h:Ljava/lang/String; = "HnHandWritingView"

.field public static final i:Ljava/lang/String; = "com.hihonor.stylus.penengine.view.IDoubleClickListener"


# instance fields
.field public e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

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
    invoke-direct {p0, p1, v0}, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iget-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/hihonor/penkit/impl/kitpaint/HnHandWritingImpl;

    invoke-direct {v0, p1}, Lcom/hihonor/penkit/impl/kitpaint/HnHandWritingImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    .line 6
    invoke-interface {v0, p2, p3}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->initView(Landroid/util/AttributeSet;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->f:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p1, p2, p3}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->initToolBox(Landroid/util/AttributeSet;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->g:Landroid/view/View;

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
    iget-object p3, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->f:Landroid/view/View;

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->g:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->canRedo()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canUndo()Z
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->canUndo()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->clear()V

    return-void
.end method

.method public getContentRange()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->getContentRange()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->getContentRange()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0, p1, p2}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->getThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getVisibleRange()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->getVisibleRange()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public isChanged()Z
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->isChanged()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public load()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->load()Z

    return-void
.end method

.method public load(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "filepath is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->load(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 8
    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "load file, getCanonicalPath IOException."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_1
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "file not exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public redo()V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->redo()V

    :cond_0
    return-void
.end method

.method public save(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "filepath is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->save(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setActionMode(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setActionMode(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "setActionMode not support"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDoubleClickListener(Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;)V
    .locals 2

    :try_start_0
    const-string v0, "com.hihonor.stylus.penengine.view.IDoubleClickListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v1, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$b;

    invoke-direct {v1, p0, p1}, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$b;-><init>(Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;Lcom/hihonor/android/magicx/app/penengine/view/IDoubleClickListener;)V

    invoke-interface {v0, v1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setDoubleClickListener(Lcom/hihonor/stylus/penengine/view/IDoubleClickListener;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "setDoubleClickListener not support"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catch_1
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "ClickListener cannot be found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMaxPages(I)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setMaxPages(I)V

    return-void
.end method

.method public setPaintScrollable(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setPaintScrollable(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "setPaintScrollable not support"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPaintViewListener(Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;)V
    .locals 2

    iget-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;

    invoke-direct {v1, p0, p1}, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView$a;-><init>(Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;Lcom/hihonor/android/magicx/app/penengine/view/IPaintViewListener;)V

    invoke-interface {v0, v1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setPaintViewListener(Lcom/hihonor/stylus/penengine/view/IPaintViewListener;)V

    :cond_0
    return-void
.end method

.method public setPenWidthScale(F)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setPenWidthScale(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "setPenWidthScale not support"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setSupportFinger(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0, p1}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setSupportFinger(Z)V

    return-void
.end method

.method public setToolBoxVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->g:Landroid/view/View;

    if-nez p0, :cond_0

    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->h:Ljava/lang/String;

    const-string p1, "ToolBox is null ,set visibility failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setToolType(III)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    invoke-interface {p0, p1, p2, p3}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->setToolType(III)V

    return-void
.end method

.method public undo()V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/view/HnHandWritingView;->e:Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/stylus/penengine/view/IHnHandWritingView;->undo()V

    :cond_0
    return-void
.end method
