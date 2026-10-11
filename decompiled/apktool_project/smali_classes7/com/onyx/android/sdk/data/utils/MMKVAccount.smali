.class public final Lcom/onyx/android/sdk/data/utils/MMKVAccount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007J\u0012\u0010\u0008\u001a\u00020\t*\u00020\u00072\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/MMKVAccount;",
        "",
        "()V",
        "LAST_TOKEN_UPDATE_TIME",
        "",
        "getLastTokenUpdateTime",
        "",
        "Lcom/onyx/android/sdk/data/utils/MMKVUtils;",
        "setLastTokenUpdateTime",
        "",
        "time",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVAccount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LAST_TOKEN_UPDATE_TIME:Ljava/lang/String; = "LAST_TOKEN_UPDATE_TIME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/MMKVAccount;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/MMKVAccount;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/MMKVAccount;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVAccount;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastTokenUpdateTime(Lcom/onyx/android/sdk/data/utils/MMKVUtils;)J
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/utils/MMKVUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "LAST_TOKEN_UPDATE_TIME"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setLastTokenUpdateTime(Lcom/onyx/android/sdk/data/utils/MMKVUtils;J)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/utils/MMKVUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "LAST_TOKEN_UPDATE_TIME"

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method
