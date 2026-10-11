.class public final Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckPdfPasswordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckPdfPasswordAction.kt\ncom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n766#2:174\n857#2,2:175\n1549#2:177\n1620#2,3:178\n766#2:181\n857#2,2:182\n*S KotlinDebug\n*F\n+ 1 CheckPdfPasswordAction.kt\ncom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction\n*L\n51#1:174\n51#1:175,2\n75#1:177\n75#1:178,3\n86#1:181\n86#1:182,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010.\u001a\u00020-\u0012\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0004\u00a2\u0006\u0004\u00080\u00101J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\rH\u0002J\u0008\u0010\u0015\u001a\u00020\rH\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R \u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\n0\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010 \u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "getResultList",
        "Landroid/net/Uri;",
        "uri",
        "o",
        "",
        "password",
        "A",
        "",
        "u",
        "v",
        "fileName",
        "",
        "passwordIncorrectBefore",
        "x",
        "z",
        "s",
        "",
        "throwable",
        "t",
        "",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "h",
        "Ljava/util/Map;",
        "passwordMap",
        "",
        "i",
        "Ljava/util/List;",
        "cancelList",
        "j",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "currentDocumentBean",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "k",
        "Lkotlin/Lazy;",
        "r",
        "()Lcom/onyx/android/sdk/ui/CommonDialog;",
        "loadingDialog",
        "l",
        "documentBeans",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "documentList",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
        "note_overseasRelease"
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
        "SMAP\nCheckPdfPasswordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckPdfPasswordAction.kt\ncom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n766#2:174\n857#2,2:175\n1549#2:177\n1620#2,3:178\n766#2:181\n857#2,2:182\n*S KotlinDebug\n*F\n+ 1 CheckPdfPasswordAction.kt\ncom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction\n*L\n51#1:174\n51#1:175,2\n75#1:177\n75#1:178,3\n86#1:181\n86#1:182,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/filepicker/DocumentBean;

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->i:Ljava/util/List;

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$loadingDialog$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$loadingDialog$2;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->k:Lkotlin/Lazy;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->l:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkPdfPassword(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->o(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCancelList$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentDocumentBean$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Lcom/onyx/android/sdk/filepicker/DocumentBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->j:Lcom/onyx/android/sdk/filepicker/DocumentBean;

    return-object p0
.end method

.method public static final synthetic access$getPasswordMap$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isPasswordException(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->t(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$openDocumentByStream(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->u(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$openInputPasswordDialog(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->x(Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentDocumentBean$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->j:Lcom/onyx/android/sdk/filepicker/DocumentBean;

    return-void
.end method

.method public static final synthetic access$showLoading(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->z()V

    return-void
.end method

.method public static final synthetic access$tryOpenDocument(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->A(Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->p(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->y(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->q(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    return-void
.end method

.method public static final p(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final q(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->s()V

    return-void
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->v(Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->s()V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$openInputPasswordDialog$1$dialog$1;

    invoke-direct {v0, p4}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$openInputPasswordDialog$1$dialog$1;-><init>(Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$openInputPasswordDialog$1$dialog$2;

    invoke-direct {v1, p4}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$openInputPasswordDialog$1$dialog$2;-><init>(Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog;->setPasswordIncorrect(Z)Lcom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$m;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$m;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$n;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$n;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isPdfFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$b;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$b;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/etd;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/etd;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$g;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$g;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ftd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ftd;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getResultList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->h:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->setFilePassword(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->setExtensionName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->setFile(Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getExtensionName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bin"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->setExtensionName(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->i:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$getResultList$2$1;

    invoke-direct {v5, v3}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$getResultList$2$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;)V

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final o(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/CommonDialog;

    return-object p0
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->r()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p1, Lcom/onyx/android/sdk/reader/api/ReaderException;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderException;->getCode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final u(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    :try_start_0
    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;->Companion:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;->passwordBuilder()Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;->setPassword(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;->build()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;

    invoke-direct {p2}, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;-><init>()V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->setDrmOptions(Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;)V

    invoke-virtual {v0, v1, p2, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Lcom/onyx/android/sdk/neopdf/PdfFileStream;Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;Lcom/onyx/android/sdk/neopdf/PdfOpenResult;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->getOpenCode()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;->checkOpenAndThrow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->close()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->close()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw p0
.end method

.method public final v(Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$i;

    invoke-direct {v1, p0, p1, v0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$i;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;

    invoke-direct {v1, p0, p1, v0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$j;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->retryWhen(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$l;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$l;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/gtd;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sunia/HTREnginev2/gtd;-><init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "error(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->r()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    :cond_0
    return-void
.end method
