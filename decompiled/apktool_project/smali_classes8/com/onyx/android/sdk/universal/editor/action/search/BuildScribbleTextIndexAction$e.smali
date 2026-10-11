.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;->f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getNoteSearchArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->getRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;->f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->getHwrBlockOutputs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, v0, p0, p1}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->extractFTSContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
