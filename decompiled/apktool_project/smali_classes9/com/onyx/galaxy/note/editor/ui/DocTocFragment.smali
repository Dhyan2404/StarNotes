.class public final Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocTocFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocTocFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n310#2:874\n326#2,4:875\n311#2:879\n310#2:880\n326#2,4:881\n311#2:885\n256#2,2:888\n256#2,2:890\n1855#3,2:886\n1855#3,2:892\n1855#3,2:894\n1603#3,9:896\n1855#3:905\n1856#3:907\n1612#3:908\n1855#3,2:910\n1855#3:912\n350#3,7:913\n1856#3:920\n350#3,7:921\n1#4:906\n1#4:909\n*S KotlinDebug\n*F\n+ 1 DocTocFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocTocFragment\n*L\n407#1:874\n407#1:875,4\n407#1:879\n411#1:880\n411#1:881,4\n411#1:885\n483#1:888,2\n484#1:890,2\n469#1:886,2\n503#1:892,2\n550#1:894,2\n560#1:896,9\n560#1:905\n560#1:907\n560#1:908\n664#1:910,2\n678#1:912\n679#1:913,7\n678#1:920\n823#1:921,7\n560#1:906\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fe\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0008*\u0002\u009c\u0001\u0018\u0000 \u00a2\u00012\u00020\u0001:\u0002\u00a2\u0001B\t\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0016\u0010\u000c\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0016\u0010\u0017\u001a\u00020\u00042\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0016\u0010\u0019\u001a\u00020\u00042\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002J\u0016\u0010\u001e\u001a\u00020\u00042\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010\u001f\u001a\u00020\u00042\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010!\u001a\u00020\u00042\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010\"\u001a\u00020\u0004H\u0002J\u0018\u0010$\u001a\u00020\u00022\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0016\u0010%\u001a\u00020\u00022\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0014H\u0002J\u0018\u0010(\u001a\u00020\u00042\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0008\u0010)\u001a\u00020\u0004H\u0002J \u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*2\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0018\u0010-\u001a\u00020\u00042\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0002H\u0002J\u0010\u00101\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0002H\u0002J\u0008\u00102\u001a\u00020\u0004H\u0002J\u0010\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203H\u0002J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u000203H\u0002J\u0010\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u000207H\u0002J\u001a\u0010;\u001a\u00020\u00042\u0010\u0008\u0002\u0010:\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0008\u0010<\u001a\u00020\u0004H\u0002J\u001c\u0010=\u001a\u00020\u00042\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0014H\u0002J\u0018\u0010?\u001a\u00020\u00042\u000e\u0010>\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0008\u0010@\u001a\u00020\u0004H\u0002J\u0008\u0010A\u001a\u00020\u0002H\u0002J\u0008\u0010B\u001a\u00020\u0004H\u0002J\u000e\u0010E\u001a\u00020\u00042\u0006\u0010D\u001a\u00020CJ\u000e\u0010G\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u0002J\u0014\u0010J\u001a\u00020\u00042\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00040HJ$\u0010Q\u001a\u00020*2\u0006\u0010L\u001a\u00020K2\u0008\u0010N\u001a\u0004\u0018\u00010M2\u0008\u0010P\u001a\u0004\u0018\u00010OH\u0016J\u001a\u0010S\u001a\u00020\u00042\u0006\u0010R\u001a\u00020*2\u0008\u0010P\u001a\u0004\u0018\u00010OH\u0016J\u0008\u0010T\u001a\u00020\u0004H\u0016J\u0008\u0010U\u001a\u00020\u0004H\u0016J\u0008\u0010V\u001a\u00020\u0004H\u0016J\u0008\u0010W\u001a\u00020\u0004H\u0016J\u0010\u0010Z\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020XH\u0016J\u0010\u0010]\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020[H\u0007J\u0010\u0010_\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020bH\u0007J\u0010\u0010e\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020dH\u0007J\u0010\u0010g\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020fH\u0007J\u0010\u0010i\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020hH\u0007J\u0010\u0010k\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020jH\u0007J\u0010\u0010m\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020lH\u0007J\u0010\u0010o\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020nH\u0007J\u0010\u0010q\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020pH\u0007J\u0010\u0010s\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020rH\u0007J\u0010\u0010u\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020tH\u0007R\u001b\u0010z\u001a\u00020v8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010w\u001a\u0004\u0008x\u0010yR\u001b\u0010~\u001a\u00020{8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010w\u001a\u0004\u0008|\u0010}R\u001d\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u007fR\u001f\u0010\u0083\u0001\u001a\t\u0012\u0004\u0012\u0002030\u0081\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008@\u0010\u0082\u0001R\'\u0010\u0088\u0001\u001a\u0010\u0012\u0004\u0012\u000203\u0012\u0005\u0012\u00030\u0085\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001f\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u0002030\u0081\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008(\u0010\u0082\u0001R\u0017\u0010D\u001a\u00020C8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u0017\u0010\u008a\u0001R\u0017\u0010F\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00086\u0010\u008b\u0001R\u001d\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00040H8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008/\u0010\u008c\u0001R\u001a\u0010\u008e\u0001\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000c\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R \u0010\u0096\u0001\u001a\u00030\u0092\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0093\u0001\u0010w\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u0019\u0010\u0098\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u008b\u0001R\u001b\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u009a\u0001R\u0018\u0010\u009f\u0001\u001a\u00030\u009c\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001\u00a8\u0006\u00a3\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "b1",
        "",
        "V0",
        "N0",
        "U0",
        "S0",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "data",
        "m1",
        "T0",
        "C0",
        "y0",
        "B0",
        "d1",
        "e1",
        "f1",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "list",
        "j1",
        "toc",
        "D1",
        "z1",
        "w1",
        "H0",
        "tree",
        "F0",
        "G0",
        "node",
        "E1",
        "C1",
        "treeNode",
        "c1",
        "z0",
        "K0",
        "tocEntry",
        "i1",
        "A0",
        "Landroid/view/View;",
        "itemView",
        "A1",
        "M0",
        "enable",
        "l1",
        "selectAll",
        "x1",
        "u1",
        "",
        "eventId",
        "t1",
        "k1",
        "",
        "count",
        "B1",
        "item",
        "q1",
        "v1",
        "D0",
        "value",
        "E0",
        "g1",
        "y1",
        "s1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditBundle",
        "selectable",
        "setSelectable",
        "Lkotlin/Function0;",
        "closeOnSelect",
        "setCloseOnSelect",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreateView",
        "view",
        "onViewCreated",
        "onResume",
        "onPause",
        "onDestroyView",
        "onDestroy",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AddEvent;",
        "event",
        "onAddEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;",
        "onEnterSelectionModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;",
        "onQuitSelectionModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;",
        "onSelectAllDataEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;",
        "onTocEntryDeletedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;",
        "onTocEntryUpdatedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;",
        "onTocEntryInsertedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DeleteTocEntryFormPageEvent;",
        "onDeleteTocEntryFormPageEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;",
        "onEditDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/BeginDeleteTocEntryEvent;",
        "onTocEntryDeletedBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EndDeleteTocEntryEvent;",
        "onTocEntryDeletedEndEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;",
        "Lkotlin/Lazy;",
        "J0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;",
        "L0",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;",
        "viewmodel",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "docToc",
        "",
        "Ljava/util/Set;",
        "titleList",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "h1",
        "Ljava/util/Map;",
        "pageDataMap",
        "updateExpandStateIdList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Z",
        "Lkotlin/jvm/functions/Function0;",
        "Ljava/lang/String;",
        "lastRecordTocId",
        "n1",
        "I",
        "lastRecordOffset",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;",
        "o1",
        "I0",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;",
        "adapter",
        "p1",
        "locateCurrentToc",
        "Lcom/onyx/galaxy/note/common/view/LoadingDialog;",
        "Lcom/onyx/galaxy/note/common/view/LoadingDialog;",
        "deleteDialog",
        "com/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1",
        "r1",
        "Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;",
        "onDragListener",
        "<init>",
        "()V",
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
        "SMAP\nDocTocFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocTocFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n310#2:874\n326#2,4:875\n311#2:879\n310#2:880\n326#2,4:881\n311#2:885\n256#2,2:888\n256#2,2:890\n1855#3,2:886\n1855#3,2:892\n1855#3,2:894\n1603#3,9:896\n1855#3:905\n1856#3:907\n1612#3:908\n1855#3,2:910\n1855#3:912\n350#3,7:913\n1856#3:920\n350#3,7:921\n1#4:906\n1#4:909\n*S KotlinDebug\n*F\n+ 1 DocTocFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocTocFragment\n*L\n407#1:874\n407#1:875,4\n407#1:879\n411#1:880\n411#1:881,4\n411#1:885\n483#1:888,2\n484#1:890,2\n469#1:886,2\n503#1:892,2\n550#1:894,2\n560#1:896,9\n560#1:905\n560#1:907\n560#1:908\n664#1:910,2\n678#1:912\n679#1:913,7\n678#1:920\n823#1:921,7\n560#1:906\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DocTocFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/base/data/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g1:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i1:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public k1:Z

