.class final Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$addAudioShapeBean$shapeBean$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction;->l(Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
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
.field final synthetic $shape:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$addAudioShapeBean$shapeBean$1;->$shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$addAudioShapeBean$shapeBean$1;->$shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->setShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->modelFromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->setShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    .line 5
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->setLayerId(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$addAudioShapeBean$shapeBean$1;->invoke()Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object p0

    return-object p0
.end method
