.class public final Lcom/onyx/android/sdk/data/account/bean/TokenBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
        "",
        "()V",
        "token",
        "",
        "getToken",
        "()Ljava/lang/String;",
        "setToken",
        "(Ljava/lang/String;)V",
        "tokenExpiredAt",
        "",
        "getTokenExpiredAt",
        "()J",
        "setTokenExpiredAt",
        "(J)V",
        "tokenExpiredAtDate",
        "Ljava/util/Date;",
        "getTokenExpiredAtDate",
        "()Ljava/util/Date;",
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


# instance fields
.field private token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tokenExpiredAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final getTokenExpiredAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->tokenExpiredAt:J

    return-wide v0
.end method

.method public final getTokenExpiredAtDate()Ljava/util/Date;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->tokenExpiredAt:J

    const/16 p0, 0x3e8

    int-to-long v3, p0

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->token:Ljava/lang/String;

    return-void
.end method

.method public final setTokenExpiredAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->tokenExpiredAt:J

    return-void
.end method
