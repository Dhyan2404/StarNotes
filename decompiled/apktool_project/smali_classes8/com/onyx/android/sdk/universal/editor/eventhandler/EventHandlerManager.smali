.class public final Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 EventHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager\n*L\n37#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010%\n\u0002\u0008\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000c\u001a\u00020\u0004J\u0008\u0010\r\u001a\u00020\u0004H\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R#\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "init",
        "",
        "key",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "eventHandler",
        "registerEventHandler",
        "unregisterEventHandler",
        "destroy",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "",
        "Ljava/util/Map;",
        "getEventHandlerMap",
        "()Ljava/util/Map;",
        "eventHandlerMap",
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
        "SMAP\nEventHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 EventHandlerManager.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager\n*L\n37#1:65,2\n*E\n"
    }
.end annotation


# static fields
.field public static final BEAUTIFY:Ljava/lang/String; = "beautify"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOCUMENT:Ljava/lang/String; = "document"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EDITOR_ENCRYPTION:Ljava/lang/String; = "editor_encryption"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERASE:Ljava/lang/String; = "erase"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LONG_PRESS:Ljava/lang/String; = "long_press"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAGNIFIER:Ljava/lang/String; = "magnifier"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MOUSE:Ljava/lang/String; = "mouse"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOTE:Ljava/lang/String; = "note"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSERVER:Ljava/lang/String; = "observer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPERATION_TIP:Ljava/lang/String; = "operation_tip"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE:Ljava/lang/String; = "page"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECEIVER:Ljava/lang/String; = "receiver"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RULER:Ljava/lang/String; = "ruler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCALE:Ljava/lang/String; = "scale"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPES_LOCATION_BAR:Ljava/lang/String; = "shapes_location_bar"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPES_SELECTION:Ljava/lang/String; = "shapes_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STASH:Ljava/lang/String; = "stash"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATISTIC:Ljava/lang/String; = "statistic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYNC:Ljava/lang/String; = "sync"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEMPLATE:Ljava/lang/String; = "template"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_INDEX:Ljava/lang/String; = "text_index"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->Companion:Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v2, "note"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/eventhandler/ReceiverEventHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/eventhandler/ReceiverEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v2, "receiver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/eventhandler/ObserverEventHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/ObserverEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string p0, "observer"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

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

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEventHandlerMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final init(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a()V

    return-void
.end method

.method public final registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final unregisterEventHandler(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
