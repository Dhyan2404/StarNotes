.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$GridFolderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$GridNoteLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$GridNotePortraitItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearFolderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNoteLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,658:1\n256#2,2:659\n326#2,4:661\n326#2,4:665\n188#2,3:669\n1603#3,9:672\n1855#3:681\n1856#3:683\n1612#3:684\n1549#3:685\n1620#3,3:686\n350#3,7:689\n1855#3:696\n1856#3:698\n1#4:682\n1#4:697\n*S KotlinDebug\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter\n*L\n440#1:659,2\n449#1:661,4\n454#1:665,4\n511#1:669,3\n548#1:672,9\n548#1:681\n548#1:683\n548#1:684\n550#1:685\n550#1:686,3\n615#1:689,7\n644#1:696\n644#1:698\n548#1:682\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0011\u0018\u0000 e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0007efghijkB\u0011\u0012\u0008\u0008\u0002\u00108\u001a\u00020\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J0\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\"\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u001e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u001c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0010\u0010#\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020!H\u0002J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010$\u001a\u00020!H\u0002J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020!H\u0002J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\'H\u0016J\u0006\u0010*\u001a\u00020\u0003J\u000e\u0010,\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0007J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0016H\u0007J\u0016\u00100\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u00102\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0016J\u000e\u00105\u001a\u00020\u00032\u0006\u00104\u001a\u000203R\u0014\u00108\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\"\u0010?\u001a\u0002098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>RB\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020A0@2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020A0@8\u0006@GX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR$\u0010+\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00078\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\r\u0010K\u001a\u0004\u0008L\u0010MR\"\u0010T\u001a\u00020N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR$\u0010Z\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u001b\u0010_\u001a\u00020[8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008\\\u0010^R\u0018\u0010`\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010UR\u0016\u0010a\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00107R\u0016\u0010b\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00107\u00a8\u0006l"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "",
        "q",
        "Landroid/view/View;",
        "itemView",
        "",
        "position",
        "item",
        "",
        "",
        "payloads",
        "w",
        "u",
        "G",
        "view",
        "F",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "syncStatus",
        "",
        "D",
        "",
        "C",
        "interval",
        "B",
        "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;",
        "llTags",
        "",
        "",
        "tagIdList",
        "s",
        "y",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "A",
        "noteModelBean",
        "E",
        "x",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "onViewRecycled",
        "resetDragView",
        "displayType",
        "setDisplayType",
        "enable",
        "enableMulSelect",
        "selected",
        "updateSelect",
        "show",
        "setShowUpdateAt",
        "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;",
        "event",
        "handleSyncNoteProgressChangedEvent",
        "t",
        "Z",
        "enableDrag",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "getSelectionList",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "setSelectionList",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V",
        "selectionList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "value",
        "v",
        "Ljava/util/Map;",
        "getTagByIdMap",
        "()Ljava/util/Map;",
        "setTagByIdMap",
        "(Ljava/util/Map;)V",
        "tagByIdMap",
        "<set-?>",
        "I",
        "getDisplayType",
        "()I",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "getSortBy",
        "()Lcom/onyx/android/sdk/base/data/SortBy;",
        "setSortBy",
        "(Lcom/onyx/android/sdk/base/data/SortBy;)V",
        "sortBy",
        "Ljava/lang/String;",
        "getSelectedTagId",
        "()Ljava/lang/String;",
        "setSelectedTagId",
        "(Ljava/lang/String;)V",
        "selectedTagId",
        "",
        "z",
        "Lkotlin/Lazy;",
        "()F",
        "shadowAlpha",
        "dragNoteId",
        "isMulSelect",
        "isShowUpdateAt",
        "<init>",
        "(Z)V",
        "Companion",
        "GridFolderItemViewHolder",
        "GridNoteLandItemViewHolder",
        "GridNotePortraitItemViewHolder",
        "LinearFolderItemViewHolder",
        "LinearNoteLandItemViewHolder",
        "LinearNotePortraitItemViewHolder",
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
        "SMAP\nNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,658:1\n256#2,2:659\n326#2,4:661\n326#2,4:665\n188#2,3:669\n1603#3,9:672\n1855#3:681\n1856#3:683\n1612#3:684\n1549#3:685\n1620#3,3:686\n350#3,7:689\n1855#3:696\n1856#3:698\n1#4:682\n1#4:697\n*S KotlinDebug\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter\n*L\n440#1:659,2\n449#1:661,4\n454#1:665,4\n511#1:669,3\n548#1:672,9\n548#1:681\n548#1:683\n548#1:684\n550#1:685\n550#1:686,3\n615#1:689,7\n644#1:696\n644#1:698\n548#1:682\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_LOAD_KEY_REFRESH_VIEW:Ljava/lang/String; = "pay_load_key_refresh_view"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_LOAD_KEY_SELECTED:Ljava/lang/String; = "pay_load_key_selected"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_LOAD_KEY_SYNC_PROGRESS:Ljava/lang/String; = "pay_load_key_sync_progress"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NoteListAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_GRID_DISPLAY:I = 0x1

.field public static final TYPE_GRID_FOLDER:I = 0x3

.field public static final TYPE_GRID_NOTE_LAND:I = 0x2

.field public static final TYPE_GRID_NOTE_PORTRAIT:I = 0x1

.field public static final TYPE_LINEAR_FOLDER:I = 0x6

.field public static final TYPE_LINEAR_NOTE_LAND:I = 0x5

