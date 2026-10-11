.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,226:1\n1855#2,2:227\n215#3,2:229\n*S KotlinDebug\n*F\n+ 1 ShapeHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager\n*L\n50#1:227,2\n203#1:229,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0015\u0018\u0000 H2\u00020\u0001:\u0001HB\u000f\u0012\u0006\u00103\u001a\u000201\u00a2\u0006\u0004\u0008F\u0010GJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0006\u0010\u000b\u001a\u00020\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u0016\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\u0002J\u0006\u0010\u0017\u001a\u00020\u0012J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\u0006\u0010\u001b\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0012J\u0006\u0010 \u001a\u00020\u0012J\u0006\u0010!\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0012J\u0006\u0010$\u001a\u00020\u0012J\u0006\u0010%\u001a\u00020\u0012J\u000e\u0010(\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020&J\u0016\u0010,\u001a\u00020\u00122\u0006\u0010*\u001a\u00020)2\u0006\u0010\u0005\u001a\u00020+J\u000e\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-J\u0010\u00100\u001a\u00020\u00122\u0008\u0010\u0005\u001a\u0004\u0018\u00010+R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u00102R \u00106\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u00105R\u0016\u00108\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00107R\"\u0010>\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u00107\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010E\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;",
        "",
        "",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;",
        "event",
        "a",
        "",
        "shapeType",
        "",
        "b",
        "destroy",
        "key",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "handler",
        "registerHandler",
        "activeShapeDrawingProvider",
        "providerName",
        "",
        "updateToolbar",
        "activeUserProvider",
        "activeShapeProvider",
        "restoreUserProvider",
        "isProviderChanged",
        "getActiveHandler",
        "getActiveProviderName",
        "getActiveProvider",
        "isTextInputHandler",
        "isUniversalShapeHandler",
        "isSelectionHandler",
        "isTransformHandler",
        "isExcerptHandler",
        "isShapeDrawingHandler",
        "isEraserHandler",
        "isTextExcerptHandler",
        "isAnnotationSelection",
        "isTextSelectionMode",
        "supportSelectTextByLongPress",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "onSingleTapUp",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "updateTouchMode",
        "isHandlerProcessing",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "Ljava/util/Map;",
        "handlerMap",
        "Ljava/lang/String;",
        "activeProviderName",
        "d",
        "getUserProviderName",
        "()Ljava/lang/String;",
        "setUserProviderName",
        "(Ljava/lang/String;)V",
        "userProviderName",
        "e",
        "Z",
        "getStylusOnly",
        "()Z",
        "setStylusOnly",
        "(Z)V",
        "stylusOnly",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nShapeHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,226:1\n1855#2,2:227\n215#3,2:229\n*S KotlinDebug\n*F\n+ 1 ShapeHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager\n*L\n50#1:227,2\n203#1:229,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ANNOTATION_SELECTION_PROVIDER:Ljava/lang/String; = "annotation_selection_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DUMMY_PROVIDER:Ljava/lang/String; = "dummy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERASE_PROVIDER:Ljava/lang/String; = "erase_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXCERPT_PROVIDER:Ljava/lang/String; = "excerpt_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LASER_SHAPE_PROVIDER:Ljava/lang/String; = "laser_shape_drawing_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SELECTION_PROVIDER:Ljava/lang/String; = "selection_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_DRAWING_PROVIDER:Ljava/lang/String; = "shape_drawing_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_IMAGE_PROVIDER:Ljava/lang/String; = "shape_image"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_INPUT_PROVIDER:Ljava/lang/String; = "text_input_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_SELECTION_PROVIDER:Ljava/lang/String; = "text_selection_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TRANSFORM_PROVIDER:Ljava/lang/String; = "transform_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNIVERSAL_SHAPE_PROVIDER:Ljava/lang/String; = "universal_shape_drawing_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->Companion:Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b:Ljava/util/Map;

    const-string p1, "dummy"

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;->getActiveProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;->getActiveProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activeShapeHandler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userProviderName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final activeShapeDrawingProvider()V
    .locals 2

    const-string v0, "shape_drawing_provider"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeUserProvider(Ljava/lang/String;Z)V

    return-void
.end method

.method public final activeShapeDrawingProvider(I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeUserProvider(Ljava/lang/String;Z)V

    return-void
.end method

.method public final activeShapeProvider(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeShapeProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a(Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;)V

    return-void
.end method

.method public final activeUserProvider(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  userProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a(Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3

    const/16 p0, 0x13

    if-eq p1, p0, :cond_2

    const/16 p0, 0x3eb

    if-eq p1, p0, :cond_1

    const-string p0, "shape_drawing_provider"

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "dummy"

    goto :goto_0

    :pswitch_0
    const-string p0, "excerpt_provider"

    goto :goto_0

    :pswitch_1
    const-string p0, "universal_shape_drawing_provider"

    goto :goto_0

    :cond_1
    const-string p0, "laser_shape_drawing_provider"

    goto :goto_0

    :cond_2
    const-string p0, "shape_image"

    goto :goto_0

    :cond_3
    const-string p0, "text_input_provider"

    :goto_0
    :pswitch_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/DummyHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/DummyHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "dummy"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeDrawingHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeDrawingHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "shape_drawing_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "universal_shape_drawing_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "laser_shape_drawing_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "erase_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "selection_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "text_selection_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "annotation_selection_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "transform_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "text_input_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "excerpt_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ImageHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ImageHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "shape_image"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    return-object p0
.end method

.method public final getActiveProvider()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getActiveProviderName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getStylusOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->e:Z

    return p0
.end method

.method public final getUserProviderName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final isAnnotationSelection()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "annotation_selection_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEraserHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "erase_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isExcerptHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "excerpt_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isHandlerProcessing(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->isProcessing(Landroid/view/MotionEvent;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final isProviderChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isSelectionHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "selection_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isShapeDrawingHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "shape_drawing_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isTextExcerptHandler()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isExcerptHandler()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->isTextExcerpt()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTextInputHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "text_input_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isTextSelectionMode()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v1, "text_selection_provider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isTextExcerptHandler()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final isTransformHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "transform_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUniversalShapeHandler()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->c:Ljava/lang/String;

    const-string v0, "universal_shape_drawing_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->e:Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public final registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final restoreUserProvider()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeUserProvider(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setStylusOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->e:Z

    return-void
.end method

.method public final setUserProviderName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->d:Ljava/lang/String;

    return-void
.end method

.method public final supportSelectTextByLongPress()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method
