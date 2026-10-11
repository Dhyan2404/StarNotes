.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;->f:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->access$createColorSet(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getPreset()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->unfavored_preset_color_set_tips:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->access$deleteColorSet(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$c;->a(Ljava/util/List;)V

    return-void
.end method
