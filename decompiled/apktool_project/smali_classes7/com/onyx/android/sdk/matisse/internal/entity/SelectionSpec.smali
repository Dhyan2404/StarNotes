.class public final Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec$b;
    }
.end annotation


# instance fields
.field public autoHideToobar:Z

.field public capture:Z

.field public captureStrategy:Lcom/onyx/android/sdk/matisse/internal/entity/CaptureStrategy;

.field public countable:Z

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/matisse/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public gridExpectedSize:I

.field public hasInited:Z

.field public imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

.field public keepScreenOnEnable:Z

.field public maxImageSelectable:I

.field public maxSelectable:I

.field public maxVideoSelectable:I

.field public mediaTypeExclusive:Z

.field public mimeTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field public onCheckedListener:Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;

.field public onSelectedListener:Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;

.field public orientation:I

.field public originalMaxSize:I

.field public originalable:Z

.field public showPreview:Z

.field public showSingleMediaType:Z

.field public spanCount:I

.field public themeId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public thumbnailScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->keepScreenOnEnable:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;-><init>()V

    return-void
.end method

.method public static getCleanInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->a()V

    return-object v0
.end method

.method public static getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec$b;->a()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mediaTypeExclusive:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    sget v3, Lcom/onyx/android/sdk/imagepicker/R$style;->Matisse_Zhihu:I

    iput v3, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->themeId:I

    iput v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->orientation:I

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    iput v1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    iput v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    iput v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->capture:Z

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/onyx/android/sdk/matisse/internal/entity/CaptureStrategy;

    const/4 v0, 0x3

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->spanCount:I

    iput v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->thumbnailScale:F

    new-instance v0, Lcom/onyx/android/sdk/matisse/engine/impl/GlideEngine;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/engine/impl/GlideEngine;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    iput-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->hasInited:Z

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalable:Z

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->autoHideToobar:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    iput-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showPreview:Z

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->keepScreenOnEnable:Z

    return-void
.end method

.method public needOrientationRestriction()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->orientation:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onlyShowGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/matisse/MimeType;->ofGif()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onlyShowImages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/matisse/MimeType;->ofImage()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onlyShowVideos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/matisse/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public singleSelectionModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
