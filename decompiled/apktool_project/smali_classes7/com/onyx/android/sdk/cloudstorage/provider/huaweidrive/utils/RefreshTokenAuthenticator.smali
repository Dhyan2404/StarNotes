.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;",
        "Lokhttp3/Authenticator;",
        "Lokhttp3/Route;",
        "route",
        "Lokhttp3/Response;",
        "response",
        "Lokhttp3/Request;",
        "authenticate",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "provider",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1
    .param p1    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator$Companion;->refreshToken(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lokhttp3/Response;Lio/reactivex/rxjava3/functions/Consumer;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
