.class public final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$Companion;,
        Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1068:1\n310#2:1069\n326#2,4:1070\n311#2:1074\n256#2,2:1115\n256#2,2:1119\n256#2,2:1121\n256#2,2:1123\n256#2,2:1125\n256#2,2:1127\n1549#3:1075\n1620#3,3:1076\n766#3:1079\n857#3,2:1080\n1002#3,2:1082\n1864#3,3:1084\n1864#3,3:1087\n1002#3,2:1090\n1864#3,3:1092\n1002#3,2:1095\n1549#3:1097\n1620#3,3:1098\n1549#3:1101\n1620#3,3:1102\n1549#3:1105\n1620#3,3:1106\n1011#3,2:1109\n1549#3:1111\n1620#3,3:1112\n1855#3,2:1117\n*S KotlinDebug\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment\n*L\n291#1:1069\n291#1:1070,4\n291#1:1074\n722#1:1115,2\n1041#1:1119,2\n1043#1:1121,2\n1044#1:1123,2\n1056#1:1125,2\n1058#1:1127,2\n459#1:1075\n459#1:1076,3\n462#1:1079\n462#1:1080,2\n499#1:1082,2\n501#1:1084,3\n522#1:1087,3\n539#1:1090,2\n541#1:1092,3\n563#1:1095,2\n564#1:1097\n564#1:1098,3\n588#1:1101\n588#1:1102,3\n594#1:1105\n594#1:1106,3\n603#1:1109,2\n672#1:1111\n672#1:1112,3\n921#1:1117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u00ba\u00012\u00020\u0001:\u0002\u00ba\u0001B\t\u00a2\u0006\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0012\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0008\u0010\u001d\u001a\u00020\u0002H\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u001e\u0010%\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0002J\u0008\u0010&\u001a\u00020\u0002H\u0002J\u0008\u0010\'\u001a\u00020\u0002H\u0002J\u0008\u0010(\u001a\u00020\u0002H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0008\u0010-\u001a\u00020\u0002H\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0002J\u000e\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0\"H\u0002J\u0010\u00101\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0008\u00102\u001a\u00020\u0002H\u0002J\u0008\u00103\u001a\u00020\u0002H\u0002J\u0012\u00105\u001a\u00020\u00022\u0008\u0008\u0002\u00104\u001a\u00020\u0004H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020#H\u0002J\u0018\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u0002082\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u0004H\u0002J\u0008\u0010=\u001a\u00020\u0002H\u0002J\u0008\u0010>\u001a\u00020\u0004H\u0002J\u0008\u0010?\u001a\u00020\u0002H\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020*H\u0002J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010@\u001a\u00020*H\u0002J\u0008\u0010C\u001a\u00020\u0004H\u0002J\u0008\u0010D\u001a\u00020\u0002H\u0002J\u0008\u0010E\u001a\u00020\u0002H\u0002J\u0010\u0010G\u001a\u00020\u00022\u0006\u0010F\u001a\u00020#H\u0002J\u0008\u0010H\u001a\u00020\u0002H\u0002J\u0010\u0010J\u001a\u00020*2\u0006\u0010I\u001a\u00020*H\u0002J\u0008\u0010K\u001a\u00020\u0002H\u0002J\u0008\u0010L\u001a\u00020\u0002H\u0002J\u0008\u0010M\u001a\u00020\u0002H\u0002J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010O\u001a\u00020NH\u0002J\u000e\u0010Q\u001a\u00020\u00022\u0006\u0010I\u001a\u00020*J\u000e\u0010T\u001a\u00020\u00022\u0006\u0010S\u001a\u00020RJ\u000e\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020RJ\u000e\u0010X\u001a\u00020\u00022\u0006\u0010W\u001a\u00020\u0004J\u000e\u0010[\u001a\u00020\u00022\u0006\u0010Z\u001a\u00020YJ\u0014\u0010^\u001a\u00020\u00022\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00020\\J\u000e\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020\u0004J$\u0010g\u001a\u0002082\u0006\u0010b\u001a\u00020a2\u0008\u0010d\u001a\u0004\u0018\u00010c2\u0008\u0010f\u001a\u0004\u0018\u00010eH\u0016J\u001a\u0010h\u001a\u00020\u00022\u0006\u00109\u001a\u0002082\u0008\u0010f\u001a\u0004\u0018\u00010eH\u0016J\u0008\u0010i\u001a\u00020\u0002H\u0016J\u0008\u0010j\u001a\u00020\u0002H\u0016J\u0008\u0010k\u001a\u00020\u0002H\u0016J\u000c\u0010m\u001a\u0008\u0012\u0004\u0012\u00020l0\"J\u0010\u0010p\u001a\u00020\u00022\u0006\u0010o\u001a\u00020nH\u0007J\u0010\u0010r\u001a\u00020\u00022\u0006\u0010o\u001a\u00020qH\u0007J\u0010\u0010t\u001a\u00020\u00022\u0006\u0010o\u001a\u00020sH\u0007J\u0010\u0010v\u001a\u00020\u00022\u0006\u0010o\u001a\u00020uH\u0007J\u0010\u0010x\u001a\u00020\u00022\u0006\u0010o\u001a\u00020wH\u0007J\u0010\u0010z\u001a\u00020\u00022\u0006\u0010o\u001a\u00020yH\u0007J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010o\u001a\u00020{H\u0007J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010o\u001a\u00020}H\u0007J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u007fH\u0007J\u0012\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0081\u0001H\u0007J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0083\u0001H\u0007J\u0012\u0010\u0086\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0085\u0001H\u0007J\u0012\u0010\u0088\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0087\u0001H\u0007J\u0012\u0010\u008a\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u0089\u0001H\u0007J\u0012\u0010\u008c\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u008b\u0001H\u0007J\u0012\u0010\u008e\u0001\u001a\u00020\u00022\u0007\u0010o\u001a\u00030\u008d\u0001H\u0007R!\u0010\u0094\u0001\u001a\u00030\u008f\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0018\u0010\u0098\u0001\u001a\u00030\u0095\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0017\u0010S\u001a\u00020R8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\r\u0010\u0099\u0001R\u0018\u0010U\u001a\u00020R8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u0099\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0017\u0010W\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u009f\u0001R\u0019\u0010\u00a1\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u009f\u0001R\u001e\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00020\\8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u0019\u0010\u00a6\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u001a\u0010\u00aa\u0001\u001a\u00030\u00a7\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001a\u0010\u00ae\u0001\u001a\u00030\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u0019\u0010\u00b0\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00a5\u0001R\u001a\u0010\u00b4\u0001\u001a\u00030\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u0019\u0010\u00b7\u0001\u001a\u00020Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\u00a8\u0006\u00bb\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "X1",
        "",
        "w1",
        "W1",
        "",
        "V0",
        "C1",
        "s1",
        "Y0",
        "a1",
        "f1",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;",
        "searchHighlightRegion",
        "X0",
        "Z0",
        "b1",
        "M1",
        "fullscreen",
        "V1",
        "attach",
        "J0",
        "i1",
        "G0",
        "u1",
        "I0",
        "N0",
        "L1",
        "O0",
        "Q0",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "",
        "",
        "pageIdList",
        "Z1",
        "R1",
        "P0",
        "M0",
        "d2",
        "",
        "pos",
        "D1",
        "Q1",
        "c2",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "U0",
        "b2",
        "z1",
        "y1",
        "dispose",
        "A1",
        "text",
        "F1",
        "Landroid/view/View;",
        "view",
        "Y1",
        "enable",
        "K1",
        "U1",
        "v1",
        "T1",
        "pageIndex",
        "S1",
        "W0",
        "x1",
        "K0",
        "P1",
        "eventId",
        "O1",
        "a2",
        "level",
        "e2",
        "I1",
        "J1",
        "L0",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "type",
        "S0",
        "setCurrentVisibleLevel",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditBundle",
        "docManagerBundle",
        "setDocManagerBundle",
        "selectable",
        "setSelectable",
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "sizeType",
        "setThumbnailSizeType",
        "Lkotlin/Function0;",
        "closeOnSelect",
        "setCloseOnSelect",
        "showOperationMenu",
        "setShowActionMenu",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreateView",
        "onViewCreated",
        "onResume",
        "onPause",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "getSelectedItems",
        "Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;",
        "event",
        "onSelectPastedPageEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;",
        "onEnterSelectionModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;",
        "onQuitSelectionModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;",
        "onSelectAllDataEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;",
        "onTocEntryInsertedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;",
        "onSidebarVisibleLevelChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;",
        "onEditDoneEvent",
        "Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;",
        "onOverviewSearchEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
        "onStartActivateDocumentEvent",
        "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;",
        "onKeyboardClose",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;",
        "onPageThumbnailSizeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;",
        "onUpdateSearchProgressEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;",
        "onRotatePageProgressEvent",
        "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;",
        "onActivationStateChangedEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "T0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;",
        "e1",
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;",
        "viewModel",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g1",
        "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;",
        "h1",
        "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;",
        "itemAnimatorBackup",
        "Z",
        "j1",
        "showActionMenu",
        "k1",
        "Lkotlin/jvm/functions/Function0;",
        "l1",
        "I",
        "currentVisibleLevel",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;",
        "m1",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;",
        "adapter",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;",
        "n1",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;",
        "searchHighlightRegionData",
        "o1",
        "selectionWidth",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "p1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "q1",
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "thumbnailSizeType",
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
        "SMAP\nDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1068:1\n310#2:1069\n326#2,4:1070\n311#2:1074\n256#2,2:1115\n256#2,2:1119\n256#2,2:1121\n256#2,2:1123\n256#2,2:1125\n256#2,2:1127\n1549#3:1075\n1620#3,3:1076\n766#3:1079\n857#3,2:1080\n1002#3,2:1082\n1864#3,3:1084\n1864#3,3:1087\n1002#3,2:1090\n1864#3,3:1092\n1002#3,2:1095\n1549#3:1097\n1620#3,3:1098\n1549#3:1101\n1620#3,3:1102\n1549#3:1105\n1620#3,3:1106\n1011#3,2:1109\n1549#3:1111\n1620#3,3:1112\n1855#3,2:1117\n*S KotlinDebug\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment\n*L\n291#1:1069\n291#1:1070,4\n291#1:1074\n722#1:1115,2\n1041#1:1119,2\n1043#1:1121,2\n1044#1:1123,2\n1056#1:1125,2\n1058#1:1127,2\n459#1:1075\n459#1:1076,3\n462#1:1079\n462#1:1080,2\n499#1:1082,2\n501#1:1084,3\n522#1:1087,3\n539#1:1090,2\n541#1:1092,3\n563#1:1095,2\n564#1:1097\n564#1:1098,3\n588#1:1101\n588#1:1102,3\n594#1:1105\n594#1:1106,3\n603#1:1109,2\n672#1:1111\n672#1:1112,3\n921#1:1117,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DocOverviewFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public h1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i1:Z

