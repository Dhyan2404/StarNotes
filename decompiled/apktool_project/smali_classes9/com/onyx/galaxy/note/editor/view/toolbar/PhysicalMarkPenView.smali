.class public Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;
.super Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseCompatLoadingForDrawables"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B\u001d\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0012B%\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0010\u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "initParams",
        "",
        "isRoundCorner",
        "setRoundCorner",
        "roundedCorner",
        "setDrawableResource",
        "tint",
        "w",
        "Z",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field public w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initParams(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->initParams(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->PhysicalMarkPenView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->PhysicalMarkPenView_isRoundCorner:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;->w:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public setDrawableResource(Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;->w:Z

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getPhysicsDrawables(Z)Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getStrokeRes()I

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setStrokeDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getHighlightRes()I

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawableById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setHighlightDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getFillRes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->getVectorDrawable(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setFillDrawable(Landroid/graphics/drawable/VectorDrawable;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getFillUnselectRes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->getVectorDrawable(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setFillUnselectDrawable(Landroid/graphics/drawable/VectorDrawable;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PhysicalShapeDrawableBean;->getUnselectRes()I

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setUnselectedDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setRoundCorner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;->w:Z

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;->setDrawableResource(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tint()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;->w:Z

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;->setDrawableResource(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
