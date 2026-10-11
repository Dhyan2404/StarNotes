.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->o()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;->f:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;->e:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;->f:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->getShapeList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIfNotContains(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$l;->a(Ljava/util/Map;)V

    return-void
.end method
