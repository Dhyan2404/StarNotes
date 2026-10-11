.class public final Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;",
        "",
        "()V",
        "ACTION_TOKEN_INVALID_ACTION",
        "",
        "ARGS_DATA",
        "CLOUD_STORAGE_DOWNLOADING_RESPONSE_ACTION",
        "KEY_JSON",
        "KEY_NAME",
        "RECEIVER_INTENT_COPY_ACTION",
        "RECEIVER_INTENT_CUT_ACTION",
        "RECEIVER_INTENT_RENAME_ACTION",
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
.field public static final ACTION_TOKEN_INVALID_ACTION:Ljava/lang/String; = "token.invalid.action"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_DATA:Ljava/lang/String; = "compat_m_args_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLOUD_STORAGE_DOWNLOADING_RESPONSE_ACTION:Ljava/lang/String; = "onyx.action.cloud.storage.DOWNLOADING_RESPONSE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_JSON:Ljava/lang/String; = "json"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_NAME:Ljava/lang/String; = "name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECEIVER_INTENT_COPY_ACTION:Ljava/lang/String; = "com.onyx.intent.action.copy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECEIVER_INTENT_CUT_ACTION:Ljava/lang/String; = "com.onyx.intent.action.cut"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECEIVER_INTENT_RENAME_ACTION:Ljava/lang/String; = "com.onyx.intent.action.rename"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
