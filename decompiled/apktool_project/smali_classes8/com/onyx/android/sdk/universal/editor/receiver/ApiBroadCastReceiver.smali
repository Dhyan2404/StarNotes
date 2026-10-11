.class public final Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiBroadCastReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBroadCastReceiver.kt\ncom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 52\u00020\u0001:\u00015B\u0007\u00a2\u0006\u0004\u00083\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001c\u0010(\u001a\u00020\u00042\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0007H\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u0017\u00102\u001a\u00020.8\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010/\u001a\u0004\u00080\u00101\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "",
        "k",
        "q",
        "Landroid/content/Intent;",
        "intent",
        "b",
        "c",
        "j",
        "g",
        "h",
        "i",
        "r",
        "d",
        "e",
        "f",
        "l",
        "v",
        "y",
        "m",
        "x",
        "s",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;",
        "p",
        "A",
        "z",
        "a",
        "u",
        "w",
        "Landroid/content/Context;",
        "context1",
        "intent1",
        "onReceive",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "setEventBus",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "Landroid/content/IntentFilter;",
        "Landroid/content/IntentFilter;",
        "getIntentFilter",
        "()Landroid/content/IntentFilter;",
        "intentFilter",
        "<init>",
        "()V",
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
        "SMAP\nApiBroadCastReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBroadCastReceiver.kt\ncom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTIVE_COLOR_THEME:Ljava/lang/String; = "com.onyx.android.sdk.universal.adaptiveColorTheme"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_ERASER_WIDTH:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeEraserWidth"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_ERASE_TYPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeEraserType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_LAYOUT_TYPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeLayoutType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_PAGE_COLUMN_COUNT:Ljava/lang/String; = "com.onyx.android.sdk.universal.changePageColumnCount"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_SCALE_VALUE:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeScale"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_SHAPE_TYPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeShapeType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_STROKE_COLOR:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeStrokeColor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_STROKE_WIDTH:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeStrokeWidth"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CHANGE_SUB_SHAPE_TYPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.changeSubShapeType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CLEAR_CACHE:Ljava/lang/String; = "com.onyx.android.sdk.universal.clearCache"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CLEAR_RENDER_RESULT:Ljava/lang/String; = "com.onyx.android.sdk.universal.clearRenderResult"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_COPY_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.copyPage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_DUMP_DISPLAY_INFO:Ljava/lang/String; = "com.onyx.android.sdk.universal.dumpDisplayInfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_ENABLE_FREE_MOVE_PAPER:Ljava/lang/String; = "com.onyx.android.sdk.universal.enableFreeMovePaper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_INSERT_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.insertPage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_INSERT_PAGE_FROM_PDF:Ljava/lang/String; = "com.onyx.android.sdk.universal.insertPageFromPdf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_LOCATE_LARGE_MATRIX_SHAPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.locateLargeMatrixShape"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_MOVE_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.movePage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_PREFIX:Ljava/lang/String; = "com.onyx.android.sdk.universal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_REMOVE_INVALID_VIRTUAL_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.removeInvalidVirtualPage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_REMOVE_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.removePage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_ROTATE_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.rotatePage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_TRY_CORRECT_SHAPE_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.tryCorrectShapePage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_TRY_RESTORE_PAGE_ORDER:Ljava/lang/String; = "com.onyx.android.sdk.universal.tryRestoreOrder"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_ERASER_WIDTH:Ljava/lang/String; = "eraserWidth"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_ERASE_TYPE:Ljava/lang/String; = "eraseType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_FREE_MOVE_PAPER:Ljava/lang/String; = "is_free_move_paper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_FROM_INDEX:Ljava/lang/String; = "fromIndex"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_INSERT_BEFORE:Ljava/lang/String; = "insert_before"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_LAYOUT_TYPE:Ljava/lang/String; = "layout_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_PAGE_COLUMN_COUNT:Ljava/lang/String; = "page_column_count"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_PAGE_INDEX:Ljava/lang/String; = "pageIndex"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_ROTATION:Ljava/lang/String; = "rotation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SCALE_VALUE:Ljava/lang/String; = "scale"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SHAPE_TYPE:Ljava/lang/String; = "shapeType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SINGLE_PAGE:Ljava/lang/String; = "singlePage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_STROKE_COLOR:Ljava/lang/String; = "strokeColor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_STROKE_WIDTH:Ljava/lang/String; = "strokeWidth"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_TO_INDEX:Ljava/lang/String; = "toIndex"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroid/content/IntentFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->Companion:Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.onyx.android.sdk.universal.clearCache"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.dumpDisplayInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.insertPage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.insertPageFromPdf"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.removePage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.copyPage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.movePage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.rotatePage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changePageColumnCount"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeLayoutType"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.enableFreeMovePaper"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeStrokeWidth"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeStrokeColor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeShapeType"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeSubShapeType"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeEraserWidth"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeEraserType"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.changeScale"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.clearRenderResult"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.tryRestoreOrder"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.tryCorrectShapePage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.adaptiveColorTheme"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.locateLargeMatrixShape"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.removeInvalidVirtualPage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->b:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final A(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/TryRestorePageOrderEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/TryRestorePageOrderEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/AdaptiveColorThemeEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/AdaptiveColorThemeEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;

    const-string v0, "eraseType"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;

    const-string v0, "eraserWidth"

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;-><init>(F)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;

    const-string v0, "layout_type"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;

    const-string v0, "page_column_count"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 6

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;

    const-string v0, "scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;

    const-string v0, "shapeType"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->a:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getIntentFilter()Landroid/content/IntentFilter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->b:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public final h(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "strokeColor"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "FF000000"

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x23

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;

    const-string v0, "strokeWidth"

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;-><init>(F)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;

    const-string v0, "shapeType"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ClearCacheEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ClearCacheEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ClearRenderResultEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ClearRenderResultEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->n(Landroid/content/Intent;)Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Landroid/content/Intent;)Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;
    .locals 7

    const-string p0, "pageIndex"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final o(Landroid/content/Intent;)Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;
    .locals 8

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    const-string v0, "fromIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "toIndex"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "insert_before"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v2

    move v2, v3

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;-><init>(IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v7}, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Lkotlin/reflect/KClass;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->a:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.onyx.android.sdk.universal.changeEraserWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->c(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "com.onyx.android.sdk.universal.changeEraserType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->b(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "com.onyx.android.sdk.universal.changePageColumnCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->e(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "com.onyx.android.sdk.universal.insertPageFromPdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->t(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "com.onyx.android.sdk.universal.changeLayoutType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->d(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "com.onyx.android.sdk.universal.changeShapeType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->g(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "com.onyx.android.sdk.universal.adaptiveColorTheme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->a(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "com.onyx.android.sdk.universal.changeSubShapeType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->j(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "com.onyx.android.sdk.universal.removePage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->x(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "com.onyx.android.sdk.universal.tryRestoreOrder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->A(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "com.onyx.android.sdk.universal.insertPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->s(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.onyx.android.sdk.universal.changeScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->f(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "com.onyx.android.sdk.universal.removeInvalidVirtualPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->w(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "com.onyx.android.sdk.universal.movePage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->v(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "com.onyx.android.sdk.universal.locateLargeMatrixShape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->u(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "com.onyx.android.sdk.universal.clearRenderResult"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->l(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "com.onyx.android.sdk.universal.changeStrokeWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->i(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_11
    const-string v1, "com.onyx.android.sdk.universal.changeStrokeColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->h(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_12
    const-string v1, "com.onyx.android.sdk.universal.copyPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->m(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_13
    const-string v1, "com.onyx.android.sdk.universal.rotatePage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->y(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_14
    const-string v1, "com.onyx.android.sdk.universal.tryCorrectShapePage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->z(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_15
    const-string v1, "com.onyx.android.sdk.universal.enableFreeMovePaper"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->r(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_16
    const-string p2, "com.onyx.android.sdk.universal.dumpDisplayInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->q(Lorg/greenrobot/eventbus/EventBus;)V

    goto :goto_0

    :sswitch_17
    const-string p2, "com.onyx.android.sdk.universal.clearCache"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->k(Lorg/greenrobot/eventbus/EventBus;)V

    :cond_1b
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63eae372 -> :sswitch_17
        -0x622bcdbd -> :sswitch_16
        -0x6076fccd -> :sswitch_15
        -0x5ba28ad8 -> :sswitch_14
        -0x3b5d461d -> :sswitch_13
        -0x26bf0ec3 -> :sswitch_12
        -0x23119f3e -> :sswitch_11
        -0x21faa0db -> :sswitch_10
        -0x189b0539 -> :sswitch_f
        -0x17250090 -> :sswitch_e
        -0xed01067 -> :sswitch_d
        -0x5bbeb00 -> :sswitch_c
        -0x1deecbf -> :sswitch_b
        0x2eac041 -> :sswitch_a
        0x7fc8702 -> :sswitch_9
        0xacf188c -> :sswitch_8
        0x1aa52644 -> :sswitch_7
        0x1d14d595 -> :sswitch_6
        0x2354d0f2 -> :sswitch_5
        0x3099f1ed -> :sswitch_4
        0x43754567 -> :sswitch_3
        0x5200da81 -> :sswitch_2
        0x5636384f -> :sswitch_1
        0x70b3a751 -> :sswitch_0
    .end sparse-switch
.end method

.method public final p(Landroid/content/Intent;)Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;
    .locals 7

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const-string v1, "fromIndex"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v0, "rotation"

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;-><init>(Ljava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v6}, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)V

    return-object p0
.end method

.method public final q(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/DumpDisplayInfoEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/DumpDisplayInfoEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;

    const-string v0, "is_free_move_paper"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;-><init>(Z)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    const-string v0, "pageIndex"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setInsertAt(I)V

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->a:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final t(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    const-string v0, "pageIndex"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setInsertAt(I)V

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/LocateLargeMatrixShapeEvent;

    const-string v0, "scale"

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/LocateLargeMatrixShapeEvent;-><init>(F)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->o(Landroid/content/Intent;)Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/RemoveInvalidVirtualPageEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/RemoveInvalidVirtualPageEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final x(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/RemovePageEvent;

    const-string v0, "pageIndex"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/RemovePageEvent;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;->p(Landroid/content/Intent;)Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Lorg/greenrobot/eventbus/EventBus;Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/TryCorrectShapePageEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/TryCorrectShapePageEvent;-><init>()V

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
