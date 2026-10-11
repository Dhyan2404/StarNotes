.class public final Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTopContainerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTopContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTopContainerFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,925:1\n326#2,4:926\n326#2,4:930\n326#2,4:934\n326#2,4:939\n326#2,4:945\n157#2,8:950\n326#2,4:959\n326#2,4:963\n256#2,2:968\n256#2,2:970\n256#2,2:980\n326#2,4:990\n256#2,2:994\n256#2,2:996\n256#2,2:998\n256#2,2:1000\n1855#3:938\n1856#3:943\n1855#3:944\n1856#3:949\n1855#3:958\n1856#3:967\n288#3,2:972\n766#3:974\n857#3,2:975\n1747#3,3:977\n1549#3:982\n1620#3,3:983\n1549#3:986\n1620#3,3:987\n*S KotlinDebug\n*F\n+ 1 NoteTopContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTopContainerFragment\n*L\n173#1:926,4\n181#1:930,4\n259#1:934,4\n270#1:939,4\n289#1:945,4\n299#1:950,8\n314#1:959,4\n317#1:963,4\n397#1:968,2\n400#1:970,2\n599#1:980,2\n757#1:990,4\n763#1:994,2\n764#1:996,2\n768#1:998,2\n769#1:1000,2\n269#1:938\n269#1:943\n288#1:944\n288#1:949\n312#1:958\n312#1:967\n522#1:972,2\n525#1:974\n525#1:975,2\n526#1:977,3\n658#1:982\n658#1:983,3\n687#1:986\n687#1:987,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001o\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008w\u0010xJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u001e\u0010\n\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001e\u0010\u000c\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u000b\u001a\u00020\u0008H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0003J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0002J\u0010\u0010\'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u001a\u0010,\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u00182\u0008\u0008\u0002\u0010+\u001a\u00020\u0018H\u0002J\u0008\u0010-\u001a\u00020\u0002H\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0002J\u0008\u0010/\u001a\u00020\u0002H\u0002J\u0008\u00100\u001a\u00020\u0002H\u0002J\u0008\u00101\u001a\u00020\u0002H\u0002J\u0008\u00102\u001a\u00020\u0002H\u0002J\u0008\u00103\u001a\u00020\u0002H\u0002J\u0008\u00104\u001a\u00020\u0002H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0002J\u0008\u00108\u001a\u00020\u0002H\u0002J\u0008\u00109\u001a\u00020\u0002H\u0002J\u0010\u0010:\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0002J\u0008\u0010;\u001a\u00020\u0002H\u0002J\u0008\u0010<\u001a\u00020\u0002H\u0002J\u0008\u0010=\u001a\u00020\u0002H\u0002J\u0008\u0010>\u001a\u00020\u0002H\u0002J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0018H\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0002J\u0008\u0010B\u001a\u00020\u0002H\u0002J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0006H\u0002J\u0008\u0010E\u001a\u00020\u0002H\u0002J\u0008\u0010F\u001a\u00020\u0002H\u0002J\u0008\u0010G\u001a\u00020\u0002H\u0002J\u0008\u0010H\u001a\u00020\u0002H\u0002J\u0008\u0010I\u001a\u00020\u0002H\u0002J\u0008\u0010J\u001a\u00020\u0002H\u0002J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010L\u001a\u00020KH\u0002J\u0014\u0010P\u001a\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020O0NH\u0002J\u0012\u0010S\u001a\u00020\u00022\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016J$\u0010W\u001a\u00020\u00062\u0006\u0010U\u001a\u00020T2\u0008\u0010V\u001a\u0004\u0018\u00010\u00122\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016J\u001a\u0010X\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00062\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010Z\u001a\u00020YH\u0016J\u0010\u0010]\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020bH\u0007R\u001b\u0010i\u001a\u00020d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010hR\u001b\u0010n\u001a\u00020j8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008k\u0010f\u001a\u0004\u0008l\u0010mR\u0014\u0010r\u001a\u00020o8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0018\u0010v\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010u\u00a8\u0006y"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "m1",
        "Y1",
        "",
        "Landroid/view/View;",
        "viewList",
        "",
        "margin",
        "P1",
        "viewSize",
        "Q1",
        "W1",
        "X1",
        "N1",
        "T1",
        "R1",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "paddingRes",
        "O1",
        "S1",
        "n1",
        "",
        "o1",
        "Z1",
        "a2",
        "S0",
        "Landroid/view/MotionEvent;",
        "event",
        "Landroid/widget/TextView;",
        "textView",
        "q1",
        "p1",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "selectList",
        "K1",
        "isEnable",
        "u1",
        "E0",
        "I0",
        "F0",
        "hasEncryption",
        "s1",
        "v1",
        "r1",
        "Q0",
        "M1",
        "I1",
        "E1",
        "H1",
        "C1",
        "Lcom/onyx/galaxy/note/category/data/PathEntry;",
        "selectedPath",
        "M0",
        "N0",
        "P0",
        "O0",
        "B1",
        "G1",
        "L1",
        "A1",
        "G0",
        "H0",
        "J1",
        "D1",
        "view",
        "F1",
        "R0",
        "V1",
        "U1",
        "w1",
        "z1",
        "y1",
        "",
        "eventId",
        "x1",
        "",
        "",
        "K0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "container",
        "onCreateView",
        "onViewCreated",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;",
        "onResetOptionsMenuEvent",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onAccountChanged",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "onNetworkChange",
        "Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;",
        "onTotalSyncNoteProgressEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "J0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "e1",
        "L0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "com/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1",
        "f1",
        "Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;",
        "moreOperateCallback",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;",
        "g1",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;",
        "noteListMoreOperatePopup",
        "<init>",
        "()V",
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
        "SMAP\nNoteTopContainerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTopContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTopContainerFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,925:1\n326#2,4:926\n326#2,4:930\n326#2,4:934\n326#2,4:939\n326#2,4:945\n157#2,8:950\n326#2,4:959\n326#2,4:963\n256#2,2:968\n256#2,2:970\n256#2,2:980\n326#2,4:990\n256#2,2:994\n256#2,2:996\n256#2,2:998\n256#2,2:1000\n1855#3:938\n1856#3:943\n1855#3:944\n1856#3:949\n1855#3:958\n1856#3:967\n288#3,2:972\n766#3:974\n857#3,2:975\n1747#3,3:977\n1549#3:982\n1620#3,3:983\n1549#3:986\n1620#3,3:987\n*S KotlinDebug\n*F\n+ 1 NoteTopContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTopContainerFragment\n*L\n173#1:926,4\n181#1:930,4\n259#1:934,4\n270#1:939,4\n289#1:945,4\n299#1:950,8\n314#1:959,4\n317#1:963,4\n397#1:968,2\n400#1:970,2\n599#1:980,2\n757#1:990,4\n763#1:994,2\n764#1:996,2\n768#1:998,2\n769#1:1000,2\n269#1:938\n269#1:943\n288#1:944\n288#1:949\n312#1:958\n312#1:967\n522#1:972,2\n525#1:974\n525#1:975,2\n526#1:977,3\n658#1:982\n658#1:983,3\n687#1:986\n687#1:987,3\n*E\n"
    }
