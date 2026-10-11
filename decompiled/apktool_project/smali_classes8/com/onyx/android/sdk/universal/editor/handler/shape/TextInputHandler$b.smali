.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/request/textinput/SaveTextShapesRequest;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/request/textinput/SaveTextShapesRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/android/sdk/note/request/textinput/SaveTextShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/request/textinput/SaveTextShapesRequest;

    move-result-object p0

    return-object p0
.end method
