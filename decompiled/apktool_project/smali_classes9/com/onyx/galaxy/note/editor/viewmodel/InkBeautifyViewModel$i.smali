.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInkBeautifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$9\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,466:1\n800#2,11:467\n*S KotlinDebug\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$9\n*L\n319#1:467,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInkBeautifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$9\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,466:1\n800#2,11:467\n*S KotlinDebug\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$9\n*L\n319#1:467,11\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->g:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->access$getConvertedShapes$p(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->access$getConvertedShapes$p(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->access$updateDefaultConvertedShapes(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkFontConvertedEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;->g:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->access$getConvertedShapes$p(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/event/InkFontConvertedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