.end annotation


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g1:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->f1:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;

    return-void
.end method

.method public static synthetic A0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->g1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->l1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->f1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->h1(Landroid/view/View;)V

    return-void
.end method

.method public static final T0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->q1(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->r1()V

    :cond_0
    return v1
.end method

.method public static final U0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->q1(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->r1()V

    return v1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->p1(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E1()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E1()V

    :cond_2
    return v1
.end method

.method public static final V0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSideExpand()V

    return-void
.end method

.method public static final W0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSlideAnimating()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->w1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleDisplayType()V

    return-void
.end method

.method public static final X0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->z1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->M1()V

    return-void
.end method

.method public static final Y0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->y1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleMulSelect()V

    return-void
.end method

.method public static final Z0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_data_cloudSycn_0001"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->x1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->R0()V

    return-void
.end method

.method public static final a1(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoteListMoreOperatePopup$p(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->g1:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$gotoFolder(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/galaxy/note/category/data/PathEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->M0(Lcom/onyx/galaxy/note/category/data/PathEntry;)V

    return-void
.end method

.method public static final synthetic access$gotoFolderRoot(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->N0()V

    return-void
.end method

.method public static final synthetic access$gotoTag(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/galaxy/note/category/data/PathEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->O0(Lcom/onyx/galaxy/note/category/data/PathEntry;)V

    return-void
.end method

.method public static final synthetic access$gotoTagRoot(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->P0()V

    return-void
.end method

.method public static final synthetic access$handleCloudSync(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->R0()V

    return-void
.end method

.method public static final synthetic access$loadListData(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->r1()V

    return-void
.end method

.method public static final synthetic access$showSortPopup(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->F1(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$toggleDustBinOp(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    return-void
.end method

.method public static final synthetic access$toggleOpBtn(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->K1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    return-void
.end method

.method public static final synthetic access$toggleOperateMenuVisible(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L1()V

    return-void
.end method

.method public static final synthetic access$updateSortIcon(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->U1()V

    return-void
.end method

.method public static final synthetic access$updateTitle(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->W1()V

    return-void
.end method

.method public static final synthetic access$updateTitleCenter(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->X1()V

    return-void
.end method

.method public static final b1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_content_batch_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->x1(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final c1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_content_batch_0003"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->x1(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final d1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_content_batch_0004"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->x1(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/event/MultiExportEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/event/MultiExportEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final e1(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/MultiModifyNoteLockEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/MultiModifyNoteLockEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final f1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->D1()V

    return-void
.end method

.method public static final g1(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/MultiDustBinDeleteEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/MultiDustBinDeleteEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h1(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/MultiDustBinRestoreEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/MultiDustBinRestoreEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final i1(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final k1(Landroid/view/View;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToDataRepository$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->T0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final l1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E1()V

    return-void
.end method

.method public static synthetic m0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->k1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->e1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Z0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->a1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->i1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->X0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->V0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->W0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->s1(ZZ)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->U0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Y0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->d1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->j1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->c1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->b1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->G0(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->H0(Z)V

    return-void
.end method

.method public final B1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->u1(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E0(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->I0(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->F0(Z)V

    return-void
.end method

.method public final C1()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrentFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->findFolder(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getPathNoteTreeNodes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v5, Lcom/onyx/galaxy/note/category/data/PathEntry;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v3

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/onyx/galaxy/note/category/data/PathEntry;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    new-instance v1, Lcom/onyx/galaxy/note/category/data/PathEntry;

    const-string v13, "folder_root_id"

    sget v2, Lcom/onyx/galaxy/note/R$string;->folder:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "getString(...)"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/onyx/galaxy/note/category/data/PathEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-interface {v11, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/PathOpPopup;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    const-string v3, "requireContext(...)"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v12, Lcom/onyx/galaxy/note/R$drawable;->icon_item_folder_list:I

    sget v13, Lcom/onyx/galaxy/note/R$drawable;->icon_item_folder_list_bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showFolderPathPopup$1;

    invoke-direct {v15, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showFolderPathPopup$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/onyx/galaxy/note/category/ui/PathOpPopup;-><init>(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public final D1()V
    .locals 9

    new-instance v7, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getAllowCloudSync()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->o1()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->o1()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortIconId()I

    move-result v6

    iget-object v8, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->f1:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;

    move-object v0, v7

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;-><init>(ZZZLjava/lang/String;ILcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v7}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->g1:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivMoreOperate:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public final E0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final E1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFilterFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->C1()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->H1()V

    :cond_1
    return-void
.end method

.method public final F0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final F1(Landroid/view/View;)V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_240:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_58:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/onyx/android/sdk/base/data/SortOrder;

    new-instance v6, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final G0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final G1()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->cloud_sync_login_content:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->cloud_sync_login_confirm:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSyncLoginDialog$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSyncLoginDialog$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final H0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final H1()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getTagRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->findTag(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getPathNoteTreeNodes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v5, Lcom/onyx/galaxy/note/category/data/PathEntry;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v3

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/onyx/galaxy/note/category/data/PathEntry;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    new-instance v1, Lcom/onyx/galaxy/note/category/data/PathEntry;

    const-string v13, "tag_root_id"

    sget v2, Lcom/onyx/galaxy/note/R$string;->tag:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "getString(...)"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/onyx/galaxy/note/category/data/PathEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-interface {v11, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/PathOpPopup;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    const-string v3, "requireContext(...)"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v12, Lcom/onyx/galaxy/note/R$drawable;->icon_item_tag_list:I

    sget v13, Lcom/onyx/galaxy/note/R$drawable;->icon_item_tag_list_bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;

    invoke-direct {v15, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/onyx/galaxy/note/category/ui/PathOpPopup;-><init>(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public final I0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpExport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpExport:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpExport:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final I1()V
    .locals 19

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setCheckConfig(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setShowNetworkErrorToast(Z)V

    new-instance v12, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v12, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    sget-object v13, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    invoke-direct {v1, v12, v0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    return-object p0
.end method

.method public final J1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->G0(Z)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->H0(Z)V

    return-void
.end method

.method public final K0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "trigger_from"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final K1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 8

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x9

    if-gt v4, v5, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v5, v3

    goto :goto_4

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v6

    if-eqz v6, :cond_8

    move v5, v0

    :goto_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->v1()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->size()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->u1(Z)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E0(Z)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->I0(Z)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->F0(Z)V

    const/4 p1, 0x2

    invoke-static {p0, v3, v3, p1, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->t1(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;ZZILjava/lang/Object;)V

    return-void

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->u1(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E0(Z)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->I0(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->F0(Z)V

    invoke-virtual {p0, v3, v5}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->s1(ZZ)V

    return-void

    :cond_a
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->u1(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->E0(Z)V

    invoke-virtual {p0, v4}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->I0(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->F0(Z)V

    invoke-virtual {p0, v0, v5}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->s1(ZZ)V

    return-void
.end method

.method public final L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final L1()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getAllowCloudSync()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Z1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->a2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSelector:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v6, "ivSelector"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "llDustBinOpMenu"

    const-string v5, "llOpMenu"

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M0(Lcom/onyx/galaxy/note/category/data/PathEntry;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoFolder(Ljava/lang/String;)V

    return-void
.end method

.method public final M1()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/onyx/android/sdk/base/data/SortOrder;

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$toggleSort$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$toggleSort$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSortType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public final N0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoFolderRoot()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->r1()V

    return-void
.end method

.method public final N1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "ivOpDone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_28:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_62:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->sp_12:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O0(Lcom/onyx/galaxy/note/category/data/PathEntry;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoTag(Ljava/lang/String;)V

    return-void
.end method

.method public final O1(Landroid/view/ViewGroup;I)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p0, p2, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final P0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoTagRoot()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->r1()V

    return-void
.end method

.method public final P1(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Q0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoUp()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/GotoUpEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/GotoUpEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final Q1(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R0()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->I1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->G1()V

    :goto_0
    return-void
.end method

.method public final R1()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpMove:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpLock:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpExport:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    goto :goto_1

    :cond_0
    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_6:I

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->O1(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final S0()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/h4k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/i4k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivExpand"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/j4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/j4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivDisplayType"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/k4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/k4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSortType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivSortType"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/l4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/l4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSelector:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivSelector"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/m4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/m4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->startSync:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "startSync"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/n4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/n4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llOpDelete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/o4k;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/o4k;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpMove:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llOpMove"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/p4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/p4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llOpCopy"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/q4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/q4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpExport:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llOpExport"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/r4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/r4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpLock:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llOpLock"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/s4k;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/s4k;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivMoreOperate:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivMoreOperate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/t4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/t4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llDustBinOpDelete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/u4k;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/u4k;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v0, "llDustBinOpRestore"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/v4k;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/v4k;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvToggleSelAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvToggleSelAll"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/w4k;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/w4k;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivSetting"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/x4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/x4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivLibrary:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivLibrary"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/y4k;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/y4k;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvTitleCenter"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/z4k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/z4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final S1()V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpMove:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpLock:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpExport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->sp_14:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v3, :cond_1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final T1()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llDustBinOpMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

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

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->O1(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final U1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_update_asc:I

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_update_desc:I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_create_asc:I

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_create_desc:I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_name_asc:I

    goto :goto_1

    :cond_4
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_name_desc:I

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_custom:I

    goto :goto_1

    :cond_7
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_update_desc:I

    :goto_1
    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSortType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final V1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->progressSync:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSyncFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->startSync:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSyncFinished()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->progressSync:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSyncProgress()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    return-void
.end method

.method public final W1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->sp_20:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move-object p0, v2

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_goto_up_back:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    sget v4, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {v0, p0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final X1()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_show_path:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    sget v1, Lcom/onyx/galaxy/note/R$drawable;->icon_goto_up_back:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    const/4 v6, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v6, v6, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v6, v6, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz p0, :cond_4

    sget v4, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    if-eqz v1, :cond_5

    sget v4, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_5
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget p0, Lcom/onyx/android/sdk/device/R$dimen;->sp_20:I

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, v6, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final Y1()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->guideline1:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_208:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->guideline2:Landroidx/constraintlayout/widget/Guideline;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_208:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleLeftFunctionContainer:Landroid/widget/LinearLayout;

    const-string v2, "llTitleLeftFunctionContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleLeftFunctionContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v2, :cond_1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_28:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->P1(Ljava/util/List;I)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Q1(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleRightFunctionContainer:Landroid/widget/LinearLayout;

    const-string v2, "llTitleRightFunctionContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleRightFunctionContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_28:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->P1(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivCloud:Landroid/widget/FrameLayout;

    const-string v3, "ivCloud"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Q1(Ljava/util/List;I)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Q1(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->W1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->X1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->N1()V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpMove:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpCopy:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpLock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpExport:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x6

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->S1()V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Q1(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->R1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->T1()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Z1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getAllowCloudSync()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isHalfInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivCloud:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->o1()Z

    move-result p0

    if-nez p0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v2, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final a2()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isHalfInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "ivSortType"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSortType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->o1()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSortType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final m1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->R1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->T1()V

    return-void
.end method

.method public final n1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopAndIsExpanded()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$5;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$5;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getAllowCloudSync()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$6;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$6;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isHalfInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$7;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$7;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$8;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$8;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$9;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$9;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->checkCloudSyncCondition()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$10;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$10;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final o1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAccountChanged(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->checkCloudSyncCondition()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->Y1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd4

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNetworkChange(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->checkCloudSyncCondition()V

    return-void
.end method

.method public final onResetOptionsMenuEvent(Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->A1()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->B1()V

    :goto_0
    return-void
.end method

.method public final onTotalSyncNoteProgressEvent(Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->setSyncProgress(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->V1()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->m1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->n1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->S0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->updateCurrFilterTitle()V

    return-void
.end method

.method public final p1(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z
    .locals 2

    invoke-static {p2}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final q1(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z
    .locals 2

    invoke-static {p2}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final r1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final s1(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpLock:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpLock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpLock:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "getThemeDrawable(...)"

    if-eqz p2, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->popup_note_list_unlock:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_list_unlock:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->popup_note_list_lock:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_list_lock:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpLock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpLock:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final u1(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvOpMove:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpMove:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llOpMove:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final v1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvToggleSelAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvToggleSelAll"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvToggleSelAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->option_select_all:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->J0()Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvToggleSelAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->option_deselect_all:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final w1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->K0()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "homepages_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_content_rank_0001"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final x1(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final y1()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_content_batch_0001"

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->K0()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final z1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->K0()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "toLowerCase(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->L0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "homepage_sort"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_content_sort_0001"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
