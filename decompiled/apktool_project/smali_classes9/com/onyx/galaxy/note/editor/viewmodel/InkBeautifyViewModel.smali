.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$Companion;,
        Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInkBeautifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,466:1\n800#2,11:467\n1726#2,3:489\n800#2,11:492\n800#2,11:503\n800#2,11:514\n1#3:478\n41#4,5:479\n41#4,5:484\n*S KotlinDebug\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel\n*L\n150#1:467,11\n218#1:489,3\n243#1:492,11\n248#1:503,11\n462#1:514,11\n155#1:479,5\n163#1:484,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 }2\u00020\u0001:\u0001}B\u0007\u00a2\u0006\u0004\u0008{\u0010|J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cJ\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u0016\u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010\'\u001a\u00020\u0004R\u0017\u0010-\u001a\u00020(8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001d\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000c0.8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R$\u0010:\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010A\u001a\u00020;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010H\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR$\u0010P\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR$\u0010T\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010K\u001a\u0004\u0008R\u0010M\"\u0004\u0008S\u0010OR\u001d\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010YR\"\u0010a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\"\u0010e\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010C\u001a\u0004\u0008c\u0010E\"\u0004\u0008d\u0010GR\u0016\u0010i\u001a\u00020f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010\\R\u001c\u0010r\u001a\u0008\u0012\u0004\u0012\u00020p0U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010WR\u001c\u0010t\u001a\u0008\u0012\u0004\u0012\u00020p0U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010WR\u0018\u0010v\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010lR\u001e\u0010z\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010y\u00a8\u0006~"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "model",
        "",
        "l",
        "h",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "k",
        "clear",
        "",
        "ev",
        "postEvent",
        "models",
        "selectPrimaryFont",
        "loadFromLocal",
        "fetchFromCloud",
        "getSelectedShapes",
        "selectFont",
        "",
        "path",
        "saveLastUsedFont",
        "applyInkFont",
        "updateTypesetParams",
        "cancelInkBeautify",
        "saveInkBeautify",
        "Landroid/graphics/Rect;",
        "old",
        "new",
        "",
        "haveHugeChanges",
        "download",
        "loadTrialTime",
        "displayTrialTime",
        "startTimer",
        "stopTimer",
        "restoreDefaultTypeset",
        "startFontParamsFilter",
        "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;",
        "i",
        "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;",
        "getTypesetViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;",
        "typesetViewModel",
        "Landroidx/lifecycle/MutableLiveData;",
        "j",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "event",
        "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
        "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;",
        "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;",
        "getConvertType",
        "()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;",
        "setConvertType",
        "(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;)V",
        "convertType",
        "m",
        "Z",
        "getDragged",
        "()Z",
        "setDragged",
        "(Z)V",
        "dragged",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "n",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "getLastWindowLocationOfEditPopup",
        "()Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "setLastWindowLocationOfEditPopup",
        "(Lcom/onyx/android/sdk/base/data/WindowLocation;)V",
        "lastWindowLocationOfEditPopup",
        "o",
        "getWindowLocationBeforeKeyboardOpen",
        "setWindowLocationBeforeKeyboardOpen",
        "windowLocationBeforeKeyboardOpen",
        "",
        "p",
        "Ljava/util/List;",
        "getFontList",
        "()Ljava/util/List;",
        "fontList",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "getSelectedFont",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "setSelectedFont",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V",
        "selectedFont",
        "r",
        "getFontParamInitialized",
        "setFontParamInitialized",
        "fontParamInitialized",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "s",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "activationModel",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "t",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "timerDisposable",
        "u",
        "defaultFont",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "v",
        "convertedShapes",
        "w",
        "defaultConvertedShapes",
        "x",
        "convertDisposable",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "y",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "paramsFilter",
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
        "SMAP\nInkBeautifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,466:1\n800#2,11:467\n1726#2,3:489\n800#2,11:492\n800#2,11:503\n800#2,11:514\n1#3:478\n41#4,5:479\n41#4,5:484\n*S KotlinDebug\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel\n*L\n150#1:467,11\n218#1:489,3\n243#1:492,11\n248#1:503,11\n462#1:514,11\n155#1:479,5\n163#1:484,5\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:J = 0x1f4L


# instance fields
.field public final i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Lcom/onyx/android/sdk/base/data/WindowLocation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/base/data/WindowLocation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Z

