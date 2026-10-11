.class public final Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorBundleManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundleManager.kt\ncom/onyx/android/sdk/universal/editor/view/EditorBundleManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1549#2:299\n1620#2,3:300\n2634#2:303\n1549#2:305\n1620#2,3:306\n1855#2,2:309\n1855#2,2:311\n1855#2,2:313\n1855#2,2:315\n1855#2,2:317\n288#2,2:319\n288#2,2:321\n766#2:323\n857#2,2:324\n1855#2,2:326\n766#2:328\n857#2,2:329\n1855#2,2:331\n766#2:333\n857#2,2:334\n766#2:336\n857#2,2:337\n1#3:304\n*S KotlinDebug\n*F\n+ 1 EditorBundleManager.kt\ncom/onyx/android/sdk/universal/editor/view/EditorBundleManager\n*L\n96#1:299\n96#1:300,3\n97#1:303\n99#1:305\n99#1:306,3\n100#1:309,2\n106#1:311,2\n163#1:313,2\n169#1:315,2\n175#1:317,2\n183#1:319,2\n207#1:321,2\n236#1:323\n236#1:324,2\n237#1:326,2\n242#1:328\n242#1:329,2\n243#1:331,2\n255#1:333\n255#1:334,2\n260#1:336\n260#1:337,2\n97#1:304\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u0000 i2\u00020\u0001:\u0001iB\u001f\u0012\u0006\u0010J\u001a\u00020F\u0012\u0006\u0010P\u001a\u00020K\u0012\u0006\u0010U\u001a\u00020\u0001\u00a2\u0006\u0004\u0008g\u0010hJ\u001a\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u001a\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0008J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0008J\u0015\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nJ\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\nJ\u000e\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001d\u001a\u00020\u0008J\u0006\u0010\u001e\u001a\u00020\u0008J\u0006\u0010 \u001a\u00020\u001fJ\u0006\u0010!\u001a\u00020\u001fJ\u000e\u0010#\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010$\u001a\u00020\u0005J\u0006\u0010%\u001a\u00020\u0005J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0018\u0010(\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\'\u001a\u00020\"J\u000e\u0010)\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010.\u001a\u00020-2\u0006\u0010*\u001a\u00020\u00142\u0008\u0008\u0002\u0010,\u001a\u00020+J\u0006\u0010/\u001a\u00020\"J\u000e\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\"J\u000e\u00103\u001a\u00020\u00052\u0006\u00102\u001a\u00020\"J\u0006\u00104\u001a\u00020\u0005J\u000e\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u001fJ\u0018\u00107\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u00108\u001a\u00020\"J\u0006\u00109\u001a\u00020\u0005J\u000e\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:J\u0016\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u00082\u0006\u0010;\u001a\u00020:J7\u0010D\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u00082\'\u0010C\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(B\u0012\u0004\u0012\u00020\u00050?J\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\nR\u0017\u0010J\u001a\u00020F8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010G\u001a\u0004\u0008H\u0010IR\u0017\u0010P\u001a\u00020K8\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\u0017\u0010U\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR\"\u0010\\\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R#\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00140]8\u0006\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR!\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00080c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010e\u001a\u0004\u0008L\u0010\u0011\u00a8\u0006j"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "closedTab",
        "prepareOpenTab",
        "",
        "b",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "excludeEditorBundle",
        "",
        "e",
        "d",
        "editorBundle",
        "registerEditorBundle",
        "unregisterEditorBundle",
        "getImmutableEditorBundleList",
        "()Ljava/util/List;",
        "getEditorBundleList",
        "getPrimaryEditorBundleList",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
        "focusEditorViewHandler",
        "unfocusedEditorViewHandler",
        "getFirstEditorViewHandler",
        "getSecondEditorViewHandler",
        "getEditorViewHandlers",
        "",
        "id",
        "getEditorViewHandler",
        "focusEditorBundle",
        "unfocusedEditorBundle",
        "Landroid/view/View;",
        "focusEditorView",
        "unfocusedEditorView",
        "",
        "isFocusEditorBundle",
        "destroy",
        "saveDocument",
        "onDown",
        "activate",
        "updateFocusId",
        "getAnotherEditorViewHandler",
        "anotherEditorViewHandler",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;",
        "position",
        "Landroid/graphics/RectF;",
        "ensureEnableSpiltScreen",
        "isEnabledSplitScreen",
        "enabled",
        "setEnabledAnimationUpdateEditorView",
        "animating",
        "setAnimatingStartSplitScreen",
        "resizeCache",
        "goneView",
        "onExitSpitScreen",
        "onCloseTab",
        "isSameDocIdSplitScreen",
        "onCloseOtherTab",
        "",
        "event",
        "postEvent",
        "currentEditorBundle",
        "postEventToAllAssociatedBundle",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "otherEditorBundles",
        "run",
        "postToAssociatedBundle",
        "getOpenDocIds",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;",
        "getFocusChangeListener",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;",
        "focusChangeListener",
        "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;",
        "getSplitScreenListener",
        "()Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;",
        "splitScreenListener",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "getEditorViewDownListener",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "editorViewDownListener",
        "h",
        "Ljava/lang/String;",
        "getFocusId",
        "()Ljava/lang/String;",
        "setFocusId",
        "(Ljava/lang/String;)V",
        "focusId",
        "",
        "i",
        "Ljava/util/Map;",
        "getEditorViewHandlerMap",
        "()Ljava/util/Map;",
        "editorViewHandlerMap",
        "",
        "j",
        "Lkotlin/Lazy;",
        "editorBundleList",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V",
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
        "SMAP\nEditorBundleManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundleManager.kt\ncom/onyx/android/sdk/universal/editor/view/EditorBundleManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1549#2:299\n1620#2,3:300\n2634#2:303\n1549#2:305\n1620#2,3:306\n1855#2,2:309\n1855#2,2:311\n1855#2,2:313\n1855#2,2:315\n1855#2,2:317\n288#2,2:319\n288#2,2:321\n766#2:323\n857#2,2:324\n1855#2,2:326\n766#2:328\n857#2,2:329\n1855#2,2:331\n766#2:333\n857#2,2:334\n766#2:336\n857#2,2:337\n1#3:304\n*S KotlinDebug\n*F\n+ 1 EditorBundleManager.kt\ncom/onyx/android/sdk/universal/editor/view/EditorBundleManager\n*L\n96#1:299\n96#1:300,3\n97#1:303\n99#1:305\n99#1:306,3\n100#1:309,2\n106#1:311,2\n163#1:313,2\n169#1:315,2\n175#1:317,2\n183#1:319,2\n207#1:321,2\n236#1:323\n236#1:324,2\n237#1:326,2\n242#1:328\n242#1:329,2\n243#1:331,2\n255#1:333\n255#1:334,2\n260#1:336\n260#1:337,2\n97#1:304\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID1:Ljava/lang/String; = "id1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID2:Ljava/lang/String; = "id2"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->Companion:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "focusChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitScreenListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorViewDownListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;

    const-string p1, "id1"

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$editorBundleList$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$editorBundleList$2;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ensureEnableSpiltScreen$default(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;ILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;->AUTO:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->ensureEnableSpiltScreen(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    return-object p0
.end method

.method public static synthetic updateFocusId$default(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->updateFocusId(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 8

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isSameDocIdSplitScreen()Z

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;->exitSplitScreen(Landroid/view/View;)V

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f()Ljava/util/List;

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

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eq p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final destroy()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->destroy()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getImmutableEditorBundleList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->d(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

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

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ensureEnableSpiltScreen(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "anotherEditorViewHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;->getSplitScreenSize(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->setEnabledPageColumn(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->resizeCache()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setAnimatingStartSplitScreen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeStartSplitScreenEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeStartSplitScreenEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;->splitScreen(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;->getSplitScreenSize(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final focusEditorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final focusEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public final getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getSecondEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFirstEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getEditorViewDownListener()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;

    return-object p0
.end method

.method public final getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager$getEditorViewHandler$1;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V

    new-instance p0, Lcom/sunia/HTREnginev2/gmf;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/gmf;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    return-object p0
.end method

.method public final getEditorViewHandlerMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final getEditorViewHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFirstEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getSecondEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id1"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public final getFocusChangeListener()Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;

    return-object p0
.end method

.method public final getFocusId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getImmutableEditorBundleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getImmutableEditorBundleList"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getOpenDocIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unfocusedEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getPrimaryEditorBundleList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFirstEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getSecondEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getSecondEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id2"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public final getSplitScreenListener()Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    return-object p0
.end method

.method public final isEnabledSplitScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;->isEnabledSplitScreen()Z

    move-result p0

    return p0
.end method

.method public final isFocusEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSameDocIdSplitScreen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFirstEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getSecondEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onCloseOtherTab()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isSameDocIdSplitScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f:Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;->exitSplitScreen(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prepareOpenTab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->c(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->b(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :goto_0
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->updateFocusId$default(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;->onDown(Ljava/lang/String;)V

    return-void
.end method

.method public final onExitSpitScreen(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "goneView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->setEnabledPageColumn(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->resizeCache()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->closeDocumentAfterExitSplitScreen()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->updateFocusId(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeExitSplitScreenEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeExitSplitScreenEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getImmutableEditorBundleList()Ljava/util/List;

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

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unfocusedEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final postEventToAllAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentEditorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f()Ljava/util/List;

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

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currentEditorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "run"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIfNotContains(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final resizeCache()V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->resizeCache$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/base/data/Size;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveDocument()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->saveDocument(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setAnimatingStartSplitScreen(Z)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setAnimatingStartSplitScreen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setEnabledAnimationUpdateEditorView(Z)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setEnabledAnimationUpdateEditorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setFocusId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    return-void
.end method

.method public final unfocusedEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unfocusedEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final unfocusedEditorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unfocusedEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final unfocusedEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    const-string v1, "id1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "id2"

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateFocusId(Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->h:Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus bundle changed, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;->onEditorFocusChanged(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    return-void
.end method
