.class public final Lcom/onyx/android/sdk/filepicker/PickerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPickerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PickerManager.kt\ncom/onyx/android/sdk/filepicker/PickerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,275:1\n1855#2,2:276\n37#3,2:278\n*S KotlinDebug\n*F\n+ 1 PickerManager.kt\ncom/onyx/android/sdk/filepicker/PickerManager\n*L\n160#1:276,2\n176#1:278,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010%\n\u0002\u0008%\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u000b\u0008\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cJ\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000fj\u0008\u0012\u0004\u0012\u00020\u000c`\u0010J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u000fj\u0008\u0012\u0004\u0012\u00020\u0014`\u0010J\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u000fj\u0008\u0012\u0004\u0012\u00020\u001c`\u0010J\u0013\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001e\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\"\u001a\u00020\u00042\u0008\u0008\u0001\u0010!\u001a\u00020\u0002J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u000e\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0006\u0010)\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0002J\u0006\u0010,\u001a\u00020\u0002J6\u00101\u001a\u00020\u00042.\u00100\u001a*\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c0\u000fj\u0008\u0012\u0004\u0012\u00020\u000c`\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.\u0012\u0004\u0012\u00020\u00040-J0\u00102\u001a,\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c0\u000fj\u0008\u0012\u0004\u0012\u00020\u000c`\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.\u0012\u0004\u0012\u00020\u0004\u0018\u00010-J\u000e\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203J\u0008\u00106\u001a\u0004\u0018\u000103J\u0016\u0010:\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u001c2\u0006\u00109\u001a\u000208J\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u0002080;J\u000e\u0010=\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010?\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0007J\u000e\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020@J\u0008\u0010C\u001a\u0004\u0018\u00010@J\u0016\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000c0F2\u0008\u0010E\u001a\u0004\u0018\u00010DR\u0016\u0010J\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR$\u0010O\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000fj\u0008\u0012\u0004\u0012\u00020\u000c`\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\"\u0010U\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010I\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR$\u0010Z\u001a\u0012\u0012\u0004\u0012\u00020\u00140Vj\u0008\u0012\u0004\u0012\u00020\u0014`W8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010IR\u0016\u0010^\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010IR@\u00100\u001a,\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c0\u000fj\u0008\u0012\u0004\u0012\u00020\u000c`\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.\u0012\u0004\u0012\u00020\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0018\u0010d\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR \u0010h\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u0002080e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\"\u0010n\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010]\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\"\u0010r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010I\u001a\u0004\u0008p\u0010R\"\u0004\u0008q\u0010TR\"\u0010v\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010]\u001a\u0004\u0008t\u0010k\"\u0004\u0008u\u0010mR\"\u0010?\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010]\u001a\u0004\u0008x\u0010k\"\u0004\u0008y\u0010mR\"\u0010{\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010]\u001a\u0004\u0008{\u0010k\"\u0004\u0008|\u0010mR\"\u0010~\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008}\u0010]\u001a\u0004\u0008~\u0010k\"\u0004\u0008\u007f\u0010mR&\u0010\u0083\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010]\u001a\u0005\u0008\u0081\u0001\u0010k\"\u0005\u0008\u0082\u0001\u0010mR\u001a\u0010A\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u0013\u0010\u0087\u0001\u001a\u00020\u00028F\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010R\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/PickerManager;",
        "",
        "",
        "count",
        "",
        "setMaxCount",
        "getMaxCount",
        "",
        "isMultipleTypeSelect",
        "selectCount",
        "isSelectedValid",
        "getMultiEnable",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "documentBean",
        "selectChange",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getSelectFile",
        "enable",
        "setMultiEnable",
        "Lcom/onyx/android/sdk/filepicker/DocumentType;",
        "documentType",
        "addFileTypes",
        "ofDoc",
        "onlyPdf",
        "onlyNote",
        "ofFont",
        "getDocTypes",
        "",
        "getSupportExtensions",
        "",
        "getDocumentSupportList",
        "()[Ljava/lang/String;",
        "theme",
        "setActivityTheme",
        "reset",
        "clearSelect",
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        "sortType",
        "setSortType",
        "getSortType",
        "release",
        "requestCode",
        "setRequestCode",
        "getRequestCode",
        "Lkotlin/Function2;",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "callback",
        "setResultCallback",
        "getResultCallback",
        "Ljava/io/File;",
        "file",
        "setPickerFilesDir",
        "getPickerFile",
        "documentTypeTitle",
        "",
        "filterSize",
        "filterDocBySize",
        "",
        "getDocFilterSizeMap",
        "setKeepSeenOnEnable",
        "hide",
        "hideStatusBar",
        "Lcom/onyx/android/sdk/filepicker/FilePickerArgs;",
        "filePickerArgs",
        "addFilePickerArgs",
        "getFilePickerArgs",
        "Landroid/content/Intent;",
        "data",
        "",
        "obtainResult",
        "a",
        "I",
        "maxCount",
        "b",
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        "c",
        "Ljava/util/ArrayList;",
        "selectedFiles",
        "d",
        "getOrientation",
        "()I",
        "setOrientation",
        "(I)V",
        "orientation",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "e",
        "Ljava/util/LinkedHashSet;",
        "docTypes",
        "f",
        "g",
        "Z",
        "multiEnable",
        "h",
        "i",
        "Lkotlin/jvm/functions/Function2;",
        "j",
        "Ljava/io/File;",
        "pickerFile",
        "",
        "k",
        "Ljava/util/Map;",
        "docFilterSizeMap",
        "l",
        "getResultWithFinish",
        "()Z",
        "setResultWithFinish",
        "(Z)V",
        "resultWithFinish",
        "m",
        "getTitle",
        "setTitle",
        "title",
        "n",
        "getScreenOnEnable",
        "setScreenOnEnable",
        "screenOnEnable",
        "o",
        "getHideStatusBar",
        "setHideStatusBar",
        "p",
        "isTabLayoutHidden",
        "setTabLayoutHidden",
        "q",
        "isFileSystemHidden",
        "setFileSystemHidden",
        "r",
        "getEnableFilterDocType",
        "setEnableFilterDocType",
        "enableFilterDocType",
        "s",
        "Lcom/onyx/android/sdk/filepicker/FilePickerArgs;",
        "getCurrentCount",
        "currentCount",
        "<init>",
        "()V",
        "sdk-imagepicker_overseasRelease"
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
        "SMAP\nPickerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PickerManager.kt\ncom/onyx/android/sdk/filepicker/PickerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,275:1\n1855#2,2:276\n37#3,2:278\n*S KotlinDebug\n*F\n+ 1 PickerManager.kt\ncom/onyx/android/sdk/filepicker/PickerManager\n*L\n160#1:276,2\n176#1:278,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:I

