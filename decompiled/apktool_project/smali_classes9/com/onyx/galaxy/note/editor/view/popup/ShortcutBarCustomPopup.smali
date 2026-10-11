.class public final Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortcutBarCustomPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n1549#2:298\n1620#2,3:299\n1549#2:302\n1620#2,3:303\n766#2:306\n857#2,2:307\n1603#2,9:309\n1855#2:318\n1856#2:320\n1612#2:321\n766#2:322\n857#2,2:323\n1603#2,9:325\n1855#2:334\n1856#2:336\n1612#2:337\n1549#2:338\n1620#2,3:339\n1#3:319\n1#3:335\n*S KotlinDebug\n*F\n+ 1 ShortcutBarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup\n*L\n141#1:298\n141#1:299,3\n155#1:302\n155#1:303,3\n257#1:306\n257#1:307,2\n258#1:309,9\n258#1:318\n258#1:320\n258#1:321\n260#1:322\n260#1:323,2\n261#1:325,9\n261#1:334\n261#1:336\n261#1:337\n277#1:338\n277#1:339,3\n258#1:319\n261#1:335\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u00081\u00102J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0003J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0003J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010%R\u0014\u0010)\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010(R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010+R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010+R\u0014\u0010.\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010+\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "onDismiss",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "event",
        "onConfigurationChangedEvent",
        "O",
        "u",
        "x",
        "E",
        "w",
        "I",
        "P",
        "v",
        "D",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "shortcutType",
        "K",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "customShortcutBarBean",
        "F",
        "N",
        "J",
        "M",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;",
        "r",
        "Lkotlin/Lazy;",
        "t",
        "()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "customShortcutBarAdapter",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;",
        "candidateAdapter",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;",
        "shortcutBarData",
        "oldShortcutBarData",
        "defaultShortcutData",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nShortcutBarCustomPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n1549#2:298\n1620#2,3:299\n1549#2:302\n1620#2,3:303\n766#2:306\n857#2,2:307\n1603#2,9:309\n1855#2:318\n1856#2:320\n1612#2:321\n766#2:322\n857#2,2:323\n1603#2,9:325\n1855#2:334\n1856#2:336\n1612#2:337\n1549#2:338\n1620#2,3:339\n1#3:319\n1#3:335\n*S KotlinDebug\n*F\n+ 1 ShortcutBarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup\n*L\n141#1:298\n141#1:299,3\n155#1:302\n155#1:303,3\n257#1:306\n257#1:307,2\n258#1:309,9\n258#1:318\n258#1:320\n258#1:321\n260#1:322\n260#1:323,2\n261#1:325,9\n261#1:334\n261#1:336\n261#1:337\n277#1:338\n277#1:339,3\n258#1:319\n261#1:335\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$binding$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->r:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    sget-object p2, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;->copy(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->v:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;->createDefaultShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->w:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/PopupShowStateEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/onyx/android/sdk/universal/common/events/PopupShowStateEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setMask(ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u()V

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->M()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->K(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->F(Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;)V

    return-void
.end method

.method public static final G(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final H(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final L(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onCancel(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->I()V

    return-void
.end method

.method public static final synthetic access$onCandidateShortcutSwapped(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->J()V

    return-void
.end method

.method public static final synthetic access$onShortcutSwapped(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->N()V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->A(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->H(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->G(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->C(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->z(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->B(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->y(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->L(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->I()V

    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;-><init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final E()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->O()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->candidateList:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final F(Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getItemType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$onAddCandidate$1;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$onAddCandidate$1;-><init>(I)V

    new-instance v3, Lcom/sunia/HTREnginev2/wom;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/wom;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$onAddCandidate$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$onAddCandidate$2;-><init>(I)V

    new-instance v3, Lcom/sunia/HTREnginev2/xom;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/xom;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->P()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final I()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->v:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->saveShortcutBarData(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final J()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

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

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->P()V

    return-void
.end method

.method public final K(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isExceedShortcutLimitCount()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->shortcut_bar_exceed_shortcut_limit_count:I

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$onRemoveCandidate$1;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$onRemoveCandidate$1;-><init>(I)V

    new-instance v4, Lcom/sunia/HTREnginev2/qom;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/qom;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->P()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final M()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;->createDefaultShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->P()V

    return-void
.end method

.method public final N()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->Companion:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_RIGHT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_LEFT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_d

    if-gez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-static {v2, v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getItemType()I

    move-result v7

    if-ne v7, v6, :cond_2

    move v5, v3

    :cond_2
    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_5
    if-eqz v7, :cond_4

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {v8}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getItemType()I

    move-result v8

    if-ne v8, v6, :cond_8

    move v8, v3

    goto :goto_3

    :cond_8
    move v8, v5

    :goto_3
    if-eqz v8, :cond_7

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object v3, v7

    :goto_5
    if-eqz v3, :cond_a

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->P()V

    :cond_d
    :goto_6
    return-void
.end method

.method public final O()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$fraction;->toolbar_custom_popup_width_percent:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_528:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->llLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "llLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->llLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v2

    sget v3, Lcom/onyx/galaxy/note/R$fraction;->toolbar_custom_popup_height_percent:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v0

    sget v2, Lcom/onyx/galaxy/note/R$fraction;->toolbar_custom_popup_list_height_percent:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    return-void
.end method

.method public final P()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->saveShortcutBarData(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->O()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onDismiss()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->w:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->half_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->max_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    return-object p0
.end method

.method public final u()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->E()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->x()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s()V

    return-void
.end method

.method public final v()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initCandidateDrag$manageCandidateShortcutHandlerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initCandidateDrag$manageCandidateShortcutHandlerImpl$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;-><init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->candidateList:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final w()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->Companion:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_LEFT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/onyx/galaxy/note/R$string;->custom_shortcut_bar_right_side_title:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget v3, Lcom/onyx/galaxy/note/R$string;->custom_shortcut_bar_left_side_title:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->setTitleRes(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_LEFT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideShortcutTypes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    new-instance v4, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->Companion:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_RIGHT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/onyx/galaxy/note/R$string;->custom_shortcut_bar_left_side_title:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    sget v4, Lcom/onyx/galaxy/note/R$string;->custom_shortcut_bar_right_side_title:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->setTitleRes(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_RIGHT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideShortcutTypes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    new-instance v3, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateShortcutTypes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final x()V
    .locals 14

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/rom;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rom;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->tvApply:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "tvApply"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/som;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/som;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvResetConfig"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/tom;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/tom;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->v()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->D()V

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;

    sget v8, Lcom/onyx/galaxy/note/R$id;->ic_eye:I

    const-wide/16 v9, 0x0

    new-instance v11, Lcom/sunia/HTREnginev2/uom;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/uom;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    sget v1, Lcom/onyx/galaxy/note/R$id;->ic_eye:I

    new-instance v4, Lcom/sunia/HTREnginev2/vom;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/vom;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    const/4 v5, 0x2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method