.field public j1:Z

.field public k1:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public l1:I

.field public m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

.field public n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o1:I

.field public p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Companion:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->j1:Z

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->l1:I

    new-instance v0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->o1:I

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    return-void
.end method

.method public static synthetic A0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->G1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic B0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic B1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->A1(Z)V

    return-void
.end method

.method public static synthetic C0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->E1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V

    return-void
.end method

.method public static final E1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initInputData(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->F1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic F0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->j1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final G1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->addPageSearchData(Ljava/util/List;)V

    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    :cond_0
    return-void
.end method

.method public static final H1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->I1()V

    return-void
.end method

.method public static final N1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M1()V

    return-void
.end method

.method public static final R0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->L0()V

    return-void
.end method

.method public static final synthetic access$clearSelectedItems(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    return-void
.end method

.method public static final synthetic access$filterSearchResult(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->S0(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getItemAnimatorBackup$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->h1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method public static final synthetic access$getSelectable$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    return p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    return-object p0
.end method

.method public static final synthetic access$gotoNearestHighlightRegion(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->W0(I)V

    return-void
.end method

.method public static final synthetic access$initFilterLayout(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Z0()V

    return-void
.end method

.method public static final synthetic access$isPageIndexChanged(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->v1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSearchMode(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->x1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onSearch(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->F1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onSearchDone(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->I1()V

    return-void
.end method

.method public static final synthetic access$reattachItemTouchHelper(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M1()V

    return-void
.end method

.method public static final synthetic access$reportStatisticEvent(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$resetHighlightRegionData(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Q1()V

    return-void
.end method

.method public static final synthetic access$selectNearestHighlightRegion(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->S1(I)V

    return-void
.end method

.method public static final synthetic access$setAdapterCurrentIndex(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->U1()V

    return-void
.end method

.method public static final synthetic access$showExportDialog(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Z1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updateSearchHighlightRegionIndex(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->c2()V

    return-void
.end method

.method public static final synthetic access$updateSelectionView(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d2()V

    return-void
.end method

.method public static final c1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->D1(I)V

    return-void
.end method

.method public static final d1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->b2(I)V

    return-void
.end method

.method public static final e1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Y1(Landroid/view/View;I)V

    return-void
.end method

.method public static final g1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->findPrevRegion()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->setCurrentPageIndex(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->X0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public static final h1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->findNextRegion()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->setCurrentPageIndex(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->X0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public static final j1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O0()V

    return-void
.end method

.method public static final k1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->N0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->g1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final l1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->L1()V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->t1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void
.end method

.method public static final m1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Q0()V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final n1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->P0()V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->R0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static final o1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->R1()V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->k1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final p1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->G0()V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final q1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->u1()V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->h1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final r1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->I0()V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->r1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->c1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final t1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->selectionActionLayout:Lcom/onyx/galaxy/note/editor/view/SelectionActionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->o1:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->K0()V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->o1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->H1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->H0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void
.end method

.method public static synthetic y0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->N1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void
.end method

.method public static synthetic z0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->l1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/page/LoadVirtualPageModelListAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/LoadVirtualPageModelListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$h;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$i;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$i;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final C1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->s1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final D1(I)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v0

    const-string v3, "editorBundle"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->onItemClick(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d2()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isAllItemSelected()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;-><init>(Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->setCurrentPageIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->x1()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->W0(I)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object v5, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {v5, p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->findFirstHighlightRect(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Landroid/graphics/RectF;

    move-result-object p1

    goto :goto_1

    :cond_a
    move-object p1, v2

    :goto_1
    invoke-direct {v4, v1, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->executeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_2
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->k1:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_b

    const-string p0, "closeOnSelect"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v2, p0

    :goto_3
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public final F1(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v1, "searchEmptyView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->J0(Z)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_2

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->clearNoteSearchBeanList()V

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearching(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->z1()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->J1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchProgress(F)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/SearchActions;->getCorrespondingSearchTypes(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;->createSearchArgs(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$l;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$l;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$m;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$m;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onSearch$searchDisposable$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onSearch$searchDisposable$3;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$n;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$n;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$o;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$o;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$p;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$p;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onSearch$searchDisposable$7;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onSearch$searchDisposable$7;

    new-instance v1, Lcom/sunia/HTREnginev2/u8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$q;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$q;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$j;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$j;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/v8f;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/v8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$k;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$k;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final G0()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v5, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    invoke-virtual {v5, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->itemIndexOfFirst(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v4, :cond_6

    const-string v4, "editorBundle"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v2, v4

    :goto_3
    new-instance v4, Lcom/sunia/HTREnginev2/y8f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/y8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->addToCustomPaper(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lio/reactivex/rxjava3/functions/Action;)V

    const-string v0, "click_galaxy_custom_template_0003"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final I0()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v5, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    const-string v2, ""

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v3

    invoke-direct {v5, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_2

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v1, "requireContext(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    sget-object v7, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "click_galaxy_outline_add_0005"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final I1()V
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final J0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->attachItemTouchHelper(Z)V

    return-void
.end method

.method public final J1()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->updateFilterStatus(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v1, "searchEmptyView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchStatusLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "searchStatusLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->highlightNavLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v4, "highlightNavLayout"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearching(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setUseCachedResult(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getCachedSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    return-void
.end method

.method public final K0()V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->o1:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->selectionActionLayout:Lcom/onyx/galaxy/note/editor/view/SelectionActionLayout;

    const-string v1, "selectionActionLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/onyx/galaxy/note/editor/view/HideTextView;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/HideTextView;->hideText(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final K1(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->J0(Z)V

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->enterSelectionMode()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->quitSelectionMode()V

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->selectionActionLayout:Lcom/onyx/galaxy/note/editor/view/SelectionActionLayout;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->j1:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d2()V

    return-void
.end method

.method public final L0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v4, "searchEmptyView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->x1()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/16 v6, 0x8

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v7, "searchResult"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->x1()Z

    move-result v8

    invoke-virtual {v0, v3, v7, v8}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->setSearchMatchingData(Landroid/widget/TextView;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->highlightNavLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "highlightNavLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-lez p0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final L1()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v4, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;

    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_4

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Create;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Create;-><init>(Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;)V

    invoke-direct {p0, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/bean/PasteState;)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final M0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->clearSelectedItems()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d2()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;-><init>(Z)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final M1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/z8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->J0(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->J0(Z)V

    return-void
.end method

.method public final N0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$clonePage$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$clonePage$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-direct {v7, v8, v5, v3}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;-><init>(IIZ)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v3, "editorBundle"

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    new-instance v4, Lcom/onyx/android/sdk/universal/editor/events/app/ClonePageEvent;

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Create;

    invoke-direct {v5, v2}, Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Create;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ClonePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/bean/CloneState;)V

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getClonePageInfo()Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, p0

    :goto_1
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;->setDocId(Ljava/lang/String;)V

    return-void
.end method

.method public final O0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$copy$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$copy$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-direct {v7, v8, v5, v3}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;-><init>(IIZ)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_5

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;

    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;-><init>(Ljava/util/List;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    const-string v0, "click_galaxy_page_add_0007"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final O1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

.method public final P0()V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->prohibit_delete_all_page_warning:I

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$delete$$inlined$sortByDescending$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$delete$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    sget-object v5, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_6

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_1

    :cond_6
    move-object v6, v0

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    const-string v0, "requireContext(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$delete$2;

    invoke-direct {v9, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$delete$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    new-instance v10, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$delete$3;

    invoke-direct {v10, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$delete$3;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual/range {v5 .. v10}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->deletePages(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const-string v0, "view_galaxy_docsOverview_0007"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    const-string v0, "click_galaxy_docsOverview_0012"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final P1()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz v0, :cond_0

    const-string v0, "view_galaxy_docsOverview_0003"

    goto :goto_0

    :cond_0
    const-string v0, "view_galaxy_docsOverview_0001"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final Q0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$export$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$export$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_4

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    :cond_5
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$a;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$a;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$b;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$b;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$c;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$c;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$d;

    invoke-direct {v3, p0, v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$d;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/h8f;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/h8f;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    const-string v0, "click_galaxy_exportDocs_0001"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final Q1()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->U0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->createSearchHighlightRegionData(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    return-void
.end method

.method public final R1()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_2

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string p0, "requireContext(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$rotate$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$rotate$1;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->rotatePages$default(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final S0(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->filterCachedResult(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$filterSearchResult$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$filterSearchResult$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->submitInObservable(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Q1()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getCurrentPageIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->W0(I)V

    return-void
.end method

.method public final S1(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getNearestRegion(I)Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->updateSelectedRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    return-object p0
.end method

.method public final T1()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getCurrentPageIndex()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getPageFirstRegion(I)Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->updateSelectedRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final U0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getUseCachedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->filterCachedResult(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p0, :cond_1

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final U1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final V0()F
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_280:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_150:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_126:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method public final V1(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setDisplayType(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->l1:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e2(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method public final W0(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getNearestRegion(I)Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->X0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final W1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->V0()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setItemWidthLarge(F)V

    return-void
.end method

.method public final X0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->updateSelectedRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_1

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->transformedRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$e;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeSilently(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final X1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->W1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->setThumbnailSizeType(Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->V1(Z)V

    return-void
.end method

.method public final Y0()V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->getImageView()Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;

    move-result-object p0

    const-string v0, "<get-imageView>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y1(Landroid/view/View;I)V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result p2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_4

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    invoke-direct {v3, v2, v0, p2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;IZ)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p2, "getRoot(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    return-void
.end method

.method public final Z0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->filterSearchType()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v3, "layoutSearch"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initFilterLayout$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initFilterLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initFilterLayout(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final Z1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p2, :cond_0

    const-string p2, "docManagerBundle"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$showExportDialog$1$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$showExportDialog$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->setListener(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a1()V
    .locals 6

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    new-instance v4, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initInputLayout$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initInputLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5, v4}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initLayout(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Z0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initInputLayout$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initInputLayout$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initAiSearch(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a2()V
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/PageCollectAddFrom;->FULL_SIDE_DOC_OVERVIEW:Lcom/onyx/android/sdk/data/PageCollectAddFrom;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/PageCollectAddFrom;->SIDE_DOC_OVERVIEW:Lcom/onyx/android/sdk/data/PageCollectAddFrom;

    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsPageCollectAddEvent;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/event/StatisticsPageCollectAddEvent;-><init>(Lcom/onyx/android/sdk/data/PageCollectAddFrom;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final b1()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    new-instance v4, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V

    iput-object v4, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/f8f;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/f8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-string v2, "adapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    sget v4, Lcom/onyx/galaxy/note/R$id;->bookmark:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/q8f;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/q8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    sget v4, Lcom/onyx/galaxy/note/R$id;->more_settings:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/s8f;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/s8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->h1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->J0(Z)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->V1(Z)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->setEnableSwipeDetector(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$6;

    invoke-direct {v3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$6;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$7;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$7;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->setSelectItemChangeCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final b2(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3, p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->toggleBookmark(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;I)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const-string v1, "editorBundle"

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateBookmarkEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateBookmarkEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz p1, :cond_5

    const-string p1, "click_galaxy_bookmark_add_0002"

    goto :goto_2

    :cond_5
    const-string p1, "click_galaxy_bookmark_add_0001"

    :goto_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->a2()V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v2, p0

    :goto_3
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/DeleteBookmarkEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DeleteBookmarkEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-static {v2, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public final c2()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->currentHighlightIndex:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getIndicatorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->n1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getSelectedRegion()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->updatePageSearchHighlightRender(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final d2()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->delete:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->copy:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->clone:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->paste:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    if-eqz v4, :cond_3

    sget-object v6, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v7, :cond_2

    const-string v7, "editorBundle"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v7

    :goto_1
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->isCanPastePage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->export:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->rotate:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->addToCustomPaper:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->addPageAfterCurrentPage:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    if-ne v0, v3, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->addToToc:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    if-ne v0, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final e2(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->gotoPrevHighlight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "gotoPrevHighlight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/w8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->gotoNextHighlight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "gotoNextHighlight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/x8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-static {v0, v2, v3, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getSelectedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i1()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->addPageAfterCurrentPage:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/i8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->addToToc:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/j8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->copy:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/k8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->clone:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/l8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->paste:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/m8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->export:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/n8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->delete:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/o8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->rotate:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    const-string v0, "rotate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/p8f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/p8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->addToCustomPaper:Lcom/onyx/galaxy/note/editor/view/HideTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/r8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onActivationStateChangedEvent(Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v0, "layoutSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->updateAiSearchState(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)V

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

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->V1(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->resetCurrentPageIndex()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onConfigurationChangedEvent$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onConfigurationChangedEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->W1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->p1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_2

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->clearNoteSearchBeanList()V

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->unregister(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

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

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->K1(Z)V

    const-string p1, "click_galaxy_docsOverview_0009"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    const-string p1, "view_galaxy_docsOverview_0006"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final onKeyboardClose(Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->inputEditTextView:Lcom/onyx/android/sdk/theme/widgets/TouchModeTintTextInputEditTextView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public final onOverviewSearchEvent(Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t8f;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/t8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPageThumbnailSizeChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;->getThumbnailSizeType()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    :goto_0
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->X1()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onPause()V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

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

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->K1(Z)V

    const-string p1, "click_galaxy_docsOverview_0011"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->z1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->P1()V

    :cond_0
    return-void
.end method

.method public final onRotatePageProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;->getVirtualPages()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onRotatePageProgressEvent$pageMap$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onRotatePageProgressEvent$pageMap$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;->getRotatePageArgs()Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;->getPageIndexList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v3, 0x0

    const-string v4, "adapter"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->toVirtualPageModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v6, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    invoke-virtual {v6, v2, v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->updateByVirtualPage(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v5, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3
    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->scalePageDisplayRectF(Ljava/util/List;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v2, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_5
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

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;->getSelect()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->selectAll(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d2()V

    const-string p1, "click_galaxy_docsOverview_0010"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSelectPastedPageEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/SelectPastedPageEvent;->getPastedPageIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->selectStateByPageIds(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->d2()V

    return-void
.end method

.method public final onSidebarVisibleLevelChangedEvent(Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setCurrentVisibleLevel(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e2(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setSpanCount(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onSidebarVisibleLevelChangedEvent$1$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onSidebarVisibleLevelChangedEvent$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->requireRecyclerViewSafety(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onStartActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->submitInObservable$default(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onTocEntryInsertedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    :cond_0
    return-void
.end method

.method public final onUpdateSearchProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;->getTotalProgress()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;->getDeltaProgress()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->updateSearchProgress(FF)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getFormattedSearchProgress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->w1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->C1()V

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getItemTouchActionState()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;II)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final s1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->b1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->selectionActionLayout:Lcom/onyx/galaxy/note/editor/view/SelectionActionLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/g8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g8f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->Y0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->a1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1()V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->k1:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCurrentVisibleLevel(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->l1:I

    return-void
.end method

.method public final setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docManagerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    return-void
.end method

.method public final setShowActionMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->j1:Z

    return-void
.end method

.method public final setThumbnailSizeType(Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->i1:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    :goto_0
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->q1:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    return-void
.end method

.method public final u1()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_2

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageAfterSpecifiedPageEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageAfterSpecifiedPageEvent;-><init>(I)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->M0()V

    const-string v0, "click_galaxy_page_add_0006"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public final v1()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->m1:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getCurrentPageIndex()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final w1()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->k1:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x1()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->T0()Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->inputEditTextView:Lcom/onyx/android/sdk/theme/widgets/TouchModeTintTextInputEditTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final y1()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/bookmark/LoadBookmarkListAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/bookmark/LoadBookmarkListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$g;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z1()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->B1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->y1()V

    return-void
.end method