.field public static b:Lcom/onyx/android/sdk/filepicker/sort/SortType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:I

.field public static final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:I

.field public static g:Z

.field public static h:I

.field public static i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;-",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static j:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final k:Ljava/util/Map;
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

.field public static l:Z

.field public static m:I

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Lcom/onyx/android/sdk/filepicker/FilePickerArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    const/16 v0, 0x9

    sput v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    sget-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->NONE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    sput-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->b:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->d:I

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$style;->Theme_MatisseDemo:I

    sput v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->f:I

    const/16 v1, 0x7d1

    sput v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->h:I

    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "note"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->k:Ljava/util/Map;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->l:Z

    sput v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->m:I

    sget-object v0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->isDefaultFilterByDocTypes()Z

    move-result v0

    sput-boolean v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->r:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
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


# virtual methods
.method public final addFilePickerArgs(Lcom/onyx/android/sdk/filepicker/FilePickerArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/filepicker/FilePickerArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "filePickerArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->s:Lcom/onyx/android/sdk/filepicker/FilePickerArgs;

    return-void
.end method

.method public final addFileTypes(Lcom/onyx/android/sdk/filepicker/DocumentType;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/filepicker/DocumentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "documentType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearSelect()V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final filterDocBySize(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "documentTypeTitle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/filepicker/PickerManager;->k:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCurrentCount()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getDocFilterSizeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->k:Ljava/util/Map;

    return-object p0
.end method

.method public final getDocTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getDocumentSupportList()[Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-boolean v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocTypes()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/filepicker/DocumentType;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getExtensions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager$getDocumentSupportList$1;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager$getDocumentSupportList$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager$getDocumentSupportList$2;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager$getDocumentSupportList$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getEnableFilterDocType()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->r:Z

    return p0
.end method

.method public final getFilePickerArgs()Lcom/onyx/android/sdk/filepicker/FilePickerArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->s:Lcom/onyx/android/sdk/filepicker/FilePickerArgs;

    return-object p0
.end method

.method public final getHideStatusBar()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->o:Z

    return p0
.end method

.method public final getMaxCount()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    return p0
.end method

.method public final getMultiEnable()Z
    .locals 2

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->g:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final getOrientation()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->d:I

    return p0
.end method

.method public final getPickerFile()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->j:Ljava/io/File;

    return-object p0
.end method

.method public final getRequestCode()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->h:I

    return p0
.end method

.method public final getResultCallback()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->i:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getResultWithFinish()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->l:Z

    return p0
.end method

.method public final getScreenOnEnable()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->n:Z

    return p0
.end method

.method public final getSelectFile()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getSortType()Lcom/onyx/android/sdk/filepicker/sort/SortType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->b:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    return-object p0
.end method

.method public final getSupportExtensions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getExtensions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getTitle()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->m:I

    return p0
.end method

.method public final hideStatusBar(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->o:Z

    return-void
.end method

.method public final isFileSystemHidden()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->q:Z

    return p0
.end method

.method public final isMultipleTypeSelect()Z
    .locals 1

    sget p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSelectedValid(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getMaxCount()I

    move-result p0

    if-le p1, p0, :cond_0

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_count:I

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getMaxCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isTabLayoutHidden()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->p:Z

    return p0
.end method

.method public final obtainResult(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;->Companion:Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;->getClipDataUris$sdk_imagepicker_overseasRelease(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isSelectedValid(I)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    invoke-static {v0}, Lcom/onyx/android/sdk/filepicker/UrisExtKt;->toDocumentBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$string;->un_support_file_type:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/onyx/android/sdk/filepicker/UrisExtKt;->toDocumentBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final ofDoc()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/DocumentType;->Companion:Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->ofDoc()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final ofFont()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/DocumentType;->Companion:Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->ofFont()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onlyNote()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/DocumentType;->Companion:Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->onlyNote()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onlyPdf()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/DocumentType;->Companion:Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->onlyPdf()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->reset()V

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->i:Lkotlin/jvm/functions/Function2;

    sput-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->j:Ljava/io/File;

    const/4 v0, -0x1

    sput v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->m:I

    sput-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->s:Lcom/onyx/android/sdk/filepicker/FilePickerArgs;

    return-void
.end method

.method public final reset()V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/4 p0, -0x1

    sput p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    return-void
.end method

.method public final selectChange(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/filepicker/DocumentBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "documentBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->g:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/onyx/android/sdk/filepicker/PickerManager$selectChange$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager$selectChange$1;-><init>(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/filepicker/PickerManager$selectChange$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/filepicker/PickerManager$selectChange$2;-><init>(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    new-instance p1, Lcom/sunia/HTREnginev2/a4l;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/a4l;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    if-lt v0, v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_count:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final setActivityTheme(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    sput p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->f:I

    return-void
.end method

.method public final setEnableFilterDocType(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->r:Z

    return-void
.end method

.method public final setFileSystemHidden(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->q:Z

    return-void
.end method

.method public final setHideStatusBar(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->o:Z

    return-void
.end method

.method public final setKeepSeenOnEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->n:Z

    return-void
.end method

.method public final setMaxCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->reset()V

    sput p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->a:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSelectable must be greater than or equal to one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMultiEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->g:Z

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->d:I

    return-void
.end method

.method public final setPickerFilesDir(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->j:Ljava/io/File;

    return-void
.end method

.method public final setRequestCode(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->h:I

    return-void
.end method

.method public final setResultCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;-",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setResultWithFinish(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->l:Z

    return-void
.end method

.method public final setScreenOnEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->n:Z

    return-void
.end method

.method public final setSortType(Lcom/onyx/android/sdk/filepicker/sort/SortType;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/filepicker/sort/SortType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "sortType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->b:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    return-void
.end method

.method public final setTabLayoutHidden(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->p:Z

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->m:I

    return-void
.end method
