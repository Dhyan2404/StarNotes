.class public final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;
.super Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocConvertAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/DocConvertAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n766#2:173\n857#2,2:174\n1549#2:176\n1620#2,3:177\n*S KotlinDebug\n*F\n+ 1 DocConvertAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/DocConvertAction\n*L\n162#1:173\n162#1:174,2\n163#1:176\n163#1:177,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0005\u00a2\u0006\u0004\u00086\u00107J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J$\u0010\u000e\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u001e\u0010\u0016\u001a\u00020\u00022\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0014H\u0002J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0014H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002R\u0017\u0010!\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010#R\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#R\u001c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00060%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010#R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "getImportList",
        "dispose",
        "handleResult",
        "z",
        "x",
        "localConvertList",
        "networkConvertList",
        "y",
        "w",
        "q",
        "v",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "Ljava/io/File;",
        "uriFileMap",
        "A",
        "file",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;",
        "o",
        "p",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "f",
        "Ljava/util/List;",
        "fileList",
        "",
        "g",
        "h",
        "i",
        "invalidList",
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;",
        "j",
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;",
        "docConvertLocalAction",
        "Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;",
        "k",
        "Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;",
        "docConvertOnlineAction",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "l",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "timeoutDisposable",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDocConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocConvertAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/DocConvertAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n766#2:173\n857#2,2:174\n1549#2:176\n1620#2,3:177\n*S KotlinDebug\n*F\n+ 1 DocConvertAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/DocConvertAction\n*L\n162#1:173\n162#1:174,2\n163#1:176\n163#1:177,3\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$batchConvert(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFileList$p(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutDisposable$p(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->l:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$handleFinish(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->v()V

    return-void
.end method

.method public static final synthetic access$postStartEvent(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->x()V

    return-void
.end method

.method public static final synthetic access$postStartEvent(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->y(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$postStartEventIfTimeout(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->z()V

    return-void
.end method

.method public static final synthetic access$toConvertEntryList(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->A(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->s(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->u(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->t(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->handleResult()V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->handleCancel()V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->r()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v3, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;-><init>()V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFilePassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setFilePassword(Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->o(Ljava/io/File;)Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setConvertType(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)V

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setFile(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setFileName(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getName(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;->getDocType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v4, 0x1f400000

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$b;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$c;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$d;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$e;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$g;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/m6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m6f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$h;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/n6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n6f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/o6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o6f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->j:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->dispose()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->k:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->dispose()V

    :cond_1
    return-void
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getImportList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->i:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final handleResult()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->v()V

    return-void
.end method

.method public final o(Ljava/io/File;)Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v0, 0xc800000

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->OSS:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->COS:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    return-object p0
.end method

.method public final p(Ljava/io/File;)Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->COS:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->j:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->k:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->j:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->k:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$a;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$a;

    invoke-static {v0, p0, v1}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "zip(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->getImportList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final v()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->w()V

    return-void
.end method

.method public final w()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->postEventIf(Ljava/lang/Object;)V

    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->h:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->y(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final y(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setLocalList(Ljava/util/List;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setNetworkList(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->postEventIf(Ljava/lang/Object;)V

    return-void
.end method

.method public final z()V
    .locals 3

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$i;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->l:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
