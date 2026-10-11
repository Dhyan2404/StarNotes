.class public final Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;",
        "",
        "()V",
        "currentTime",
        "",
        "getCurrentTime",
        "()J",
        "setCurrentTime",
        "(J)V",
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
.field private currentTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;->currentTime:J

    return-wide v0
.end method

.method public final setCurrentTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;->currentTime:J

    return-void
.end method
