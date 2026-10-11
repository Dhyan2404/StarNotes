.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextAction\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n97#2:212\n1#3:213\n766#4:214\n857#4,2:215\n1045#4:217\n1045#4:218\n1045#4:219\n*S KotlinDebug\n*F\n+ 1 SearchTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextAction\n*L\n43#1:212\n117#1:214\n117#1:215,2\n118#1:217\n134#1:218\n151#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 <2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001<B\u001f\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 \u00a2\u0006\u0004\u0008:\u0010;J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000c\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0002J\u000c\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0002J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0002J\u001a\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u0002H\u0002J0\u0010\u000f\u001a\u00020\u00042\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0002H\u0002J0\u0010\u0010\u001a\u00020\u00042\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0002H\u0002J0\u0010\u0011\u001a\u00020\u00042\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0002H\u0002J\"\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0002H\u0002J\"\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0002H\u0002J\"\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0002H\u0002J(\u0010\u0019\u001a\u00020\u00042\u001e\u0010\u0018\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0017H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0014\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0014R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R3\u0010)\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 %*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u00020$\u00a2\u0006\u0002\u0008&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u001b\u00107\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "",
        "A",
        "Lio/reactivex/rxjava3/core/Observable;",
        "C",
        "t",
        "F",
        "w",
        "",
        "searchObservables",
        "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
        "contentTypes",
        "q",
        "s",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPageList",
        "G",
        "I",
        "H",
        "Lkotlin/Pair;",
        "pair",
        "y",
        "z",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "noteSearchArgs",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "j",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "publisher",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "k",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "dispose",
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "l",
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "searchProgressResult",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;",
        "m",
        "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;",
        "x",
        "()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;",
        "searchContext",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V",
        "Companion",
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
        "SMAP\nSearchTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextAction\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n97#2:212\n1#3:213\n766#4:214\n857#4,2:215\n1045#4:217\n1045#4:218\n1045#4:219\n*S KotlinDebug\n*F\n+ 1 SearchTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextAction\n*L\n43#1:212\n117#1:214\n117#1:215,2\n118#1:217\n134#1:218\n151#1:219\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic n:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "searchContext"

    const-string v3, "getSearchContext()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;"

    const-class v4, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->n:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteSearchArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance p1, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$special$$inlined$delegate$1;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$special$$inlined$delegate$1;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->m:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-void
.end method

.method public static final B(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->clear()V

    return-void
.end method

.method public static final D(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public static final E(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->z()V

    return-void
.end method

.method public static final synthetic access$buildTextIndexByPages(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoteModel$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public static final synthetic access$getNoteSearchArgs$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    return-object p0
.end method

.method public static final synthetic access$getPublisher$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public static final synthetic access$getSearchContext(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchProgressResult$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-object p0
.end method

.method public static final synthetic access$onNextResult(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;Lkotlin/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->y(Lkotlin/Pair;)V

    return-void
.end method

.method public static final synthetic access$search(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->A()V

    return-void
.end method

.method public static final synthetic access$searchAllPage(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->C()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchAllPageImpl(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->F()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchScribble(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->H(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->B(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->E(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->u(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->D(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->v(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->k:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static final v(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getFtsIndexArgs()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;->getPauseBackgroundTask()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->pauseTask(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/a8m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a8m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->k:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final C()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/b8m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b8m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/c8m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c8m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final F()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->merge(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnSubscribe(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final G(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$searchReader$1;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$searchReader$1;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final H(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/search/SearchScribbleTextAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$searchScribble$1;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$searchScribble$1;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchScribbleTextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final I(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$searchTextBox$1;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$searchTextBox$1;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getFtsIndexArgs()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;->getPauseBackgroundTask()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->pauseTask(Z)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/d8m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d8m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e8m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e8m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->PDF:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {v0}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAnyElement(Ljava/lang/Iterable;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getPageIdsForSearchReader()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getVirtualPageList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    sget-object v3, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isPDF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchReaderObservable$$inlined$sortedBy$1;

    invoke-direct {p2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchReaderObservable$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setMaxSearchProgress(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->G(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final r(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HWR_FONT_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAnyElement(Ljava/lang/Iterable;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getPageIdsForSearchScribble()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getVirtualPageList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->filterPageIdsForBuildIndex$default(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;Ljava/util/Collection;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setMaxSearchProgress(F)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;

    invoke-direct {v2, p0, p2, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;

    invoke-direct {v1, p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p2, "flatMap(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->TEXT_BOX:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {v0}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAnyElement(Ljava/lang/Iterable;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getPageIdsForSearchTextBox()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getVirtualPageList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchTextBoxObservable$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchTextBoxObservable$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setMaxSearchProgress(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->I(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getAllPageIds()Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;->getContentTypes()Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->Companion:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getSearchTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType$Companion;->getContentTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->q(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->s(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->r(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final x()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->m:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->n:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    return-object p0
.end method

.method public final y(Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;->postSearchProgressEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Number;Ljava/lang/Number;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final z()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$reopenReaderDocument$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$reopenReaderDocument$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createReaderObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
