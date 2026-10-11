.class final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->a0(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/reader/Reader;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/reader/Reader;",
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
.field final synthetic $openResultInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;->$openResultInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/reader/Reader;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;->$openResultInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getExtraInfo()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getContentPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;->invoke()Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p0

    return-object p0
.end method
