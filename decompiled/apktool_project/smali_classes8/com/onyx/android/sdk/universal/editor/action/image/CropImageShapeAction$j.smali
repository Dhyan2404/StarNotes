.class public final Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->m(Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

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
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setCreatedAt(Ljava/util/Date;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->clonePersistOptions(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->setPersistOptions(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$j;->a(Ljava/util/List;)V

    return-void
.end method
