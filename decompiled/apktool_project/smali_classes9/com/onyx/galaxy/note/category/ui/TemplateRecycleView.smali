.class public final Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateRecycleView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateRecycleView.kt\ncom/onyx/galaxy/note/category/ui/TemplateRecycleView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n350#2,7:219\n350#2,7:226\n*S KotlinDebug\n*F\n+ 1 TemplateRecycleView.kt\ncom/onyx/galaxy/note/category/ui/TemplateRecycleView\n*L\n96#1:219,7\n105#1:226,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 D2\u00020\u0001:\u0001DB\u0011\u0008\u0016\u0012\u0006\u0010<\u001a\u00020;\u00a2\u0006\u0004\u0008=\u0010>B\u001b\u0008\u0016\u0012\u0006\u0010<\u001a\u00020;\u0012\u0008\u0010@\u001a\u0004\u0018\u00010?\u00a2\u0006\u0004\u0008=\u0010AB#\u0008\u0016\u0012\u0006\u0010<\u001a\u00020;\u0012\u0008\u0010@\u001a\u0004\u0018\u00010?\u0012\u0006\u0010B\u001a\u00020\u000f\u00a2\u0006\u0004\u0008=\u0010CJ\u0016\u0010\u0005\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0003J\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\u0008\u001a\u00020\u0003J\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0003J\u0006\u0010\u000c\u001a\u00020\u0003J \u0010\u0013\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J \u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J\u0008\u0010\u0017\u001a\u00020\u0003H\u0014J\u0008\u0010\u0018\u001a\u00020\u0003H\u0002J\u0008\u0010\u0019\u001a\u00020\u0003H\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002R\u001e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R.\u0010/\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010\'8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00102\u001a\u0004\u00088\u00109\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lkotlin/Function0;",
        "",
        "callback",
        "setCategoryTitleChange",
        "update",
        "notifyPaperSelect",
        "notifyPaperChangeSelectColors",
        "notifyCoverChangeSelectColors",
        "notifyCoverSelect",
        "notifyPaperChange",
        "notifyCoverChange",
        "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
        "coverCategory",
        "",
        "orientation",
        "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
        "templateSourceType",
        "loadCoverList",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "templateCategory",
        "loadPaperList",
        "onDetachedFromWindow",
        "b1",
        "e1",
        "f1",
        "W1",
        "Lkotlin/jvm/functions/Function0;",
        "categoryTitleChangeCallback",
        "X1",
        "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
        "Y1",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "paperCategory",
        "Z1",
        "I",
        "a2",
        "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "value",
        "b2",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "getTemplateViewModel",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "setTemplateViewModel",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
        "templateViewModel",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;",
        "c2",
        "Lkotlin/Lazy;",
        "getCoverTemplateAdapter",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;",
        "coverTemplateAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;",
        "d2",
        "getPaperTemplateAdapter",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;",
        "paperTemplateAdapter",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nTemplateRecycleView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateRecycleView.kt\ncom/onyx/galaxy/note/category/ui/TemplateRecycleView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n350#2,7:219\n350#2,7:226\n*S KotlinDebug\n*F\n+ 1 TemplateRecycleView.kt\ncom/onyx/galaxy/note/category/ui/TemplateRecycleView\n*L\n96#1:219,7\n105#1:226,7\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAYLOAD_KEY_CHANGE_SELECT_COLORS:Ljava/lang/String; = "change_select_colors"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAYLOAD_KEY_SELECT:Ljava/lang/String; = "select"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public W1:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public X1:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Y1:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Z1:I

.field public a2:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c2:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d2:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Companion:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Z1:I

    .line 5
    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->a2:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$coverTemplateAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$coverTemplateAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->c2:Lkotlin/Lazy;

    .line 7
    new-instance p1, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$paperTemplateAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$paperTemplateAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->d2:Lkotlin/Lazy;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->e1()V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b1()V

    return-void
.end method

.method public static synthetic Z0(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->d1(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a1(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->c1(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$getCoverTemplateAdapter(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaperTemplateAdapter(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final c1(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->W1:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->f1()V

    return-void
.end method

.method public static final d1(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->W1:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->f1()V

    return-void
.end method

.method private final getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->c2:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    return-object p0
.end method

.method private final getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->d2:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    return-object p0
.end method


# virtual methods
.method public final b1()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/wan;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wan;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/xan;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xan;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public final e1()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public final f1()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    :cond_3
    if-eqz v0, :cond_4

    new-instance v2, Lcom/onyx/android/sdk/event/StatisticsQuickNoteTemplateViewEvent;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModelStatisticName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/SourceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->getSourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/event/StatisticsQuickNoteTemplateViewEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_4
    if-eqz v1, :cond_5

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsQuickNoteTemplateViewEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModelStatisticName()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/SourceType;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->getSourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/event/StatisticsQuickNoteTemplateViewEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-object p0
.end method

.method public final loadCoverList(Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/TemplateSourceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "templateSourceType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->X1:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Z1:I

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;->notifySelectChange()V

    return-void

    :cond_2
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->a2:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    iput p2, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Z1:I

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->X1:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    iput-object v1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Y1:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_3

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;

    filled-new-array {p1}, [Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;-><init>(Ljava/util/List;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$a;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$a;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    return-void
.end method

.method public final loadPaperList(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/TemplateSourceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "templateSourceType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Y1:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Z1:I

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->notifySelectChange()V

    return-void

    :cond_2
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->a2:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    iput p2, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Z1:I

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->Y1:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    iput-object v1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->X1:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;->setOrientation(Ljava/lang/Integer;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->BOUNDLESS:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSizeFormatName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;->setSizeFormat(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->BOUNDLESS:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSizeFormatName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;->setExcludeSizeFormat(Ljava/util/List;)V

    :goto_2
    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-ne p3, p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, p2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;->setOrientation(Ljava/lang/Integer;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/template/LoadOfficialTemplateListAction;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/action/template/LoadOfficialTemplateListAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_6
    return-void
.end method

.method public final notifyCoverChange()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;->notifySelectChange()V

    return-void
.end method

.method public final notifyCoverChangeSelectColors()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object p0

    const-string v0, "change_select_colors"

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final notifyCoverSelect()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    const-string v1, "select"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyPaperChange()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->notifySelectChange()V

    return-void
.end method

.method public final notifyPaperChangeSelectColors()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    const-string v0, "change_select_colors"

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final notifyPaperSelect()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    const-string v1, "select"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->W1:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCategoryTitleChange(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->W1:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->W1:Lkotlin/jvm/functions/Function0;

    :cond_0
    return-void
.end method

.method public final setTemplateViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->b2:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getCoverTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;->setTemplateViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->getPaperTemplateAdapter()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->setTemplateViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    return-void
.end method

.method public final update()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->notifyPaperChange()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->notifyCoverChange()V

    return-void
.end method
