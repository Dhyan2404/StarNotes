.class public final Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditTagForNoteDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,263:1\n1549#2:264\n1620#2,3:265\n766#2:287\n857#2,2:288\n65#3,16:268\n93#3,3:284\n256#4,2:290\n256#4,2:292\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog\n*L\n130#1:264\n130#1:265,3\n180#1:287\n180#1:288,2\n159#1:268,16\n159#1:284,3\n187#1:290,2\n188#1:292,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0001Q\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010%\u001a\u00020#\u0012\u0006\u0010)\u001a\u00020&\u0012\u001a\u0010/\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0+\u0012\u0004\u0012\u00020\u0002\u0018\u00010*\u0012\u0006\u00102\u001a\u00020\u0006\u00a2\u0006\u0004\u0008U\u0010VJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0003J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0003J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0012\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0007J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020!H\u0007R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R(\u0010/\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0+\u0012\u0004\u0012\u00020\u0002\u0018\u00010*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00102\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R*\u0010:\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u0001038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00060;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010<R\u001b\u0010A\u001a\u00020>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010?\u001a\u0004\u0008\'\u0010@R\u001b\u0010D\u001a\u00020B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010?\u001a\u0004\u00084\u0010CR\u001b\u0010H\u001a\u00020E8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010?\u001a\u0004\u0008-\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001b\u0010T\u001a\u00020Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010?\u001a\u0004\u00080\u0010S\u00a8\u0006W"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "",
        "m",
        "n",
        "o",
        "",
        "title",
        "w",
        "",
        "isSearch",
        "y",
        "t",
        "z",
        "tagId",
        "x",
        "Lcom/onyx/android/sdk/data/TagCreateFrom;",
        "h",
        "g",
        "eventId",
        "v",
        "u",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "dismiss",
        "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;",
        "event",
        "onSaveTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;",
        "onCreateTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;",
        "onCreateMultipleSubTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;",
        "onDeleteTagEvent",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
        "i",
        "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
        "editTagForNoteContext",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "onCreateTag",
        "k",
        "Ljava/lang/String;",
        "from",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "l",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "getPublishSubject",
        "()Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "setPublishSubject",
        "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V",
        "publishSubject",
        "",
        "Ljava/util/List;",
        "recordSelectTagIds",
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;",
        "adapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;",
        "()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;",
        "searchAdapter",
        "Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;",
        "p",
        "()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;",
        "binding",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "q",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;",
        "matchList",
        "com/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1",
        "s",
        "()Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1;",
        "checkEmptyDataObserver",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V",
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
        "SMAP\nEditTagForNoteDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,263:1\n1549#2:264\n1620#2,3:265\n766#2:287\n857#2,2:288\n65#3,16:268\n93#3,3:284\n256#4,2:290\n256#4,2:292\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog\n*L\n130#1:264\n130#1:265,3\n180#1:287\n180#1:288,2\n159#1:268,16\n159#1:284,3\n187#1:290,2\n188#1:292,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editTagForNoteContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->k:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->m:Ljava/util/List;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$adapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$adapter$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->n:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->o:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->p:Lkotlin/Lazy;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->q:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->s:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEditTagForNoteContext$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    return-object p0
.end method

.method public static final synthetic access$initData(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->m()V

    return-void
.end method

.method public static final synthetic access$onUpdateSelectId(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->t()V

    return-void
.end method

.method public static final synthetic access$search(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->r(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->q(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->s(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->u()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->m:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "click_galaxy_tag_add_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->dismiss()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->h:Landroid/content/Context;

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->g()Lcom/onyx/android/sdk/data/TagCreateFrom;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_tag_add_0003"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->v(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;-><init>()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setRootNode(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->h:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->h()Lcom/onyx/android/sdk/data/TagCreateFrom;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->q:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->k()Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public final g()Lcom/onyx/android/sdk/data/TagCreateFrom;
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "NoteTemplateFragment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->NEW_NOTE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :sswitch_1
    const-string v0, "NoteTagLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :sswitch_2
    const-string v0, "ShapeToolViewAuto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->EDIT_NOTE_TOOL_EDIT_TAG_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :sswitch_3
    const-string v0, "LongPressPopup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->EDIT_NOTE_POPUP_MENU_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->HOME_LIST_ITEM_TAG_EDIT_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b766e1b -> :sswitch_3
        -0x658a1e33 -> :sswitch_2
        -0x52ca848e -> :sswitch_1
        0x1cdbfd1c -> :sswitch_0
    .end sparse-switch
.end method

.method public final getPublishSubject()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/data/TagCreateFrom;
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "NoteTemplateFragment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->NEW_NOTE_MANAGE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :sswitch_1
    const-string v0, "NoteTagLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_MANAGE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :sswitch_2
    const-string v0, "ShapeToolViewAuto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->EDIT_NOTE_TOOL_EDIT_TAG_MANAGE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :sswitch_3
    const-string v0, "LongPressPopup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->EDIT_NOTE_POPUP_MENU_MANAGE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    goto :goto_1

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/data/TagCreateFrom;->HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b766e1b -> :sswitch_3
        -0x658a1e33 -> :sswitch_2
        -0x52ca848e -> :sswitch_1
        0x1cdbfd1c -> :sswitch_0
    .end sparse-switch
.end method

.method public final i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    return-object p0
.end method

.method public final j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->p:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    return-object p0
.end method

.method public final k()Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1;

    return-object p0
.end method

.method public final l()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->o:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    return-object p0
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;->initList()V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v0

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final o()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->k()Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$checkEmptyDataObserver$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->rv:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->rvSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->l()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->tvOk:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "tvOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/xlf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/xlf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/ylf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ylf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->tvCreateTag:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCreateTag"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/zlf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/zlf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->tieName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/ui/ext/EditextExtKt;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$initView$lambda$5$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$initView$lambda$5$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->tvManagerTag:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/amf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/amf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->m:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffc9

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateMultipleSubTagEvent(Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;->getNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;->getNodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->x(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->z()V

    return-void
.end method

.method public final onCreateTagEvent(Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;->getNode()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;->getNode()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->x(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->z()V

    return-void
.end method

.method public final onDeleteTagEvent(Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->z()V

    return-void
.end method

.method public final onSaveTagEvent(Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->z()V

    return-void
.end method

.method public final setPublishSubject(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/subjects/PublishSubject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method public final t()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final u()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->g()Lcom/onyx/android/sdk/data/TagCreateFrom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerFromByTagCreateFrom(Lcom/onyx/android/sdk/data/TagCreateFrom;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "trigger_from"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v1, "tag_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_tag_add_0001"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    sget-object v1, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->g()Lcom/onyx/android/sdk/data/TagCreateFrom;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerFromByTagCreateFrom(Lcom/onyx/android/sdk/data/TagCreateFrom;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "trigger_from"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->y(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->l()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->y(Z)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->i:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final y(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->groupList:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->j()Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogEditTagForNoteBinding;->groupSearchList:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupSearchList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final z()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$a;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->q:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
