.class public final Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubmitFeedbackAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubmitFeedbackAction.kt\ncom/onyx/galaxy/note/settings/action/SubmitFeedbackAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n37#3,2:206\n526#4:208\n511#4,6:209\n526#4:216\n511#4,6:217\n1#5:215\n*S KotlinDebug\n*F\n+ 1 SubmitFeedbackAction.kt\ncom/onyx/galaxy/note/settings/action/SubmitFeedbackAction\n*L\n89#1:200,2\n95#1:202,2\n124#1:204,2\n142#1:206,2\n190#1:208\n190#1:209,6\n194#1:216\n194#1:217,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u0000 42\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u00a2\u0006\u0004\u00082\u00103J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0000H\u0002J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0003H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0003H\u0002J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0018\u001a\u00020\u0005H\u0002J\u0008\u0010\u0019\u001a\u00020\u0005H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\'\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00100\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010+R\u0016\u00101\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "o",
        "n",
        "A",
        "",
        "",
        "B",
        "",
        "z",
        "",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        "s",
        "t",
        "x",
        "Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;",
        "w",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "u",
        "r",
        "y",
        "Landroid/content/Context;",
        "g",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;",
        "h",
        "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;",
        "submitFeedbackContext",
        "i",
        "Lkotlin/Lazy;",
        "v",
        "()Ljava/util/Map;",
        "fileByUriMap",
        "j",
        "Ljava/util/List;",
        "ossUploadFiles",
        "k",
        "Ljava/io/File;",
        "zipFile",
        "l",
        "tempRecentLogcatFile",
        "m",
        "Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;",
        "keyRequest",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V",
        "Companion",
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
        "SMAP\nSubmitFeedbackAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubmitFeedbackAction.kt\ncom/onyx/galaxy/note/settings/action/SubmitFeedbackAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n37#3,2:206\n526#4:208\n511#4,6:209\n526#4:216\n511#4,6:217\n1#5:215\n*S KotlinDebug\n*F\n+ 1 SubmitFeedbackAction.kt\ncom/onyx/galaxy/note/settings/action/SubmitFeedbackAction\n*L\n89#1:200,2\n95#1:202,2\n124#1:204,2\n142#1:206,2\n190#1:208\n190#1:209,6\n194#1:216\n194#1:217,6\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Ljava/lang/String; = "feedback_upload_dir"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->Companion:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submitFeedbackContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->h:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    new-instance p1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$fileByUriMap$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$fileByUriMap$2;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->i:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$cleanOssUploadFiles(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->o()V

    return-void
.end method

.method public static final synthetic access$encryptionFile(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->r()V

    return-void
.end method

.method public static final synthetic access$generateFileByUriMap(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->s()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateZipFile(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->t()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogEncryptionKey(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->w()Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSubmitFeedbackContext$p(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->h:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    return-object p0
.end method

.method public static final synthetic access$prepareMediaFiles(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->z()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setTempRecentLogcatFile$p(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->l:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$setZipFile$p(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$submitFeedback(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->A()Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadZipFileToOss(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->B()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->p(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;I)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->q(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->y()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->n()V

    return-void
.end method


# virtual methods
.method public final A()Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->h:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;-><init>(Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->execute()V

    return-object p0
.end method

.method public final B()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/action/UploadToOssAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->u()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/common/action/UploadToOssAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$g;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$h;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$i;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$j;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/d5n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d5n;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextSafety(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$k;->e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$k;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$l;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$m;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$n;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$a;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$b;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$c;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$d;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$e;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e5n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e5n;-><init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$f;->e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$f;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->l:Ljava/io/File;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->v()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->m:Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "keyRequest"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;->getEncryptionKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".encryption"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/onyx/galaxy/note/settings/utils/FeedbackEncryptor;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/FeedbackEncryptor;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v2, v0}, Lcom/onyx/galaxy/note/settings/utils/FeedbackEncryptor;->encryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->k:Ljava/io/File;

    invoke-static {v2, p0}, Lonyx/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public final s()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    const-string v2, "feedback_upload_dir"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->h:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;->getPictures()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final t()Ljava/io/File;
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    const-string v2, "feedback_upload_dir"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/common/crash/CrashHandler;->INSTANCE:Lcom/onyx/galaxy/note/common/crash/CrashHandler;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/crash/CrashHandler;->getCrashDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->getConfig()Lcom/blankj/utilcode/util/LogUtils$Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;->INSTANCE:Lcom/onyx/galaxy/note/common/crash/XCrashHandler;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/common/crash/XCrashHandler;->getXCrashDirFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    check-cast v1, Ljava/util/Collection;

    invoke-static {v4, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    check-cast v2, Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :cond_2
    check-cast v5, Ljava/util/Collection;

    invoke-static {v1, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->v()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->j:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/io/File;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->compress([Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3

    const-class p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "generateLogAndCrashFiles failed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public final u()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->feedbackOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setToken(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;-><init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V

    return-object v0
.end method

.method public final v()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final w()Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->m:Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->m:Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;

    const/4 v1, 0x0

    const-string v2, "keyRequest"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;->execute()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->m:Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMMSS_3()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y()V
    .locals 7

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getStylusQuicklyClickMap()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_1

    move v2, v4

    :cond_1
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user stylus quickly click config:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getGestureQuicklyClickMap()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eq v6, v3, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    if-eqz p0, :cond_8

    move-object v1, v0

    :cond_8
    if-eqz v1, :cond_9

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user gesture quickly click config:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    :cond_9
    sget-object p0, Lcom/onyx/galaxy/note/utils/LogcatGenerator;->INSTANCE:Lcom/onyx/galaxy/note/utils/LogcatGenerator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/LogcatGenerator;->logDeviceUserInfo()Ljava/lang/String;

    return-void
.end method

.method public final z()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/action/UriCopyFileAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->v()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/action/UriCopyFileAction;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/action/UriCopyFileAction;->create()Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->refCount()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "refCount(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