.field public static final TYPE_LINEAR_NOTE_PORTRAIT:I = 0x4

.field public static final TYPE_LIST_DISPLAY:I = 0x2


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Z

.field public C:Z

.field public final t:Z

.field public u:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:I

.field public x:Lcom/onyx/android/sdk/base/data/SortBy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final z:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->t:Z

    .line 5
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->u:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->v:Ljava/util/Map;

    .line 7
    iput v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->w:I

    .line 8
    sget-object p1, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->x:Lcom/onyx/android/sdk/base/data/SortBy;

    .line 9
    sget-object p1, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$shadowAlpha$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$shadowAlpha$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->z:Lkotlin/Lazy;

    .line 10
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->C:Z

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->q()V

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;-><init>(Z)V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->F(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$bindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->u(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$bindViewHolderPayloads(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->w(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$isDelayHideSuccessIcon(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->C(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMulSelect$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->B:Z

    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->v(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->r(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->H(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->t(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;ILjava/util/List;)I
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->w:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p2, 0x6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    :goto_0
    return p2
.end method

.method public static final t(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 1

    const-string v0, "$llTags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nameColorPairList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;->initTags(Ljava/util/List;)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$itemView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->B:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->x(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->C:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide p0

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_3()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B(J)Z
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long p0, v0, p1

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    const-wide/16 v1, 0xbb8

    cmp-long p0, p1, v1

    if-gez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final C(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->D(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->B(J)Z

    move-result p0

    return p0
.end method

.method public final D(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getLatestSyncTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public final E(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getDefaultFileCacheKey(Ljava/io/File;)Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public final F(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;->updateErrorMsg(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p2, v2

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final G(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->canSync()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->loadOnyxSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget v1, Lcom/onyx/galaxy/note/R$id;->progress_sync:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_sync_status:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p2, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getProgress()I

    move-result p0

    invoke-virtual {v1, p0, v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncFail()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_sync_error:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/sunia/HTREnginev2/mwj;

    invoke-direct {v0, p0, p2, p1}, Lcom/sunia/HTREnginev2/mwj;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->D(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->B(J)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_sync_succeed:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;

    invoke-direct {p1, p2, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;-><init>(Landroid/widget/ImageView;Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0xbb8

    int-to-long v2, p0

    sub-long/2addr v2, v0

    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$$inlined$postDelayed$1;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$$inlined$postDelayed$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-static {p2, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_1

    :cond_6
    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p2, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final enableMulSelect(Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->B:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getDisplayType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->w:I

    return p0
.end method

.method public final getSelectedTagId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->y:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectionList()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->u:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    return-object p0
.end method

.method public final getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->x:Lcom/onyx/android/sdk/base/data/SortBy;

    return-object p0
.end method

.method public final getTagByIdMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->v:Ljava/util/Map;

    return-object p0
.end method

.method public final handleSyncNoteProgressChangedEvent(Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "pay_load_key_sync_progress"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$fraction;->config_drag_item_alpha:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final q()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$2;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$3;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$3;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$5;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$5;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$6;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$6;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/sunia/HTREnginev2/lwj;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lwj;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final resetDragView()V
    .locals 5

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->A:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->A:Ljava/lang/String;

    if-eq v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->v:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/sunia/HTREnginev2/owj;

    invoke-direct {p2, p1, p0}, Lcom/sunia/HTREnginev2/owj;-><init>(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDisplayType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->w:I

    return-void
.end method

.method public final setSelectedTagId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->y:Ljava/lang/String;

    return-void
.end method

.method public final setSelectionList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->u:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    return-void
.end method

.method public final setShowUpdateAt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->C:Z

    return-void
.end method

.method public final setSortBy(Lcom/onyx/android/sdk/base/data/SortBy;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/SortBy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->x:Lcom/onyx/android/sdk/base/data/SortBy;

    return-void
.end method

.method public final setTagByIdMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->v:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final u(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 7

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->A:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->z()F

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    sget v0, Lcom/onyx/galaxy/note/R$id;->cb_sel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_tags:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    sget v2, Lcom/onyx/galaxy/note/R$id;->tv_time:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/onyx/galaxy/note/R$id;->tv_name:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/onyx/galaxy/note/R$id;->v_click_open:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->B:Z

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    move p2, v5

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->u:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    new-instance v6, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$bindViewHolder$1$1;

    invoke-direct {v6, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$bindViewHolder$1$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static {p2, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->s(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->A(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz p2, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_6

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->E(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->G(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    new-instance p2, Lcom/sunia/HTREnginev2/nwj;

    invoke-direct {p2, p0, p1, p3}, Lcom/sunia/HTREnginev2/nwj;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->t:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateSelect(ZI)V
    .locals 1

    const-string v0, "pay_load_key_selected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public final w(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->u(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p4, Ljava/util/Map;

    const-string v0, "pay_load_key_selected"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "pay_load_key_sync_progress"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->cb_sel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    if-eqz p4, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p2, p4}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->G(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->loadOnyxSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    move p4, v0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->E(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    :cond_3
    return-void
.end method

.method public final x(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    sget v0, Lcom/onyx/galaxy/note/R$id;->cl_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    const-string v2, "NoteListAdapter"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->createCustomClipData(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    const/16 v2, 0x200

    invoke-static {p1, v0, v1, p2, v2}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->z()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->A:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final y(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->y:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->y:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->y:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-object p1
.end method

.method public final z()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->z:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