.field public s:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->Companion:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;->SELECTION_CONVERT:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->p:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    new-instance v0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->s:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createDefaultFont(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->h()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConvertedShapes$p(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$updateDefaultConvertedShapes(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updateInkFont(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->j(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(ILcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->n(ILcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->i(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->m(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 1

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x3

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setState(B)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFinishEvent;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFinishEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/InkFontFetchedEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/event/InkFontFetchedEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final n(ILcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$loadingDialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final applyInkFont(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getSelectedShapes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    instance-of v4, v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    goto :goto_0

    :cond_4
    move-object v2, v5

    :goto_0
    const/4 v4, 0x0

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v5

    :goto_1
    sget-object v6, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-static {v6, p1, v5, v3, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_3

    move v3, v4

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k(Ljava/util/List;)V

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public final cancelInkBeautify()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->y:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->x:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkBeautifyDoneEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/InkBeautifyDoneEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->stopTimer()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->clear()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->u:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->x:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->y:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    :cond_1
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->y:Lcom/onyx/android/sdk/base/rx/RxFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->r:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final displayTrialTime()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->s:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->s:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getExpireTime()J

    move-result-wide v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v3

    sub-long/2addr v0, v3

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatLeftTime$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/InkTimerUpdatedEvent;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/event/InkTimerUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final download(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setState(B)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadingEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadingEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFailEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFailEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$download$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$download$1;

    new-instance v2, Lcom/sunia/HTREnginev2/pki;

    invoke-direct {v2, p1, p0}, Lcom/sunia/HTREnginev2/pki;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnError(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final fetchFromCloud()V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$integer;->sync_timeout:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v3

    new-instance v0, Lcom/onyx/android/sdk/base/data/TimeGuard;

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/base/data/TimeGuard;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/ski;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/ski;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-static {v1, v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lcom/onyx/android/sdk/base/data/TimeGuard;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    return-object p0
.end method

.method public final getConvertType()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    return-object p0
.end method

.method public final getDragged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->m:Z

    return p0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getFontList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->p:Ljava/util/List;

    return-object p0
.end method

.method public final getFontParamInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->r:Z

    return p0
.end method

.method public final getLastWindowLocationOfEditPopup()Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->n:Lcom/onyx/android/sdk/base/data/WindowLocation;

    return-object p0
.end method

.method public final getSelectedFont()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-object p0
.end method

.method public final getSelectedShapes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    return-object p0
.end method

.method public final getWindowLocationBeforeKeyboardOpen()Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->o:Lcom/onyx/android/sdk/base/data/WindowLocation;

    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 8

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;-><init>()V

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->getDEFAULT_FONT_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getExtension(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->ensureDefaultFontPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedPreviewFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedInkTitleThumbnailFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedInkContentThumbnailFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->getDEFAULT_FONT_THUMBNAIL_TEXTBOX()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->getDEFAULT_FONT_THUMBNAIL_TITLE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->getDEFAULT_FONT_THUMBNAIL_CONTENT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setPreviewUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setInkTitleThumbnail(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setInkContentThumbnail(Ljava/lang/String;)V

    return-object p0
.end method

.method public final haveHugeChanges(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "old"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "new"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final k(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/InkBeautifyShapeInitializedEvent;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/event/InkBeautifyShapeInitializedEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    iget-object v5, v7, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/InkFontConvertingEvent;

    invoke-direct {v1, v6}, Lcom/onyx/galaxy/note/editor/event/InkFontConvertingEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v7, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    if-eqz v8, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_4
    move-object v3, v2

    if-eqz v4, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz v9, :cond_5

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    goto :goto_2

    :cond_7
    iget-object v1, v7, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    move-object/from16 v16, v1

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getActivityContext()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->setTransparentAlpha()V

    sget v8, Lcom/onyx/galaxy/note/R$string;->ink_beautifying:I

    invoke-virtual {v1, v8}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    sget-object v8, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$timerDialogKey$1;

    invoke-direct {v10, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$timerDialogKey$1;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v8, v11, v12, v9, v10}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result v15

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v8, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;

    invoke-virtual {v8, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;->getMinFontSizeLimit(Ljava/util/List;)F

    move-result v13

    const/4 v0, 0x0

    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_8
    move-object v8, v0

    :goto_3
    new-instance v9, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$notePageId$1;

    invoke-direct {v9, v7}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$notePageId$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-static {v8, v9}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/lang/String;

    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_9
    sget-object v8, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$layerId$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$layerId$1;

    invoke-static {v0, v8}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget-object v0, v7, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->x:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_a
    invoke-static/range {p0 .. p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v8, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;

    invoke-direct {v8, v5, v3}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v8, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$g;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$g;

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v11, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;

    move-object v8, v11

    move-object/from16 v9, p1

    move-object v10, v5

    move-object/from16 v18, v1

    move-object v1, v11

    move-object v11, v14

    move-object/from16 v19, v14

    move-object v14, v2

    move/from16 v20, v15

    move-object/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/String;IFLjava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v8

    new-instance v9, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;

    move-object v0, v9

    move-object/from16 v10, v18

    move-object v1, v5

    move-object v11, v2

    move-object/from16 v2, v19

    move-object v12, v3

    move-object/from16 v3, v16

    move v13, v4

    move-object/from16 v4, p1

    move-object v14, v5

    move-object/from16 v5, p0

    move-object v15, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$5;

    invoke-direct {v1, v12, v11}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$5;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;

    move-object/from16 v8, v19

    invoke-direct {v2, v14, v8, v11, v15}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$7;

    invoke-direct {v1, v13}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$7;-><init>(Z)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$8;

    invoke-direct {v2, v14, v11}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$8;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/util/List;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;

    invoke-direct {v1, v11, v7, v15}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$i;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$10;

    invoke-direct {v1, v13, v7}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$10;-><init>(ZLcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    new-instance v2, Lcom/sunia/HTREnginev2/qki;

    invoke-direct {v2, v7, v14}, Lcom/sunia/HTREnginev2/qki;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;

    invoke-direct {v1, v7, v14}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/rki;

    move/from16 v2, v20

    invoke-direct {v1, v2, v10}, Lcom/sunia/HTREnginev2/rki;-><init>(ILcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, v7, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->x:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadFromLocal()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ink/LoadInkFontListAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/LoadInkFontListAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadTrialTime()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "ink_beautify"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->s:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    return-void
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final restoreDefaultTypeset()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->restoreDefaultTypeset()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->w:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->v:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->u:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->selectFont(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    :cond_1
    return-void
.end method

.method public final saveInkBeautify()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->y:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->x:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkBeautifyDoneEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/InkBeautifyDoneEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveLastUsedFont(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getRealtimeBeautifyTypesetOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$saveLastUsedFont$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$saveLastUsedFont$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getInkLastBeautifyFontOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final selectFont(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkFontSelectedEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/InkFontSelectedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->u:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDefaultResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->u:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    :cond_0
    return-void
.end method

.method public final selectPrimaryFont(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getOriginShapes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    const-string v1, ""

    if-nez p0, :cond_4

    move-object p0, v1

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_9

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    sget-object v7, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-static {v7, v6, v0, v4, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_7
    move-object v5, v0

    :goto_3
    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    if-eqz v5, :cond_8

    move p0, v4

    goto :goto_4

    :cond_8
    move p0, v3

    :goto_4
    if-eqz p0, :cond_9

    return-object v5

    :cond_9
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getInkLastBeautifyFontOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, p0

    :goto_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_b

    move p0, v4

    goto :goto_6

    :cond_b
    move p0, v3

    :goto_6
    if-eqz p0, :cond_f

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    sget-object v6, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-static {v6, v5, v0, v4, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object v0, v2

    :cond_d
    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    if-eqz v0, :cond_e

    move v3, v4

    :cond_e
    if-eqz v3, :cond_f

    return-object v0

    :cond_f
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-object p0
.end method

.method public final setArgs(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->k:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    return-void
.end method

.method public final setConvertType(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    return-void
.end method

.method public final setDragged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->m:Z

    return-void
.end method

.method public final setFontParamInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->r:Z

    return-void
.end method

.method public final setLastWindowLocationOfEditPopup(Lcom/onyx/android/sdk/base/data/WindowLocation;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/WindowLocation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->n:Lcom/onyx/android/sdk/base/data/WindowLocation;

    return-void
.end method

.method public final setSelectedFont(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->q:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-void
.end method

.method public final setWindowLocationBeforeKeyboardOpen(Lcom/onyx/android/sdk/base/data/WindowLocation;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/WindowLocation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->o:Lcom/onyx/android/sdk/base/data/WindowLocation;

    return-void
.end method

.method public final startFontParamsFilter()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$c;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleLast(Lio/reactivex/rxjava3/functions/Consumer;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->y:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-void
.end method

.method public final startTimer()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->stopTimer()V

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$d;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->t:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final stopTimer()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->t:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->safelyDispose(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public final updateTypesetParams()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->y:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-eqz p0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
