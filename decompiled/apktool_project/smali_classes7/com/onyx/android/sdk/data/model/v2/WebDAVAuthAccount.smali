.class public final Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;
.super Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0019\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;",
        "Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;",
        "()V",
        "webDAVUrl",
        "",
        "isLogin",
        "",
        "(Ljava/lang/String;Z)V",
        "()Z",
        "setLogin",
        "(Z)V",
        "getWebDAVUrl",
        "()Ljava/lang/String;",
        "setWebDAVUrl",
        "(Ljava/lang/String;)V",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isLogin:Z

.field private webDAVUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->Companion:Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->isLogin:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/model/v2/BaseAuthAccount;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->webDAVUrl:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->isLogin:Z

    return-void
.end method


# virtual methods
.method public final getWebDAVUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->webDAVUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final isLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->isLogin:Z

    return p0
.end method

.method public final setLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->isLogin:Z

    return-void
.end method

.method public final setWebDAVUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->webDAVUrl:Ljava/lang/String;

    return-void
.end method
