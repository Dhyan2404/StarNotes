.class public final Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEyesComfortManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EyesComfortManager.kt\ncom/onyx/galaxy/note/settings/utils/EyesComfortManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,195:1\n2634#2:196\n1#3:197\n1#3:198\n41#4,5:199\n41#4,5:204\n*S KotlinDebug\n*F\n+ 1 EyesComfortManager.kt\ncom/onyx/galaxy/note/settings/utils/EyesComfortManager\n*L\n66#1:196\n66#1:197\n88#1:199,5\n116#1:204,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0008*\u00014\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0013H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R%\u0010+\u001a\u0010\u0012\u000c\u0012\n \'*\u0004\u0018\u00010\u00130\u00130&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010(\u001a\u0004\u0008)\u0010*R\u0016\u0010-\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010,R\u0016\u0010.\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010,R!\u00103\u001a\u0008\u0012\u0004\u0012\u0002000/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u00101\u001a\u0004\u0008#\u00102R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u00105R\u0016\u00108\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00107\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;",
        "",
        "",
        "init",
        "onResume",
        "onPause",
        "",
        "intensity",
        "setIntensity",
        "toggle",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "getCurrentSetting",
        "comforterConfig",
        "switchSetting",
        "Landroid/content/Context;",
        "context",
        "f",
        "d",
        "e",
        "",
        "g",
        "h",
        "b",
        "i",
        "a",
        "newState",
        "j",
        "k",
        "Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;",
        "Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;",
        "overlayView",
        "Landroid/view/WindowManager;",
        "Landroid/view/WindowManager;",
        "windowManager",
        "Landroid/view/WindowManager$LayoutParams;",
        "c",
        "Landroid/view/WindowManager$LayoutParams;",
        "params",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "Landroidx/lifecycle/MutableLiveData;",
        "getOpened",
        "()Landroidx/lifecycle/MutableLiveData;",
        "opened",
        "Z",
        "isActive",
        "initializeView",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "option",
        "com/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;",
        "appLifecycleObserver",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "currentComforterSetting",
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
        "SMAP\nEyesComfortManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EyesComfortManager.kt\ncom/onyx/galaxy/note/settings/utils/EyesComfortManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,195:1\n2634#2:196\n1#3:197\n1#3:198\n41#4,5:199\n41#4,5:204\n*S KotlinDebug\n*F\n+ 1 EyesComfortManager.kt\ncom/onyx/galaxy/note/settings/utils/EyesComfortManager\n*L\n66#1:196\n66#1:197\n88#1:199,5\n116#1:204,5\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static b:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static c:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Z

.field public static f:Z

.field public static final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->d:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->e:Z

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$option$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$option$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->h:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getDefaultSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentComforterSetting$p()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$close$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$close$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final d()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getSettings()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->c(Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->setIntensity(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->d()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->switchSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->h()V

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 1

    sget-object p0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->h:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    const-string p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b:Landroid/view/WindowManager;

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7f6

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x318

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x3

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    sput-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c:Landroid/view/WindowManager$LayoutParams;

    new-instance p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    return-void
.end method

.method public final g()Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getCurrentSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-object p0
.end method

.method public final getOpened()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final h()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b()V

    return-void

    :cond_3
    sget-boolean v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->f:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->e()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->k()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    sget-object v3, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sput-boolean v1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->f:Z

    :cond_5
    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$open$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$open$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final i()V
    .locals 3

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b:Landroid/view/WindowManager;

    if-eqz p0, :cond_2

    sget-object v2, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    invoke-interface {p0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    sget-object p0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    sget-object v2, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->h:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c:Landroid/view/WindowManager$LayoutParams;

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b:Landroid/view/WindowManager;

    sput-boolean v1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->f:Z

    return-void
.end method

.method public final init()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->d()V

    return-void
.end method

.method public final j(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->e:Z

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getComforterColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;->updatePaintColor(I)V

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    sget-object v1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getColorMatrix(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;->updateColorMatrix(Landroid/graphics/ColorMatrix;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->j(Z)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->j(Z)V

    return-void
.end method

.method public final setIntensity(F)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->setIntensity(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$setIntensity$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$setIntensity$1;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->k()V

    :cond_0
    return-void
.end method

.method public final switchSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "comforterConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->i:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->setIntensity(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$switchSetting$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$switchSetting$1;-><init>(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->h()V

    :goto_0
    return-void
.end method
