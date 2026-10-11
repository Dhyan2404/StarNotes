.class public final Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u000c\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\tR\u001a\u0010\u0013\u001a\u00020\u00028\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u00028\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00028\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0012R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR \u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;",
        "",
        "",
        "key",
        "",
        "getLeftTime",
        "countDownInSecond",
        "",
        "forceAdd",
        "",
        "addTimer",
        "release",
        "getWechatRefreshTime",
        "startWechatTimer",
        "releaseWechatTimer",
        "a",
        "Ljava/lang/String;",
        "getKEY_WECHAT",
        "()Ljava/lang/String;",
        "KEY_WECHAT",
        "b",
        "getKEY_PHONE_VERIFY",
        "KEY_PHONE_VERIFY",
        "c",
        "getKEY_EMAIL_VERIFY",
        "KEY_EMAIL_VERIFY",
        "Lorg/greenrobot/eventbus/EventBus;",
        "d",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "",
        "Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;",
        "e",
        "Ljava/util/Map;",
        "modelMap",
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
.field public static final INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    const-string v0, "wechat"

    sput-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->a:Ljava/lang/String;

    const-string v0, "phone_verify"

    sput-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->b:Ljava/lang/String;

    const-string v0, "email_verify"

    sput-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->c:Ljava/lang/String;

    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->d:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic addTimer$default(Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;Ljava/lang/String;JZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->addTimer(Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public final addTimer(Ljava/lang/String;JZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    sget-object p4, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->e:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->release(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->e:Ljava/util/Map;

    new-instance p4, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-direct {p4, p1, p2, p3}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;-><init>(Ljava/lang/String;J)V

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->d:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getKEY_EMAIL_VERIFY()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getKEY_PHONE_VERIFY()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getKEY_WECHAT()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLeftTime(Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->getLeftTime()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final getWechatRefreshTime()J
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->user_wechat_invalidate_time:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final release(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->release()V

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final releaseWechatTimer()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->release(Ljava/lang/String;)V

    return-void
.end method

.method public final startWechatTimer()V
    .locals 7

    sget-object v1, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getWechatRefreshTime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->addTimer$default(Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;Ljava/lang/String;JZILjava/lang/Object;)V

    return-void
.end method
