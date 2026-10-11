.class final Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->cloneRuntimeOptions(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "newOptions",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "key",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->invoke(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_excerpt_collection_list"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getExcerptCollectionList(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1$newValue$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1$newValue$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "KEY_TAG_BEAN"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "KEY_EXCERPT_INFO"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getExcerptInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    const-string v0, "KEY_SHAPE_RESOURCE"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->clone()Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    const-string v0, "KEY_ANNOTATION_INFO"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    const-string v0, "KEY_SHAPE_LINT_STYLE"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v1

    goto :goto_0

    :sswitch_6
    const-string v0, "KEY_TRANSFORMING_MATRIX"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions$cloneRuntimeOptions$1;->$this_cloneRuntimeOptions:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    :cond_7
    :goto_0
    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76440ad6 -> :sswitch_6
        -0x5a98042d -> :sswitch_5
        -0x50ae8242 -> :sswitch_4
        -0x247feaf4 -> :sswitch_3
        -0x1f754134 -> :sswitch_2
        0x5876c355 -> :sswitch_1
        0x5c483d01 -> :sswitch_0
    .end sparse-switch
.end method
