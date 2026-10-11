.class public final Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteDocPolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocPolicy.kt\ncom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 6 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,826:1\n766#2:827\n857#2,2:828\n1855#2,2:831\n1655#2,8:833\n1549#2:841\n1620#2,3:842\n288#2,2:845\n1549#2:847\n1620#2,3:848\n1855#2,2:851\n1855#2,2:853\n1855#2,2:862\n1864#2,3:876\n1855#2,2:879\n1549#2:881\n1620#2,3:882\n1855#2,2:885\n1855#2,2:887\n1045#2:889\n1855#2,2:893\n1#3:830\n526#4:855\n511#4,6:856\n79#5,5:864\n113#5,7:869\n344#6,3:890\n*S KotlinDebug\n*F\n+ 1 NoteDocPolicy.kt\ncom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy\n*L\n142#1:827\n142#1:828,2\n144#1:831,2\n169#1:833,8\n228#1:841\n228#1:842,3\n234#1:845,2\n237#1:847\n237#1:848,3\n281#1:851,2\n293#1:853,2\n338#1:862,2\n631#1:876,3\n657#1:879,2\n709#1:881\n709#1:882,3\n715#1:885,2\n721#1:887,2\n727#1:889\n691#1:893,2\n317#1:855\n317#1:856,6\n421#1:864,5\n421#1:869,7\n755#1:890,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\u0008\u0010\u0099\u0001\u001a\u00030\u0093\u0001\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u0098\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010\u000e\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH\u0002J\u0016\u0010\u000f\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH\u0002JB\u0010\u0016\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\t0\u00152\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J\u0012\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0007H\u0002J\u0008\u0010\u0019\u001a\u00020\u0007H\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u0007H\u0002J\u0008\u0010\u001d\u001a\u00020\u0012H\u0002J\u0016\u0010\u001f\u001a\u00020\u00072\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\"\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010!\u001a\u00020\u0007H\u0002J\u0008\u0010\"\u001a\u00020\u0007H\u0002J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H\u0002J,\u0010+\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\'2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020)0\u0011H\u0002J\u0018\u0010,\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0012H\u0002J\u0008\u0010-\u001a\u00020\u0007H\u0002J\u0008\u0010.\u001a\u00020\u0007H\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020/H\u0002J\u0008\u00102\u001a\u00020\u0004H\u0002J\u0008\u00103\u001a\u00020\u0012H\u0002J\u000c\u00104\u001a\u00020\u0007*\u00020\u0004H\u0002J\n\u00106\u001a\u0004\u0018\u000105H\u0002J\n\u00107\u001a\u0004\u0018\u000105H\u0002J\u0008\u00108\u001a\u00020\u0007H\u0002J\u0010\u0010;\u001a\u00020\u00072\u0006\u0010:\u001a\u000209H\u0002J\u0010\u0010<\u001a\u00020\u00072\u0006\u0010:\u001a\u000209H\u0002J\u0010\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\u000cH\u0002J\u0008\u0010@\u001a\u00020\u0007H\u0002J\u0008\u0010A\u001a\u00020\u0007H\u0002J&\u0010G\u001a\u00020F2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t2\u0006\u0010C\u001a\u00020)2\u0006\u0010E\u001a\u00020DH\u0002J\u0018\u0010K\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020IH\u0002J\u0008\u0010L\u001a\u00020\u000cH\u0002J\u0010\u0010N\u001a\u00020M2\u0006\u0010=\u001a\u00020\u000cH\u0002J\u001a\u0010Q\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000c2\u0008\u0010P\u001a\u0004\u0018\u00010OH\u0002J\u001a\u0010S\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000c2\u0008\u0010R\u001a\u0004\u0018\u00010MH\u0002J\u0010\u0010T\u001a\u00020M2\u0006\u0010=\u001a\u00020\u000cH\u0002J\u0008\u0010U\u001a\u00020MH\u0002J\u0008\u0010V\u001a\u00020\u0007H\u0016J\u0008\u0010W\u001a\u00020\u0002H\u0016J\u0010\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u0012H\u0016J\u000e\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH\u0016J\u0008\u0010[\u001a\u00020\u001aH\u0016J\u0008\u0010\\\u001a\u00020\u0007H\u0016J\u0010\u0010]\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020IH\u0016J\u0010\u0010]\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020D2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0010\u0010`\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0010\u0010a\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0010\u0010d\u001a\u00020\u000c2\u0006\u0010c\u001a\u00020bH\u0016J\u0010\u0010g\u001a\u00020\u00072\u0006\u0010f\u001a\u00020eH\u0016J\u0010\u0010h\u001a\u00020\u001a2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0018\u0010k\u001a\u00020\u00072\u0006\u0010^\u001a\u00020D2\u0006\u0010j\u001a\u00020iH\u0016J\u0010\u0010l\u001a\u00020\u00072\u0006\u0010:\u001a\u000209H\u0016J\u0010\u0010m\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0010\u0010n\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0010\u0010o\u001a\u00020O2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0012\u0010p\u001a\u0004\u0018\u00010O2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u0012\u0010q\u001a\u0004\u0018\u00010\u000c2\u0006\u0010E\u001a\u00020DH\u0016J\u0012\u0010q\u001a\u0004\u0018\u00010\u000c2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u0012\u0010q\u001a\u0004\u0018\u00010\u000c2\u0006\u0010s\u001a\u00020IH\u0016J\u000e\u0010t\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH\u0016J\n\u0010u\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010v\u001a\u00020\u0012H\u0016J\u0010\u0010w\u001a\u00020\u001a2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u0008\u0010x\u001a\u00020\u000cH\u0016J\u0008\u0010y\u001a\u00020OH\u0016J\u0008\u0010z\u001a\u00020DH\u0016J\u0010\u0010{\u001a\u00020D2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u000e\u0010}\u001a\u0008\u0012\u0004\u0012\u00020>0|H\u0016J\u0012\u0010\u007f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010~\u001a\u00020>H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00072\u0006\u0010~\u001a\u00020>H\u0016J\u0011\u0010\u0083\u0001\u001a\n\u0012\u0005\u0012\u00030\u0082\u00010\u0081\u0001H\u0016J\u001a\u0010\u0086\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\t2\u0008\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016J\u0019\u0010\u0088\u0001\u001a\u00020\u001a2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\tH\u0016J\u0019\u0010\u0089\u0001\u001a\u00020\u001a2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\tH\u0016J\u0019\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\t2\u0007\u0010\u008a\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020\u001a2\u0008\u0010\u008d\u0001\u001a\u00030\u008b\u0001H\u0016J\u0011\u0010\u008f\u0001\u001a\u00020\u001a2\u0006\u0010r\u001a\u00020\u0012H\u0016J\u0011\u0010\u0090\u0001\u001a\u00020\u001a2\u0006\u0010^\u001a\u00020DH\u0016J\u000c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0016R)\u0010\u0099\u0001\u001a\u00030\u0093\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008G\u0010\u0094\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001\"\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u009c\u0001\u001a\u00030\u009a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00084\u0010\u009b\u0001\u00a8\u0006\u009e\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;",
        "docModel",
        "g",
        "",
        "M",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "z",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "pageList",
        "B",
        "A",
        "pageModelList",
        "",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
        "pagePathInfoMap",
        "Lkotlin/Pair;",
        "H",
        "K",
        "L",
        "Q",
        "",
        "y",
        "r",
        "G",
        "modelList",
        "n",
        "I",
        "x",
        "t",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "m",
        "documentId",
        "Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;",
        "paperBean",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "contentReaderInfoMap",
        "h",
        "d",
        "p",
        "E",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "boxManager",
        "C",
        "w",
        "u",
        "b",
        "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;",
        "v",
        "s",
        "F",
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "args",
        "P",
        "J",
        "virtualPage",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "j",
        "o",
        "q",
        "virtualPageList",
        "readerPageInfo",
        "",
        "index",
        "",
        "a",
        "commonVirtualPage",
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "boxCellInfo",
        "c",
        "e",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "f",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "N",
        "pageInfo",
        "O",
        "k",
        "i",
        "onDocCreated",
        "onDocOpened",
        "currentPageId",
        "updatePageIdOnInit",
        "getVirtualPageList",
        "save",
        "close",
        "addPage",
        "pageIndex",
        "insertPage",
        "removePage",
        "clearPage",
        "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
        "copyPageArgs",
        "copyPage",
        "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;",
        "movePageArgs",
        "movePage",
        "gotoPage",
        "Landroid/graphics/RectF;",
        "newOriginRectF",
        "updateOriginPageRectF",
        "updatePageMargin",
        "updatePage",
        "updateCoverPage",
        "ensureNotePage",
        "getNotePage",
        "getVirtualPage",
        "pageId",
        "cellInfo",
        "getDirtyVirtualPages",
        "getCoverPage",
        "getCoverPageId",
        "isCoverPage",
        "ensureGlobalPage",
        "ensureGlobalNotePage",
        "getVirtualPageCount",
        "getVirtualPageIndex",
        "",
        "boxInfoSnapshot",
        "boxInfo",
        "obtainVirtualPage",
        "updateBoxInfo",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "readTableOfContent",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "queryArgs",
        "loadTocEntries",
        "tocEntries",
        "deleteTocEntry",
        "updateTocEntry",
        "keyword",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "loadBookmarkList",
        "model",
        "updateBookmark",
        "deleteBookmark",
        "isNeedUpdateCover",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "loadGeoLayoutBackground",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "getWorkBundle",
        "()Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "setWorkBundle",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;",
        "virtualDoc",
        "<init>",
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
        "SMAP\nNoteDocPolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocPolicy.kt\ncom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 6 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,826:1\n766#2:827\n857#2,2:828\n1855#2,2:831\n1655#2,8:833\n1549#2:841\n1620#2,3:842\n288#2,2:845\n1549#2:847\n1620#2,3:848\n1855#2,2:851\n1855#2,2:853\n1855#2,2:862\n1864#2,3:876\n1855#2,2:879\n1549#2:881\n1620#2,3:882\n1855#2,2:885\n1855#2,2:887\n1045#2:889\n1855#2,2:893\n1#3:830\n526#4:855\n511#4,6:856\n79#5,5:864\n113#5,7:869\n344#6,3:890\n*S KotlinDebug\n*F\n+ 1 NoteDocPolicy.kt\ncom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy\n*L\n142#1:827\n142#1:828,2\n144#1:831,2\n169#1:833,8\n228#1:841\n228#1:842,3\n234#1:845,2\n237#1:847\n237#1:848,3\n281#1:851,2\n293#1:853,2\n338#1:862,2\n631#1:876,3\n657#1:879,2\n709#1:881\n709#1:882,3\n715#1:885,2\n721#1:887,2\n727#1:889\n691#1:893,2\n317#1:855\n317#1:856,6\n421#1:864,5\n421#1:869,7\n755#1:890,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    return-void
