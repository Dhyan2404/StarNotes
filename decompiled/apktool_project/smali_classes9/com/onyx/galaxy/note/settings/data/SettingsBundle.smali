.class public final Lcom/onyx/galaxy/note/settings/data/SettingsBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001J\u000e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001R\u001b\u0010\r\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/SettingsBundle;",
        "",
        "event",
        "",
        "postEvent",
        "subscriber",
        "ensureRegister",
        "ensureUnRegister",
        "Lorg/greenrobot/eventbus/EventBus;",
        "a",
        "Lkotlin/Lazy;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle$eventBus$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle$eventBus$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ensureRegister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public final ensureUnRegister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
