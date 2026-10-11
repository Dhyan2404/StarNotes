.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0019\u001a\u00020\u001aR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\u0005R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\u0005R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\u0005\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
        "Ljava/io/Serializable;",
        "()V",
        "accessToken",
        "",
        "(Ljava/lang/String;)V",
        "getAccessToken",
        "()Ljava/lang/String;",
        "setAccessToken",
        "appKey",
        "getAppKey",
        "setAppKey",
        "appSecret",
        "getAppSecret",
        "setAppSecret",
        "expiresAt",
        "",
        "getExpiresAt",
        "()Ljava/lang/Long;",
        "setExpiresAt",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "refreshToken",
        "getRefreshToken",
        "setRefreshToken",
        "toDbxCredential",
        "Lcom/dropbox/core/oauth/DbxCredential;",
        "Companion",
        "sdk-cloudstorage_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private appKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private appSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private expiresAt:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->accessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppSecret()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpiresAt()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->expiresAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->appKey:Ljava/lang/String;

    return-void
.end method

.method public final setAppSecret(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public final setExpiresAt(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->expiresAt:Ljava/lang/Long;

    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public final toDbxCredential()Lcom/dropbox/core/oauth/DbxCredential;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/dropbox/core/oauth/DbxCredential;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->expiresAt:Ljava/lang/Long;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->refreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->appKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->appSecret:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/oauth/DbxCredential;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
