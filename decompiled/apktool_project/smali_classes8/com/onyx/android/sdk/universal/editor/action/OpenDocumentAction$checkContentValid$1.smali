.class final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->y(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenDocumentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,400:1\n92#2,4:401\n*S KotlinDebug\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1\n*L\n330#1:401,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOpenDocumentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,400:1\n92#2,4:401\n*S KotlinDebug\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1\n*L\n330#1:401,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $openResultInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->$openResultInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->invoke$lambda$0()V

    return-void
.end method

.method private static final invoke$lambda$0()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->content_open_fail_tip:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->$openResultInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getExtraInfo()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getContentPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/reader/extension/ReaderBundleKt;->isValidContentPage(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v5

    :cond_5
    if-eqz v1, :cond_6

    .line 7
    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/a;

    invoke-direct {v4}, Lcom/onyx/android/sdk/universal/editor/action/a;-><init>()V

    .line 8
    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    .line 9
    :cond_6
    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contentPageId = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isValid = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showInvalidToast = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
