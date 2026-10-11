.class public final Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBindingAdapterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindingAdapterUtils.kt\ncom/onyx/galaxy/note/common/extension/BindingAdapterUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,95:1\n1855#2,2:96\n256#3,2:98\n*S KotlinDebug\n*F\n+ 1 BindingAdapterUtils.kt\ncom/onyx/galaxy/note/common/extension/BindingAdapterUtils\n*L\n68#1:96,2\n93#1:98,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;",
        "",
        "()V",
        "setShapeTool",
        "",
        "view",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;",
        "penArgs",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;",
        "setTSBMax",
        "tsb",
        "Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;",
        "filedInt",
        "Landroidx/databinding/ObservableInt;",
        "setTSBTicks",
        "audioDataSet",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "setVisibility",
        "Landroid/view/View;",
        "compareLoginType",
        "",
        "currentLoginType",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBindingAdapterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindingAdapterUtils.kt\ncom/onyx/galaxy/note/common/extension/BindingAdapterUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,95:1\n1855#2,2:96\n256#3,2:98\n*S KotlinDebug\n*F\n+ 1 BindingAdapterUtils.kt\ncom/onyx/galaxy/note/common/extension/BindingAdapterUtils\n*L\n68#1:96,2\n93#1:98,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->INSTANCE:Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setShapeTool(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 4
    .param p0    # Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "setPhyShapeTool"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setShapeTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->setHintColor(I)V

    return-void
.end method

.method public static final setShapeTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 4
    .param p0    # Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "setShapeTool"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setShapeTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setHintColor(I)V

    return-void
.end method

.method public static final setTSBMax(Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;Landroidx/databinding/ObservableInt;)V
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/ObservableInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "setTSBMax"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tsb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;->initSeekBarInfo()V

    :cond_0
    return-void
.end method

.method public static final setTSBTicks(Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V
    .locals 8
    .param p0    # Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "setTSBTicks"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tsb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;

    long-to-float v5, v2

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/galaxy/note/R$color;->overlay_07:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;-><init>(FI)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;->setTicks(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static final setVisibility(Landroid/view/View;II)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "compareLoginType",
            "currentLoginType"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/LoginType;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LoginType;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/account/bean/LoginType;->isLoginByThirdParty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
