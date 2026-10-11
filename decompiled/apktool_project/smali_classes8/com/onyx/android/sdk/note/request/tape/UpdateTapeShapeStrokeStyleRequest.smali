.class public final Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "g",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;",
        "tapeStrokeStyle",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapeStrokeStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;->h:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->Companion:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;->getDefaultTapeStrokeStyle()Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    move-result-object p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/note/extension/ShapeKt;->isTapeShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;->h:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setTapeStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V

    new-instance p0, Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, p1, v1}, Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;->getReferenceShapeList()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/NoteBundle;->postShapeAddChangedEvent(Ljava/util/List;)V

    return-void
.end method
