.class public final Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridFolderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridHeaderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridNoteLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridNotePortraitItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridPageTagLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridPageTagPortraitItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearNoteLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearNotePortraitItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearPageTagLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearPageTagPortraitItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1233:1\n256#2,2:1234\n277#2,2:1236\n256#2,2:1238\n326#2,4:1240\n326#2,4:1244\n188#2,3:1253\n277#2,2:1273\n326#2,4:1275\n326#2,4:1279\n277#2,2:1283\n32#3,5:1248\n41#3,5:1285\n1603#4,9:1256\n1855#4:1265\n1856#4:1267\n1612#4:1268\n1549#4:1269\n1620#4,3:1270\n350#4,7:1290\n350#4,7:1298\n288#4,2:1306\n1855#4:1308\n350#4,7:1309\n1856#4:1316\n1855#4:1317\n766#4:1318\n857#4,2:1319\n1856#4:1322\n766#4:1323\n857#4,2:1324\n1855#4,2:1326\n350#4,7:1328\n766#4:1335\n857#4,2:1336\n350#4,7:1338\n350#4,7:1345\n1#5:1266\n1#5:1321\n215#6:1297\n216#6:1305\n1313#7,2:1352\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n*L\n696#1:1234,2\n698#1:1236,2\n717#1:1238,2\n730#1:1240,4\n735#1:1244,4\n803#1:1253,3\n902#1:1273,2\n952#1:1275,4\n957#1:1279,4\n977#1:1283,2\n790#1:1248,5\n996#1:1285,5\n840#1:1256,9\n840#1:1265\n840#1:1267\n840#1:1268\n842#1:1269\n842#1:1270,3\n1086#1:1290,7\n1114#1:1298,7\n1130#1:1306,2\n1140#1:1308\n1141#1:1309,7\n1140#1:1316\n1152#1:1317\n1155#1:1318\n1155#1:1319,2\n1152#1:1322\n1187#1:1323\n1187#1:1324,2\n1195#1:1326,2\n1215#1:1328,7\n1221#1:1335\n1221#1:1336,2\n1221#1:1338,7\n1227#1:1345,7\n840#1:1266\n1112#1:1297\n1112#1:1305\n850#1:1352,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0017\u0018\u0000 \u00a2\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u001a\u00a2\u0001\u00a3\u0001\u00a4\u0001\u00a5\u0001\u00a6\u0001\u00a7\u0001\u00a8\u0001\u00a9\u0001\u00aa\u0001\u00ab\u0001\u00ac\u0001\u00ad\u0001\u00ae\u0001B\t\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J0\u0010\u0013\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\"\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001bH\u0002J\u001e\u0010&\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0002J\u001c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0#2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0002J\u001e\u0010)\u001a\u00020\u00032\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#2\u0006\u0010(\u001a\u00020\u000cH\u0002J\u0010\u0010,\u001a\u00020$2\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u0010.\u001a\u00020-H\u0002J\u0018\u00100\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020*H\u0002J\u0018\u00101\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\"\u00102\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010-H\u0002J\u0018\u00103\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u00104\u001a\u00020-H\u0002J\u0008\u00106\u001a\u00020\u001dH\u0002J\u0010\u00108\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0002J0\u00109\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0003J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010=\u001a\u00020<H\u0016J\u0006\u0010?\u001a\u00020\u0003J\u000e\u0010A\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u0007J\u000e\u0010C\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u001dJ\u0016\u0010E\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\u0007J\u001a\u0010H\u001a\u00020\u00032\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001d0FJ\u000e\u0010J\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u001dJ \u0010M\u001a\u00020\u00032\u0018\u0010L\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00030KJ\u000e\u0010P\u001a\u00020\u00032\u0006\u0010O\u001a\u00020NJ\u0016\u0010R\u001a\u00020\u00032\u000e\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u0010J\u0014\u0010U\u001a\u00020\u00032\u000c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020S0\u0010J\u001e\u0010Y\u001a\u00020\u00032\u0006\u0010V\u001a\u00020$2\u0006\u0010W\u001a\u00020$2\u0006\u0010X\u001a\u00020\u0007J\u000e\u0010[\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020$J\u000e\u0010\\\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020$J\u0006\u0010]\u001a\u00020\u0003R\"\u0010d\u001a\u00020^8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR$\u0010@\u001a\u00020\u00072\u0006\u0010e\u001a\u00020\u00078\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008f\u00101\u001a\u0004\u0008g\u0010hRB\u0010q\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020j0i2\u0012\u0010k\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020j0i8\u0006@GX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\"\u0010y\u001a\u00020r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR$\u0010\u0081\u0001\u001a\u00020z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008{\u0010|\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R)\u0010\u0088\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R+\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008:\u0010\u008a\u0001\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R+\u0010\u0096\u0001\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R!\u0010\u0097\u0001\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u001b0i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010lR\u0016\u0010\u0099\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u00102R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u0091\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u0083\u0001R\u0018\u0010\u009d\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00082\u0010\u0083\u0001R,\u0010\u009f\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0003\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00086\u0010\u009e\u0001\u00a8\u0006\u00af\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "",
        "t",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "noteModelBean",
        "",
        "S",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
        "pageModel",
        "T",
        "Landroid/view/View;",
        "itemView",
        "position",
        "item",
        "",
        "",
        "payloads",
        "E",
        "C",
        "Y",
        "X",
        "view",
        "U",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "syncStatus",
        "",
        "P",
        "",
        "O",
        "interval",
        "N",
        "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;",
        "llTags",
        "",
        "",
        "tagIdList",
        "v",
        "J",
        "anchor",
        "V",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "L",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "pageModelBean",
        "K",
        "Q",
        "I",
        "F",
        "W",
        "model",
        "R",
        "G",
        "parentView",
        "H",
        "B",
        "z",
        "M",
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
        "",
        "changeItems",
        "updateSwipeSelectItems",
        "show",
        "setShowUpdateAt",
        "Lkotlin/Function2;",
        "callback",
        "setClickCallback",
        "Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;",
        "event",
        "handleTitleUpdated",
        "docIds",
        "onDocSyncSuccess",
        "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
        "syncNoteList",
        "handleSyncNoteProgressChangedEvent",
        "originId",
        "targetId",
        "dragState",
        "move",
        "id",
        "getNotePosition",
        "getNoteTypePosition",
        "updateHeaderLockView",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "getSelectionList",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "setSelectionList",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V",
        "selectionList",
        "<set-?>",
        "u",
        "getDisplayType",
        "()I",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "value",
        "Ljava/util/Map;",
        "getTagByIdMap",
        "()Ljava/util/Map;",
        "setTagByIdMap",
        "(Ljava/util/Map;)V",
        "tagByIdMap",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "w",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "getSortBy",
        "()Lcom/onyx/android/sdk/base/data/SortBy;",
        "setSortBy",
        "(Lcom/onyx/android/sdk/base/data/SortBy;)V",
        "sortBy",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "x",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "getSelectType",
        "()Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "setSelectType",
        "(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V",
        "selectType",
        "y",
        "Z",
        "getEnableDrag",
        "()Z",
        "setEnableDrag",
        "(Z)V",
        "enableDrag",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "getNoteQuotaViewModel",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "setNoteQuotaViewModel",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V",
        "noteQuotaViewModel",
        "A",
        "Ljava/lang/String;",
        "getSelectedTagId",
        "()Ljava/lang/String;",
        "setSelectedTagId",
        "(Ljava/lang/String;)V",
        "selectedTagId",
        "lastSyncSuccessTime",
        "",
        "shadowAlpha",
        "D",
        "dragNoteId",
        "isMulSelect",
        "isShowUpdateAt",
        "Lkotlin/jvm/functions/Function2;",
        "clickCallback",
        "<init>",
        "()V",
        "Companion",
        "GridFolderItemViewHolder",
        "GridHeaderItemViewHolder",
        "GridNoteLandItemViewHolder",
        "GridNotePortraitItemViewHolder",
        "GridPageTagLandItemViewHolder",
        "GridPageTagPortraitItemViewHolder",
        "LinearFolderItemViewHolder",
        "LinearHeaderItemViewHolder",
        "LinearNoteLandItemViewHolder",
        "LinearNotePortraitItemViewHolder",
        "LinearPageTagLandItemViewHolder",
        "LinearPageTagPortraitItemViewHolder",
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
        "SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1233:1\n256#2,2:1234\n277#2,2:1236\n256#2,2:1238\n326#2,4:1240\n326#2,4:1244\n188#2,3:1253\n277#2,2:1273\n326#2,4:1275\n326#2,4:1279\n277#2,2:1283\n32#3,5:1248\n41#3,5:1285\n1603#4,9:1256\n1855#4:1265\n1856#4:1267\n1612#4:1268\n1549#4:1269\n1620#4,3:1270\n350#4,7:1290\n350#4,7:1298\n288#4,2:1306\n1855#4:1308\n350#4,7:1309\n1856#4:1316\n1855#4:1317\n766#4:1318\n857#4,2:1319\n1856#4:1322\n766#4:1323\n857#4,2:1324\n1855#4,2:1326\n350#4,7:1328\n766#4:1335\n857#4,2:1336\n350#4,7:1338\n350#4,7:1345\n1#5:1266\n1#5:1321\n215#6:1297\n216#6:1305\n1313#7,2:1352\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n*L\n696#1:1234,2\n698#1:1236,2\n717#1:1238,2\n730#1:1240,4\n735#1:1244,4\n803#1:1253,3\n902#1:1273,2\n952#1:1275,4\n957#1:1279,4\n977#1:1283,2\n790#1:1248,5\n996#1:1285,5\n840#1:1256,9\n840#1:1265\n840#1:1267\n840#1:1268\n842#1:1269\n842#1:1270,3\n1086#1:1290,7\n1114#1:1298,7\n1130#1:1306,2\n1140#1:1308\n1141#1:1309,7\n1140#1:1316\n1152#1:1317\n1155#1:1318\n1155#1:1319,2\n1152#1:1322\n1187#1:1323\n1187#1:1324,2\n1195#1:1326,2\n1215#1:1328,7\n1221#1:1335\n1221#1:1336,2\n1221#1:1338,7\n1227#1:1345,7\n840#1:1266\n1112#1:1297\n1112#1:1305\n850#1:1352,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_LOAD_KEY_HEADER_UPDATE_LOCK:Ljava/lang/String; = "pay_load_key_header_lock"
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

