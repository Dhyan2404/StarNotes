.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->onTransformEditEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6;->e:Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6;->e:Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;->getTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6$1;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformBoxInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6;->a(Ljava/util/List;)V

    return-void
.end method