.end method

.method public static final D(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageIndex(I)V

    :cond_0
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->D(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;Lcom/onyx/android/sdk/base/data/Tree;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->sortVirtualTocModelTreeToNatural(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final synthetic access$tag(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->G()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageDistinct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$logIfPageDistinct$2$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$logIfPageDistinct$2$1;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getOrderIndex()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invalid orderIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getOrderIndex()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fillVirtualPageListByModelList"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save doc model fail, boxList empty, detail:\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getDebugString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->w()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getBoxManager()Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->isNaN()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->updateVirtualDocModel(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->C(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setCoverPageId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setDocOptions(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualDocModel(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    return-void
.end method

.method public final F()V
    .locals 5

    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->convertToChangedModelData()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageModelChangedData;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageModelChangedData;->getAllList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->clearAfterSave()V

    new-instance v3, Lkotlin/time/TimedValue;

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v1, v4}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageModelChangedData;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageModelChangedData;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final H(Ljava/util/List;Ljava/util/Map;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;>;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$pageList$1;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$pageList$1;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isDraft(I)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->isEnabledDistinctDraftPage()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

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

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBoxCellInfo()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-eq p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const/4 p2, 0x0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p2

    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object p2, p1

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$distinctList$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$distinctList$3;

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lkotlin/Pair;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    return-object p1
.end method

.method public final I(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isDraft(I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt;->toVirtualPagePathInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPagePathInfoMap$2;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPagePathInfoMap$2;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPagePathInfoMap$3;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPagePathInfoMap$3;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :cond_7
    :goto_3
    check-cast p0, Ljava/util/Collection;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPagePathInfoMap$4;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPagePathInfoMap$4;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final J(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyToCover()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v2

    new-instance v9, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginColor()I

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResource()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateSpace()F

    move-result v3

    invoke-virtual {v9, v3}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateSpace(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateResourceId(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v2, v9}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updatePageMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final K(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getCoverPageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setCoverPageId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->ensureGlobalPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setGlobalPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getGeoLayoutShaderWrapper()Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->loadGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->setGeoLayout(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public final N(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->updateNotePageInfo(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->O(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method

.method public final O(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setPageRect(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getColorTheme()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setColorTheme(I)V

    return-void
.end method

.method public final P(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v1

    new-instance v8, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginColor()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResource()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateSpace()F

    move-result v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateSpace(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateResourceId(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1, v8}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updatePageMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public final Q()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setActiveScene(I)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;I)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            "I)F"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public addPage(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "boxCellInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->e()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->c(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->addPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPage, cellInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->F()V

    return-object v0
.end method

.method public addPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->addPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->f(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDefaultTemplate()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init defaultTemplate fail!"

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public boxInfoSnapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$boxInfoSnapshot$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$boxInfoSnapshot$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->copyWithNewPageId()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, p1, v0}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->copy$default(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->setBoxCellInfo(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updateBoxExtraInfo()V

    return-object p0
.end method

.method public clearPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->destroy()V

    return-void
.end method

.method public copyPage(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "copyPageArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;->getSrcIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->copy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->setSaved(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->setPageId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;->getDstIndex()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->insertPage(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-object v0
.end method

.method public final d(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getCoverRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getCoverJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPage(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public deleteBookmark(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->removeVirtualBookmarkByPageId(Ljava/util/List;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public deleteTocEntry(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "tocEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->removeVirtualToc(Ljava/util/Collection;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final e()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createDraftPage(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    return-object p0
.end method

.method public ensureGlobalPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getGlobalPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    invoke-direct {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->setPageId(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setGlobalPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getGlobalPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->j(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->N(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-object v0
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->k(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->i()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->updateNotePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->O(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-object v0
.end method

.method public final g(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->setVirtualDocModel(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->loadGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->setGeoLayoutBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    move-object v1, p1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    :cond_4
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object v0
.end method

.method public getCoverPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public getCoverPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDirtyVirtualPages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getDirtyMapHistory()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getOrNullNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->N(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-object v0
.end method

.method public getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public getVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cellInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public getVirtualPageCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getVirtualPageIndex(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVirtualPageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    return-object p0
.end method

.method public gotoPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "virtualPage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final h(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;Ljava/util/Map;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPage(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p2

    if-eqz v0, :cond_6

    sget-object v1, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isPDF(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getTemplateFilePath(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "templateRes"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v2, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string v7, "get(path)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentPageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p1, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "readerPathInfo expected not null, but actual null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageByReader$default(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object p2
.end method

.method public final i()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->ensureGlobalNotePageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public insertPage(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->insertPage(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->f(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public isCoverPage(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNeedUpdateCover(I)Z
    .locals 12

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getFirstPageIdOnInit()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageIdOnInit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getWorkFeature(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;->useFirstPageAsCoverPage()Z

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getCoverPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    if-nez p1, :cond_4

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_2
    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v6

    :goto_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getDirtyVirtualPages()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$isNeedUpdateCover$isDirtyPage$1;

    invoke-direct {v9, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$isNeedUpdateCover$isDirtyPage$1;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v8

    if-nez v7, :cond_7

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :cond_7
    :goto_4
    sget-object v9, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "firstPageIdOnInit = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", useFirstPageAsCoverPage = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasCoverPage = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pageIdOnInit = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageIndex = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pageId = "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isDirtyPage = "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isPageIdChanged = "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isNeedUpdateCover = "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v9, p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->virtualPageSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setOriginRectF(Landroid/graphics/RectF;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setBox(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setNoteInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensurePageInfo(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getWorkFeature(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;->supportMultiPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setEnabledReorderIndex(Z)V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->z()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", loadPageModelList, Size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needInit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", docModel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->r()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->x()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", init"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->Q()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->n(Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fill update"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getActualScale()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->K(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->L()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->M()V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->g(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    move-result-object p0

    return-object p0
.end method

.method public loadBookmarkList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualBookmarkQueryArgsKt;->loadEnabledBookmarkListQuery(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualBookmarkList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setPageIndex(I)V

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$loadBookmarkList$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$loadBookmarkList$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getWorkFeature(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;->supportPageBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-lez v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGeoLayoutBackground find exist path in "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " index:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportWarn(Ljava/lang/String;)V

    :cond_1
    move-object v3, v6

    goto :goto_1

    :cond_2
    move v4, v3

    move-object v3, v6

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFileSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-object p0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public loadTocEntries(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualTocModelList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->isContainsCover()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->d(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setCoverPageId(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getReaderPathInfoList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByCreateInfo$contentReaderInfoMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByCreateInfo$contentReaderInfoMap$1;

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    invoke-virtual {p0, v0, v3, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->h(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;Ljava/util/Map;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updateVirtualPageBoxInfo(Landroid/graphics/RectF;)V

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->initPageList(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->k(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->O(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public movePage(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "movePageArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->movePage(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->I(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$1;

    invoke-direct {v2, p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$1;-><init>(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->H(Ljava/util/List;Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->isEnabledReorderIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->B(Ljava/util/List;)V

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;-><init>(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;Lkotlin/Pair;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->initPageList(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->removePage(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->A(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 13

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getReaderPathInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fillVirtualPageListByReaderPathInfoList error, list empty."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    move-object v6, v3

    check-cast v6, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {p0, v1, v6, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a(Ljava/util/List;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;I)F

    move-result v2

    invoke-static {v9, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v9}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    sget-object v5, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageByReader$default(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->initPageList(Ljava/util/Collection;)V

    return-void
.end method

.method public obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public onDocCreated()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->l()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-void
.end method

.method public onDocOpened()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->l()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    move-result-object p0

    return-object p0
.end method

.method public final p()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->valueList()Ljava/util/List;

    move-result-object v1

    const-string v2, "valueList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageFromKNoteNotePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->initPageList(Ljava/util/Collection;)V

    return-void
.end method

.method public final q()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->e()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->c(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->initPageList(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->updateCellPageMap(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setActiveScene(I)V

    return-void
.end method

.method public readTableOfContent()Lcom/onyx/android/sdk/base/data/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualTocTree()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->D(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;Lcom/onyx/android/sdk/base/data/Tree;)V

    return-object v0
.end method

.method public removePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->removePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public final s()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    new-instance v2, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    invoke-direct {v2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->Companion:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;->defaultPaper()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->updateByTemplateJson(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object p0

    return-object p0
.end method

.method public save()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->E()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->F()V

    const/4 p0, 0x1

    return p0
.end method

.method public final setWorkBundle(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "noteCreateInfo is empty, maybe pull from kNote, init virtual page"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->p()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->isContainsCover()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_4

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method public updateBookmark(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->resetRevisionId()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualBookmarkList(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public updateBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->setBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public updateCoverPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setCoverPageId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public updateOriginPageRectF(ILandroid/graphics/RectF;)V
    .locals 1
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newOriginRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->updateOriginPageRectF(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public updatePageIdOnInit(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentPageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->setPageIdOnInit(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageMargin(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyAll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->J(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->P(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    :goto_0
    return-void
.end method

.method public updateTocEntry(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "tocEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->resetRevisionId()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualTocList(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final v()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->s()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    new-instance v3, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, v2, v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->updateByTemplateJson(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setViewportId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setAlignCenterAfterOpen(Z)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVirtualDocModel, viewportId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->v()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setDefaultTemplate(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    return-object v0
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->t()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->o()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->q()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->t()V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->b:Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;->getPageList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->toVirtualPageModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVirtualPage, modelList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Lkotlin/reflect/KClass;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final y()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageDataFetchType()Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/DataFetchType;->REMOVED:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageDataFetchType()Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageModelList(Lcom/onyx/android/sdk/replicator/bean/DataFetchType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
