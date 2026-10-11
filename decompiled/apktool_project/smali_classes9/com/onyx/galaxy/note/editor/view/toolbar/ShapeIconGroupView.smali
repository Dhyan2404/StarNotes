.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;
.super Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseCompatLoadingForDrawables"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeIconGroupView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeIconGroupView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013B\u001d\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0016B%\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0018J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;",
        "",
        "drawableId",
        "Landroid/graphics/drawable/VectorDrawable;",
        "j",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "i",
        "(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;",
        "",
        "setDrawableResource",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getViewShapeType",
        "",
        "isVipType",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapeIconGroupView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeIconGroupView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
    }
.end annotation


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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final i(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private final j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;->i(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    return-object p0
.end method

.method public isVipType()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->isVipType()Z

    move-result p0

    return p0
.end method

.method public setDrawableResource()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getDrawableRes()Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getBgRes()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setBgDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->isThemeIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectRes()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setSelectDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectArrow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setSelectArrowDrawable(Landroid/graphics/drawable/VectorDrawable;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getNormalRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setNormalDrawable(Landroid/graphics/drawable/VectorDrawable;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getSelectFillRes()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;->j(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setSelectFillDrawable(Landroid/graphics/drawable/VectorDrawable;)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_shape_tool_select_stroke:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setSelectedStrokeDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->applyIconTheme()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
