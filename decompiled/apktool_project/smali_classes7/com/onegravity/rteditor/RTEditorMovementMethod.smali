.class public Lcom/onegravity/rteditor/RTEditorMovementMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "SourceFile"


# static fields
.field public static a:Lcom/onegravity/rteditor/RTEditorMovementMethod;

.field public static b:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/RTEditorMovementMethod;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/text/method/MovementMethod;
    .locals 2

    const-class v0, Lcom/onegravity/rteditor/RTEditorMovementMethod;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onegravity/rteditor/RTEditorMovementMethod;->a:Lcom/onegravity/rteditor/RTEditorMovementMethod;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onegravity/rteditor/RTEditorMovementMethod;

    invoke-direct {v1}, Lcom/onegravity/rteditor/RTEditorMovementMethod;-><init>()V

    sput-object v1, Lcom/onegravity/rteditor/RTEditorMovementMethod;->a:Lcom/onegravity/rteditor/RTEditorMovementMethod;

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/RTEditorMovementMethod;->a:Lcom/onegravity/rteditor/RTEditorMovementMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Landroid/view/MotionEvent;)I
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    sget-object v2, Lcom/onegravity/rteditor/RTEditorMovementMethod;->b:Landroid/graphics/Rect;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/onegravity/rteditor/RTEditorMovementMethod;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    sget-object v3, Lcom/onegravity/rteditor/RTEditorMovementMethod;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 v3, -0x1

    if-nez p2, :cond_0

    monitor-exit v2

    return v3

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    sub-int v1, v0, v2

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-interface {p2, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    const/4 v5, 0x0

    invoke-interface {p2, v5, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_2

    array-length v6, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v9, v4, v7

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v8, v5

    :cond_3
    sub-int/2addr p0, v8

    new-array v4, v1, [F

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, p2, v5, v1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    const-class v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-interface {p2, v5, v1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_5

    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    invoke-interface {p2, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {p2, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, p1

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2
    if-ge v10, v11, :cond_4

    aget v12, v4, v10

    mul-float/2addr v12, v9

    aput v12, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-ge v5, v1, :cond_8

    aget p2, v4, v5

    add-float/2addr p2, p1

    int-to-float v0, p0

    cmpl-float v6, p2, v0

    if-ltz v6, :cond_7

    sub-float p0, v0, p1

    sub-float/2addr p2, v0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/2addr v2, v5

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move p1, p2

    goto :goto_3

    :cond_8
    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/onegravity/rteditor/RTEditorMovementMethod;->a(Landroid/widget/TextView;Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    array-length v3, v2

    if-eqz v3, :cond_3

    const/4 p0, 0x0

    if-ne v0, v1, :cond_1

    aget-object p0, v2, p0

    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    aget-object p1, v2, p0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    aget-object p0, v2, p0

    invoke-interface {p2, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
