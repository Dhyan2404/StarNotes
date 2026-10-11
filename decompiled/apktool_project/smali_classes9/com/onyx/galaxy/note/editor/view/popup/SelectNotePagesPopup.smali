.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectNotePagesPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNotePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n58#2,23:340\n93#2,3:363\n766#3:366\n857#3,2:367\n1655#3,8:369\n1549#3:377\n1620#3,3:378\n766#3:381\n857#3,2:382\n766#3:385\n857#3,2:386\n1655#3,8:388\n1549#3:396\n1620#3,3:397\n1#4:384\n*S KotlinDebug\n*F\n+ 1 SelectNotePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup\n*L\n159#1:340,23\n159#1:363,3\n175#1:366\n175#1:367,2\n176#1:369,8\n177#1:377\n177#1:378,3\n179#1:381\n179#1:382,2\n181#1:385\n181#1:386,2\n183#1:388,8\n193#1:396\n193#1:397,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\'\u001a\u00020\"\u0012\u0006\u0010*\u001a\u00020\"\u0012\u0006\u0010.\u001a\u00020+\u0012\u0006\u00101\u001a\u00020/\u00a2\u0006\u0004\u0008G\u0010HJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\n\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0012\u0010\u0014\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0016\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0002J\u0016\u0010\u001a\u001a\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u001d\u001a\u00020\u0002H\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010!\u001a\u00020\u0002H\u0002R\u0017\u0010\'\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0017\u0010*\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010$\u001a\u0004\u0008)\u0010&R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010\u0004R\u001b\u00107\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u00104\u001a\u0004\u0008:\u0010;R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020>0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010?R\u0016\u0010C\u001a\u00020A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010E\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "",
        "V",
        "I",
        "Q",
        "O",
        "U",
        "",
        "query",
        "h0",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "E",
        "X",
        "G",
        "k0",
        "N",
        "K",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "d0",
        "selectType",
        "a0",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "list",
        "g0",
        "c0",
        "b0",
        "i0",
        "F",
        "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
        "j0",
        "l0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "v",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "w",
        "getDocManagerBundle",
        "docManagerBundle",
        "Landroid/content/Context;",
        "x",
        "Landroid/content/Context;",
        "context",
        "",
        "y",
        "insertPageIndex",
        "Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;",
        "z",
        "Lkotlin/Lazy;",
        "C",
        "()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;",
        "J",
        "D",
        "()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;",
        "noteListAdapter",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Ljava/util/Map;",
        "noteListMap",
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;",
        "notePageListAdapter",
        "Z",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "selectedNoteModel",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;I)V",
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
        "SMAP\nSelectNotePagesPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNotePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n58#2,23:340\n93#2,3:363\n766#3:366\n857#3,2:367\n1655#3,8:369\n1549#3:377\n1620#3,3:378\n766#3:381\n857#3,2:382\n766#3:385\n857#3,2:386\n1655#3,8:388\n1549#3:396\n1620#3,3:397\n1#4:384\n*S KotlinDebug\n*F\n+ 1 SelectNotePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup\n*L\n159#1:340,23\n159#1:363,3\n175#1:366\n175#1:367,2\n176#1:369,8\n177#1:377\n177#1:378,3\n179#1:381\n179#1:382,2\n181#1:385\n181#1:386,2\n183#1:388,8\n193#1:396\n193#1:397,3\n*E\n"
    }
.end annotation


# instance fields
.field public final J:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Z:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:I

.field public final z:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docManagerBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->x:Landroid/content/Context;

    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->y:I

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->z:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$noteListAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$noteListAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->J:Lkotlin/Lazy;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O:Ljava/util/Map;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->V()V

    return-void
.end method