.field public static final PAY_LOAD_KEY_TOGGLE_MULTI_SELECT:Ljava/lang/String; = "pay_load_key_toggle_multi_select"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NotePageListAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_GRID_DISPLAY:I = 0x1

.field public static final TYPE_GRID_FOLDER:I = 0x3

.field public static final TYPE_GRID_HEADER:I = 0x63

.field public static final TYPE_GRID_NOTE_LAND:I = 0x2

.field public static final TYPE_GRID_NOTE_PORTRAIT:I = 0x1

.field public static final TYPE_GRID_PAGE_TAG_LAND:I = 0x8

.field public static final TYPE_GRID_PAGE_TAG_PORTRAIT:I = 0x7

.field public static final TYPE_LINEAR_FOLDER:I = 0x6

.field public static final TYPE_LINEAR_HEADER:I = 0x62

.field public static final TYPE_LINEAR_NOTE_LAND:I = 0x5

.field public static final TYPE_LINEAR_NOTE_PORTRAIT:I = 0x4

.field public static final TYPE_LINEAR_PAGE_TAG_LAND:I = 0xa

.field public static final TYPE_LINEAR_PAGE_TAG_PORTRAIT:I = 0x9

.field public static final TYPE_LIST_DISPLAY:I = 0x2


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C:F

