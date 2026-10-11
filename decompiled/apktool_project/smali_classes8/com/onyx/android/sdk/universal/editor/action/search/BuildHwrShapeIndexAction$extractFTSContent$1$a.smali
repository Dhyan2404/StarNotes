.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1;->a(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/ObservableSource;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildHwrShapeIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildHwrShapeIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuildHwrShapeIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildHwrShapeIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$a;->f:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lkotlin/Pair;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$a;->f:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;->access$extractFTSContent(Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$a;->a(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
