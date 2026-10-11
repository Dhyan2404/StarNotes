.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;
.super Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1041:1\n1#2:1042\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1",
        "Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;",
        "getAdaptiveStrokeWidth",
        "",
        "boxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "strokeWidth",
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
        "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1041:1\n1#2:1042\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;->b:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;->c:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public getAdaptiveStrokeWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)F
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;->c:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;->c:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;->c:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorStandardMinScale$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;->b:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentMinScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;->getAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;FF)F

    move-result p0

    return p0
.end method