.method public static synthetic A(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->f0(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)V

    return-void
.end method

.method public static synthetic B(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Y(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->k0()V

    return-void
.end method

.method public static final J(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public static final L(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->d0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final M(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->d0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final P(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->onItemClick(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->l0()V

    return-void
.end method

.method public static final R(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->F()V

    return-void
.end method

.method public static final S(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->X()V

    return-void
.end method

.method public static final T(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->toggleSelectAll()V

    return-void
.end method

.method public static final W(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static final Y(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public static final Z(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 1

    const-string v0, "$progressDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->dismiss()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->x:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getInsertPageIndex$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->y:I

    return p0
.end method

.method public static final synthetic access$getNoteListAdapter(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoteListMap$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getNotePageListAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    return-object p0
.end method

.method public static final synthetic access$loadNoteList(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->a0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    return-void
.end method

.method public static final synthetic access$loadTagData(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->c0()V

    return-void
.end method

.method public static final synthetic access$onNoteListLoaded(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->g0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$search(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setSelectedNoteModel$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Z:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public static final synthetic access$updateImportIcon(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->l0()V

    return-void
.end method

.method public static final e0(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->i0()V

    return-void
.end method

.method public static final f0(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->b0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->e0(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->S(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Z(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->P(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->W(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->H(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->T(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->R(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->L(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic y(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->J(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->M(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->z:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    return-object p0
.end method

.method public final D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    return-object p0
.end method

.method public final E()Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v0, "tabLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->getSelectedTab(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    :cond_1
    return-object v0
.end method

.method public final F()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->pageLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->noteLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final G()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->displayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/wfm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final I()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/sfm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/sfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->G()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->N()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->K()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->a0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    return-void
.end method

.method public final K()V
    .locals 13

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object v0

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/xfm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object v6

    sget v7, Lcom/onyx/galaxy/note/R$id;->v_click_open:I

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/sunia/HTREnginev2/mfm;

    invoke-direct {v10, p0}, Lcom/sunia/HTREnginev2/mfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->noteRecyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final N()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initNoteTabLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initNoteTabLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/common/extension/TabLayoutKt;->addNoteListTabs(Lcom/google/android/material/tabs/TabLayout;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final O()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/tfm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/tfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->setSelectItemChangeCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->setOnSwipeStateChangeListener(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final Q()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->pageBtnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/lfm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->addPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/pfm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    new-instance v1, Lcom/sunia/HTREnginev2/qfm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O()V

    return-void
.end method

.method public final U()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->tieName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;

    const-string v1, "tieName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initSearchView$$inlined$doAfterTextChanged$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initSearchView$$inlined$doAfterTextChanged$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final V()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->U()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/rfm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final X()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

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

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->j0()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object v1

    sget-object v3, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v4, Lcom/onyx/android/sdk/event/StatisticsStoolbarPageAdd;

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->y:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "other_doc"

    invoke-direct {v4, v5, v6}, Lcom/onyx/android/sdk/event/StatisticsStoolbarPageAdd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->y:I

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Z:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    sget-object v5, Lcom/onyx/android/sdk/data/InsertPageFrom;->OTHER_NOTE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-static {v3, v4, v2, v5}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportInsertPageEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Lcom/onyx/android/sdk/data/InsertPageFrom;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$b;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$b;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$c;-><init>(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/ufm;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/ufm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/vfm;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/vfm;-><init>(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final a0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->g0(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getCommonNoteArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v0, v1, v2}, Lcom/onyx/galaxy/note/common/extension/NoteQueryArgsKt;->sortWith(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/common/extension/NoteQueryArgsKt;->andWithSelectType(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqueId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nonExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const-string v2, "activeScene"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nonExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v3, v2}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$g;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$g;-><init>(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$h;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final b0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$i;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$i;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$j;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$j;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$k;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$l;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final c0()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$m;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final d0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->x:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/nfm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nfm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ofm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/ofm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->searchView:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->E()Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->a0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O:Ljava/util/Map;

    sget-object v2, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->getTagByIdMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    const-string v7, ""

    :cond_a
    invoke-static {v7, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v2}, Lorg/apache/commons/collections4/CollectionUtils;->containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->g0(Ljava/util/List;)V

    return-void
.end method

.method public final i0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->pageLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->noteLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O()V

    return-void
.end method

.method public final j0()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->x:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$string;->in_progress:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->setTitleText(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public final k0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->D()Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->toggleDisplayType()I

    move-result v0

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->values()[Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->getType()I

    move-result v6

    if-ne v6, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$toggleDisplayType$noteDisplayType$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$toggleDisplayType$noteDisplayType$2;

    invoke-static {v5, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->noteRecyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setDisplayType(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->displayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_display_linear:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_display_grid:I

    :goto_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    return-void
.end method

.method public final l0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->C()Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->addPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->Q:Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
