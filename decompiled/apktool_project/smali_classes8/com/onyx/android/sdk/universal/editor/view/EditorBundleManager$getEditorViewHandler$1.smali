.class final Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
        "it",
        "",
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
.field final synthetic $id:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;->$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;->this$0:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;->$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;->this$0:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->Companion:Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;->createInstance()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;->this$0:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method