.field public D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public E:Z

.field public F:Z

.field public G:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:I

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

.field public w:Lcom/onyx/android/sdk/base/data/SortBy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Z

.field public z:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    iput v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->v:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->w:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->x:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->y:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->B:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$fraction;->config_drag_shadow_alpha:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->C:F

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->F:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t()V

    return-void
.end method

.method public static final A(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "$gesture"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static final D(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$itemView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->y:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->I(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final Z(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->U(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$bindHeaderViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->z(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$bindHeaderViewHolderPayloads(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->B(Landroid/view/View;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$bindNoteViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->C(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$bindNoteViewHolderPayloads(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$bindPageViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->F(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V

    return-void
.end method

.method public static final synthetic access$checkQuota(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->H(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getClickCallback$p(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->G:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$isMulSelect$p(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E:Z

    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->x(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->w(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->Z(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->A(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->D(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->y(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;ILjava/util/List;)I
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->S(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getPageModelBean()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->T(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/16 p0, 0x63

    goto :goto_0

    :cond_2
    const/16 p0, 0x62

    :goto_0
    return p0
.end method

.method public static final w(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V
    .locals 12

    const-string v0, "$llTags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nameColorPairList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tagIdList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;->initTags(Ljava/util/List;)V

    iget p1, p2, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/h0k;

    invoke-direct {v3, p2, p3}, Lcom/sunia/HTREnginev2/h0k;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    new-instance v9, Lcom/sunia/HTREnginev2/i0k;

    invoke-direct {v9, p2, p3}, Lcom/sunia/HTREnginev2/i0k;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tagIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->V(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tagIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->V(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final B(Landroid/view/View;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->z(Landroid/view/View;)V

    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/util/Map;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/util/Map;

    const-string p3, "pay_load_key_header_lock"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "pay_load_key_toggle_multi_select"

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->M(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final C(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 7

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->D:Ljava/lang/String;

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

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->C:F

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

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E:Z

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    move p2, v5

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    new-instance v6, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$bindNoteViewHolder$1$1;

    invoke-direct {v6, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$bindNoteViewHolder$1$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static {p2, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->v(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_3
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->L(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz p2, :cond_5

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

    if-eqz p2, :cond_4

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
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

    :goto_4
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->Q(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->Y(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    new-instance p2, Lcom/sunia/HTREnginev2/f0k;

    invoke-direct {p2, p0, p1, p3}, Lcom/sunia/HTREnginev2/f0k;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->C(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Ljava/util/Map;

    if-eqz v0, :cond_8

    check-cast p4, Ljava/util/Map;

    const-string v0, "pay_load_key_selected"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "pay_load_key_sync_progress"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    const-string v2, "pay_load_key_toggle_multi_select"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    sget v2, Lcom/onyx/galaxy/note/R$id;->cb_sel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sget v3, Lcom/onyx/galaxy/note/R$id;->iv_option:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->Y(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->loadOnyxSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->Q(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    :cond_4
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    new-instance p2, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$bindNoteViewHolderPayloads$3$1;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$bindNoteViewHolderPayloads$3$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E:Z

    if-eqz p0, :cond_7

    const/4 v0, 0x4

    :cond_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final F(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V
    .locals 5

    sget p2, Lcom/onyx/galaxy/note/R$id;->tv_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_tags:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getDocName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageAllTagIdList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->v(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->K(Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->W(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->R(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final G()Z
    .locals 5

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->z:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getLeftNoteQuota()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final H(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->z:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->checkNoteQuotaUsedOut(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final I(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    sget v0, Lcom/onyx/galaxy/note/R$id;->cl_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    const-string v2, "NotePageListAdapter"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->createCustomClipData(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    const/16 v2, 0x200

    invoke-static {p1, v0, v1, p2, v2}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->C:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->D:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final J(Ljava/util/List;)Ljava/util/List;
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->A:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->A:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->A:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-object p1
.end method

.method public final K(Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)Ljava/lang/String;
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->F:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getDocUpdatedAt()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getDocCreateAt()J

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

.method public final L(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->F:Z

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

.method public final M(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_create:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_icon_create:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/onyx/galaxy/note/R$id;->tv_item_create_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/onyx/galaxy/note/R$id;->lockImage:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->G()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E:Z

    const-string p1, "getThemeDrawable(...)"

    if-eqz p0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->shape_item_create_disable_bg:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/galaxy/note/R$drawable;->ic_note_create_disable:I

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p1

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->shape_item_create_bg:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/galaxy/note/R$drawable;->ic_note_create:I

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final N(J)Z
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

.method public final O(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->P(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->N(J)Z

    move-result p0

    return p0
.end method

.method public final P(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getLatestSyncTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public final Q(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_lock_thumbnail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getDefaultFileCacheKey(Ljava/io/File;)Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method

.method public final R(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V
    .locals 4

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appPageThumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_lock_thumbnail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getHasEncryption()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getDefaultFileCacheKey(Ljava/io/File;)Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public final S(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method public final T(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)I
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    goto :goto_0

    :cond_2
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public final U(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
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

.method public final V(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/category/ui/TagsListPopup;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showCenterPositionPopView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final W(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/onyx/galaxy/note/R$id;->tv_note_page_index:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final X(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 9

    sget v0, Lcom/onyx/galaxy/note/R$id;->progress_sync:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_sync_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->B:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_1

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xbb8

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_sync_succeed:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p2, v0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public final Y(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 6

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

    if-eqz v1, :cond_6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget v1, Lcom/onyx/galaxy/note/R$id;->progress_sync:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_sync_status:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncing()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {v2, v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getProgress()I

    move-result p0

    invoke-virtual {v1, p0, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncFail()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1, v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {v2, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    sget p2, Lcom/onyx/galaxy/note/R$drawable;->icon_sync_error:I

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p2, Lcom/sunia/HTREnginev2/c0k;

    invoke-direct {p2, p0, v2, p1}, Lcom/sunia/HTREnginev2/c0k;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->X(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-static {v1, v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {v2, v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final enableMulSelect(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->E:Z

    const-string v0, "pay_load_key_toggle_multi_select"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final getDisplayType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    return p0
.end method

.method public final getEnableDrag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->y:Z

    return p0
.end method

.method public final getNotePosition(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_3
    return v1
.end method

.method public final getNoteQuotaViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->z:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    return-object p0
.end method

.method public final getNoteTypePosition(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

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

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    :goto_4
    return v1
.end method

.method public final getSelectType()Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->x:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-object p0
.end method

.method public final getSelectedTagId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->A:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectionList()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    return-object p0
.end method

.method public final getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->w:Lcom/onyx/android/sdk/base/data/SortBy;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->v:Ljava/util/Map;

    return-object p0
.end method

.method public final handleSyncNoteProgressChangedEvent(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "syncNoteList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "pay_load_key_sync_progress"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final handleTitleUpdated(Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final move(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getNotePosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getNotePosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getNoteTypePosition(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getNoteTypePosition(Ljava/lang/String;)I

    move-result v2

    if-ltz v0, :cond_e

    if-ltz v1, :cond_e

    if-eq v0, v1, :cond_e

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v2, :cond_0

    if-eq p3, v4, :cond_e

    :cond_0
    sub-int/2addr p1, v4

    if-ne p1, v2, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getPageModelBean()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    move-object v9, v8

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v4

    :cond_5
    if-eqz v7, :cond_2

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v8

    :goto_2
    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    :goto_3
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v8

    :cond_9
    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v8, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    :goto_4
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getNotePosition(Ljava/lang/String;)I

    move-result p2

    if-ne p3, v4, :cond_c

    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addAll(ILjava/util/Collection;)V

    goto :goto_6

    :cond_c
    add-int/2addr p2, v4

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p3

    if-le p2, p3, :cond_d

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addAll(ILjava/util/Collection;)V

    :goto_6
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    const-string p2, "pay_load_key_refresh_view"

    const-string p3, "NotePageListAdapter"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_e
    :goto_7
    return-void
.end method

.method public final onDocSyncSuccess(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "docIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_3
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setStatus(I)V

    :goto_4
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->B:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

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

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/onyx/galaxy/note/R$id;->ll_tags:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
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

.method public final resetDragView()V
    .locals 7

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    iget-object v6, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->D:Ljava/lang/String;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_3
    iput-object v4, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->D:Ljava/lang/String;

    if-eq v2, v5, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method

.method public final setClickCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->G:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setDisplayType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->u:I

    return-void
.end method

.method public final setEnableDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->y:Z

    return-void
.end method

.method public final setNoteQuotaViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->z:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    return-void
.end method

.method public final setSelectType(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/NoteSelectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->x:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-void
.end method

.method public final setSelectedTagId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->A:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    return-void
.end method

.method public final setShowUpdateAt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->F:Z

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->w:Lcom/onyx/android/sdk/base/data/SortBy;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->v:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final t()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/16 v1, 0x62

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$3;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$3;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$4;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$4;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$5;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$5;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$6;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$6;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$7;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$7;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$9;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$9;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$10;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$10;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$11;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$11;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$12;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$12;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/sunia/HTREnginev2/d0k;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d0k;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final updateHeaderLockView()V
    .locals 4

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

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isHeaderType()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_2

    const-string v0, "pay_load_key_header_lock"

    const-string v2, "NotePageListAdapter"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return-void
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

.method public final updateSwipeSelectItems(Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "changeItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay_load_key_selected"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_0

    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final v(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->J(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->v:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e0k;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/sunia/HTREnginev2/e0k;-><init>(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final z(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_create:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$bindHeaderViewHolder$gesture$1;

    invoke-direct {v4, v1, p0, p1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$bindHeaderViewHolder$gesture$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->M(Landroid/view/View;)V

    new-instance p0, Lcom/sunia/HTREnginev2/g0k;

    invoke-direct {p0, v2}, Lcom/sunia/HTREnginev2/g0k;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