.field public l1:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public m1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n1:I

.field public final o1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p1:Z

.field public q1:Lcom/onyx/galaxy/note/common/view/LoadingDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final r1:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->Companion:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$viewmodel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$viewmodel$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/Tree;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1:Lcom/onyx/android/sdk/base/data/Tree;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->h1:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->i1:Ljava/util/Set;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->o1:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->p1:Z

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->r1:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;

    return-void
.end method

.method public static final O0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->A1(Landroid/view/View;Lcom/onyx/android/sdk/base/data/Tree;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static final P0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move v1, p3

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandOrCollapse$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->i1:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->w1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C1()V

    :cond_3
    return-void
.end method

.method public static final Q0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->E1(Lcom/onyx/android/sdk/base/data/Tree;)V

    :cond_0
    return-void
.end method

.method public static final R0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->i1(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final W0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->d1()V

    return-void
.end method

.method public static final X0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "requireContext(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    const-string v5, "click_galaxy_outline_add_0006"

    sget-object v6, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initView$2$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initView$2$1;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const-string p1, "click_galaxy_outline_add_0006"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public static final Y0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->y0()V

    return-void
.end method

.method public static final Z0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->B0()V

    return-void
.end method

.method public static final a1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C0()V

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getOnDragListener$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->r1:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;

    return-object p0
.end method

.method public static final synthetic access$getPageDataMap$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->h1:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getSelectable$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    return p0
.end method

.method public static final synthetic access$getTitleList$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getUpdateExpandStateIdList$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->i1:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getViewmodel(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$locateCurrentToc(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1()V

    return-void
.end method

.method public static final synthetic access$onPageDataLoaded(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onSearch(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onTocDataLoaded(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->m1(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final synthetic access$reportStatisticEvent(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$restoreTocStatus(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->v1()V

    return-void
.end method

.method public static final synthetic access$showEmptyViewOrNot(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->z1()V

    return-void
.end method

.method public static final synthetic access$updateSearchMatching(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->B1(I)V

    return-void
.end method

.method public static final synthetic access$updateTocList(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->D1(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final h1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionWithOffset(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->Q0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->W0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->n1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final n1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->D0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->a1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final o1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->p1:Z

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->o1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    return-void
.end method

.method public static final p1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->H0()V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->X0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->Z0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->q1(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->h1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->O0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->R0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->P0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->Y0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->p1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isAllSelected()Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;-><init>(Z)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final A1(Landroid/view/View;Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->TOC:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    const-string v2, "Toc"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->buildCustomDragDropIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$id;->content_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p1, p0, v2, p2, v0}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public final B0()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->K0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_1

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "requireContext(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$deleteTocEntries$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$deleteTocEntries$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    new-instance v5, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$deleteTocEntries$2;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$deleteTocEntries$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup$Companion;->showDeleteTocWarningDialog(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const-string v0, "click_galaxy_outline_0007"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    const-string v0, "view_galaxy_outline_0007"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public final B1(I)V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "searchResult"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->setSearchMatchingData(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public final C0()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->K0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_1

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "click_galaxy_outline_0010"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0, v4}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public final C1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->getSelectedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->deleteChildToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->editChildToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-ne v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->addChildToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final D0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->findCurrentTocIndex(Ljava/util/List;I)I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->E0(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public final D1(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1:Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->G0(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->w1()V

    return-void
.end method

.method public final E0(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->E0(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setExpandState(Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method public final E1(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    const-string v3, "editorBundle"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageId()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewSize(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-direct {v0, v1, v4, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$i;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$i;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final F0(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->F0(Lcom/onyx/android/sdk/base/data/Tree;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final G0(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->F0(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final H0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    return-void
.end method

.method public final I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->o1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    return-object p0
.end method

.method public final J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    return-object p0
.end method

.method public final K0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->getSelectedItems()Ljava/util/Collection;

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

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    return-object p0
.end method

.method public final M0(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/GotoPageEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result p1

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/GotoPageEvent;-><init>(I)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->l1:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_2

    const-string p0, "closeOnSelect"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final N0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setDisplayType(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/q9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_indicator:I

    new-instance v2, Lcom/sunia/HTREnginev2/r9f;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/r9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_image:I

    new-instance v2, Lcom/sunia/HTREnginev2/s9f;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/s9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final S0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->getTocData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initData$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initData$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$g;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->getMatchingData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initData$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initData$2;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$g;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final T0()V
    .locals 8

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_empty_view_top_sub_title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->note_empty_view_top_sub_title_prefix:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v3, Lcom/onyx/galaxy/note/R$string;->note_empty_view_top_sub_title_suffix:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->getImageView()Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;

    move-result-object v3

    const-string v4, "<get-imageView>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    if-eqz v5, :cond_1

    sget v7, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v7, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->searchView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->getImageView()Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {p0, v2, v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->updateSubDrawableTitle(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final U0()V
    .locals 7

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initInputLayout$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$initInputLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initLayout$default(Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final V0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->T0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/scwang/smart/refresh/header/ClassicsHeader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scwang/smart/refresh/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/l9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->buttonLayout:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->addToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->addToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/m9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->addChildToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/n9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->deleteChildToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/o9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->editChildToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/p9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->N0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->U0()V

    return-void
.end method

.method public final b1()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->l1:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c1(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->c1(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->e1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1()V

    return-void
.end method

.method public final e1()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/LoadVirtualPageModelListAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/page/LoadVirtualPageModelListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$a;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->loadData()V

    return-void
.end method

.method public final g1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->y1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_2

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->findCurrentTocIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/h9f;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/h9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i1(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->selectItem(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->z0(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->selectItem(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->A0()V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->M0(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->q1(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public final j1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->h1:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k1(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->p1:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->r1(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/onyx/android/sdk/base/data/Tree;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->onSearch(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionWithOffset(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final l1(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->addToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->selectionActionLayout:Lcom/onyx/galaxy/note/editor/view/SelectionActionLayout;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->enableSelectionMode(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C1()V

    return-void
.end method

.method public final m1(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$b;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onTocDataLoaded$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onTocDataLoaded$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    new-instance v1, Lcom/sunia/HTREnginev2/i9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$c;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$d;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$e;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$e;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/j9f;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/j9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/k9f;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k9f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onAddEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AddEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AddEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v2, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "requireContext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    const-string v6, "click_galaxy_outline_add_0002"

    sget-object v7, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onAddEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onAddEvent$1;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const-string p1, "click_galaxy_outline_add_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->s1()V

    return-void
.end method

.method public final onConfigurationChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onConfigurationChangedEvent$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onConfigurationChangedEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onDeleteTocEntryFormPageEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DeleteTocEntryFormPageEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DeleteTocEntryFormPageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEditDoneEvent(Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v0, "layoutSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->clearInputFocus(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)V

    return-void
.end method

.method public final onEnterSelectionModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->l1(Z)V

    const-string p1, "click_galaxy_outline_0004"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    const-string p1, "view_galaxy_outline_0005"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    const-string p1, "view_galaxy_outline_add_0024"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onPause()V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v1, "layoutSearch"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->clearInput(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)V

    return-void
.end method

.method public final onQuitSelectionModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->l1(Z)V

    const-string p1, "click_galaxy_outline_0006"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->d1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->u1()V

    :cond_0
    return-void
.end method

.method public final onSelectAllDataEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;->getSelect()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->x1(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C1()V

    const-string p1, "click_galaxy_outline_0005"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public final onTocEntryDeletedBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/BeginDeleteTocEntryEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/BeginDeleteTocEntryEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->q1:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->removing:I

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->q1:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final onTocEntryDeletedEndEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EndDeleteTocEntryEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EndDeleteTocEntryEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->q1:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->q1:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method

.method public final onTocEntryDeletedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;->getEntries()Ljava/util/List;

    move-result-object v0

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

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->deleteTocEntries(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->clearSelected()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/EndDeleteTocEntryEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryDeletedEvent;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/EndDeleteTocEntryEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->z1()V

    return-void
.end method

.method public final onTocEntryInsertedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1:Lcom/onyx/android/sdk/base/data/Tree;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onTocEntryInsertedEvent$parent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onTocEntryInsertedEvent$parent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/Tree;->find(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;->getEntry()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getParentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1:Lcom/onyx/android/sdk/base/data/Tree;

    :cond_2
    if-eqz v0, :cond_4

    new-instance v2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/data/Tree;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;->getEntry()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/Tree;->setItem(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/data/Tree;->setParent(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/Tree;->setLevel(I)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;->getEntry()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;->getIndex()I

    move-result p1

    invoke-virtual {v3, v0, p1, v2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->nodeAddData(Lcom/onyx/android/sdk/base/data/Tree;ILcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->selectItem(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->C1()V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isTreeItemExpanded(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expand$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->z1()V

    return-void
.end method

.method public final onTocEntryUpdatedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;->getPageIndexChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1()V

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;->getEntryList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_3
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->b1()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->V0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->S0()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_0

    const-string p1, "editorBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->getLastPageCount()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1()V

    :cond_2
    return-void
.end method

.method public final q1(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->m1:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->n1:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->m1:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->n1:I

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public final s1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->p1:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1()V

    return-void
.end method

.method public final setCloseOnSelect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeOnSelect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->l1:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    return-void
.end method

.method public final t1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final u1()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->k1:Z

    if-eqz v0, :cond_0

    const-string v0, "view_galaxy_outline_0003"

    goto :goto_0

    :cond_0
    const-string v0, "view_galaxy_outline_0001"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public final v1()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->m1:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/blankj/utilcode/util/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, -0x1

    :goto_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->n1:I

    invoke-static {v0, v4, v1}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionWithOffset(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->m1:Ljava/lang/String;

    iput v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->n1:I

    :cond_6
    :goto_5
    return-void
.end method

.method public final w1()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->i1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/toc/SaveTocEntryExpandStateAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_1

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1:Lcom/onyx/android/sdk/base/data/Tree;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->i1:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/toc/SaveTocEntryExpandStateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/Tree;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$h;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final x1(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->selectAll(Z)V

    return-void
.end method

.method public final y0()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->K0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->j1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_1

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    move-object v2, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "requireContext(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->g1:Ljava/util/Set;

    const-string v6, "click_galaxy_outline_add_0008"

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "click_galaxy_outline_add_0008"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public final y1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->p1:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z0(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->I0()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final z1()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->f1:Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v2, "emptyView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->searchView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v4, "searchView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->L0()Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->isSearchMode()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
