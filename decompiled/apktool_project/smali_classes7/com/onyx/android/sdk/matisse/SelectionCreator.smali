.class public final Lcom/onyx/android/sdk/matisse/SelectionCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/SelectionCreator$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/matisse/Matisse;

.field public final b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/Matisse;Ljava/util/Set;Z)V
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/matisse/Matisse;",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->a:Lcom/onyx/android/sdk/matisse/Matisse;

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getCleanInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-object p2, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    iput-boolean p3, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mediaTypeExclusive:Z

    const/4 p0, -0x1

    iput p0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->orientation:I

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/onyx/android/sdk/matisse/filter/Filter;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/matisse/filter/Filter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public autoHideToolbarOnSingleTap(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->autoHideToobar:Z

    return-object p0
.end method

.method public capture(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->capture:Z

    return-object p0
.end method

.method public captureStrategy(Lcom/onyx/android/sdk/matisse/internal/entity/CaptureStrategy;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/onyx/android/sdk/matisse/internal/entity/CaptureStrategy;

    return-object p0
.end method

.method public countable(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    return-object p0
.end method

.method public forResult(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->a:Lcom/onyx/android/sdk/matisse/Matisse;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/Matisse;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->a:Lcom/onyx/android/sdk/matisse/Matisse;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/Matisse;->b()Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public gridExpectedSize(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    return-object p0
.end method

.method public imageEngine(Lcom/onyx/android/sdk/matisse/engine/ImageEngine;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    return-object p0
.end method

.method public maxOriginalSize(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    return-object p0
.end method

.method public maxSelectable(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    if-gtz v1, :cond_0

    iget v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    if-gtz v1, :cond_0

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already set maxImageSelectable and maxVideoSelectable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSelectable must be greater than or equal to one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public maxSelectablePerMediaType(II)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    const/4 v1, -0x1

    iput v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    iput p2, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max selectable must be greater than or equal to one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public originalEnable(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalable:Z

    return-object p0
.end method

.method public restrictOrientation(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->orientation:I

    return-object p0
.end method

.method public setKeepScreenOnEnable(Ljava/lang/Boolean;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->keepScreenOnEnable:Z

    return-object p0
.end method

.method public setOnCheckedListener(Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;

    return-object p0
.end method

.method public setOnSelectedListener(Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;

    return-object p0
.end method

.method public showPreview(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showPreview:Z

    return-object p0
.end method

.method public showSingleMediaType(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    return-object p0
.end method

.method public spanCount(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->spanCount:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spanCount cannot be less than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public theme(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->themeId:I

    return-object p0
.end method

.method public thumbnailScale(F)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/SelectionCreator;->b:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->thumbnailScale:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Thumbnail scale must be between (0.0, 1.0]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
