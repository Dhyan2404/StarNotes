.class final Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCleanNotePageLayerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanNotePageLayerAction.kt\ncom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
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
        "SMAP\nCleanNotePageLayerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanNotePageLayerAction.kt\ncom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/ui/CommonDialog;->Companion:Lcom/onyx/android/sdk/ui/CommonDialog$Companion;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->cleaning:I

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Companion;->createLoadingDialog(Landroid/content/Context;I)Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2;->invoke()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    return-object p0
.end method
