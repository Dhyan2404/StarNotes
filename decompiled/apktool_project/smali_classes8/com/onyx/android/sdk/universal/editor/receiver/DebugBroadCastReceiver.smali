.class public final Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "",
        "register",
        "Landroid/content/Intent;",
        "intent",
        "onReceive",
        "g",
        "c",
        "b",
        "a",
        "",
        "e",
        "",
        "f",
        "d",
        "h",
        "Landroid/content/IntentFilter;",
        "Landroid/content/IntentFilter;",
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


# static fields
.field public static final ACTION_CONFIG_DISTINCT_DRAFT_PAGE:Ljava/lang/String; = "com.onyx.android.sdk.universal.config.distinctDraftPage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CONFIG_IMPORT_REMOVED_SHAPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.config.importRemovedShape"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_CONFIG_IMPORT_STASH_SHAPE:Ljava/lang/String; = "com.onyx.android.sdk.universal.config.importStashShape"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_DEBUG:Ljava/lang/String; = "com.onyx.android.sdk.universal.debug"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_TEST_CRASH:Ljava/lang/String; = "com.onyx.android.sdk.universal.test.crash"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTION_TEST_LOCALIZATION:Ljava/lang/String; = "com.onyx.android.sdk.universal.test.localization"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/IntentFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->Companion:Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.onyx.android.sdk.universal.debug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.config.importStashShape"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.config.importRemovedShape"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.config.distinctDraftPage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.test.crash"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.onyx.android.sdk.universal.test.localization"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->e(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->setEnabledDistinctDraftPage(Z)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->e(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData$Companion;->setIMPORT_DELETED_SHAPE(Z)V

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->e(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$Companion;->setIMPORT_STASH_SHAPE(Z)V

    return-void
.end method

.method public final d()V
    .locals 0

    const-string p0, "crash"

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    return-void
.end method

.method public final e(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "args"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final f(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const-string p0, "args"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Landroid/content/Intent;)V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;

    const/4 p0, 0x1

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;-><init>(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final h(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found string localization resource of: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
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

    const-class v1, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;

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

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.onyx.android.sdk.universal.debug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->g(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.onyx.android.sdk.universal.config.importStashShape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->c(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.onyx.android.sdk.universal.test.localization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->h(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.onyx.android.sdk.universal.config.importRemovedShape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->b(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    const-string p2, "com.onyx.android.sdk.universal.test.crash"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->d()V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.onyx.android.sdk.universal.config.distinctDraftPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->a(Landroid/content/Intent;)V

    :cond_8
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e0fe7df -> :sswitch_5
        -0xfc1755c -> :sswitch_4
        -0xc56fae7 -> :sswitch_3
        0x67638fc -> :sswitch_2
        0x237bbc24 -> :sswitch_1
        0x7c60f75a -> :sswitch_0
    .end sparse-switch
.end method

.method public final register(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->a:Landroid/content/IntentFilter;

    invoke-static {p1, p0, v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
