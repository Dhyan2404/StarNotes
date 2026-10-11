.class public final Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u0002H\u0005\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\rJ\u0014\u0010\u000e\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;",
        "",
        "()V",
        "copy",
        "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;",
        "T",
        "type",
        "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;",
        "data",
        "(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;",
        "copyShapeLink",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "copyShapeTag",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;",
        "copyShapes",
        "shapes",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;",
            "TT;)",
            "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->setType(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;->setData(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final copyShapeLink(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;->Link:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;->copy(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;

    move-result-object p0

    return-object p0
.end method

.method public final copyShapeTag(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;->Tag:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;->copy(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;

    move-result-object p0

    return-object p0
.end method

.method public final copyShapes(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;
    .locals 2
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
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;->Shapes:Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;->copy(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;

    move-result-object p0

    return-object p0
.end method
