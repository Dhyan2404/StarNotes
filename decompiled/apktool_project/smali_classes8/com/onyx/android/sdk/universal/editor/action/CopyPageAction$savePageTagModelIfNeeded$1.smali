.class final Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->q(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n766#2:112\n857#2,2:113\n*S KotlinDebug\n*F\n+ 1 CopyPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1\n*L\n96#1:112\n96#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCopyPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n766#2:112\n857#2,2:113\n*S KotlinDebug\n*F\n+ 1 CopyPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1\n*L\n96#1:112\n96#1:113,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $copyPage:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;->$copyPage:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;->$copyPage:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 6
    invoke-static {v1}, Lcom/onyx/android/sdk/note/extension/ShapeKt;->isTagShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    if-nez p1, :cond_3

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_3
    return-object p1
.end method
