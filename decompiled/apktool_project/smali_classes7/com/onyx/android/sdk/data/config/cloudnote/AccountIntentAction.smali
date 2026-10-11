.class public final Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;",
        "",
        "()V",
        "ACCOUNT_CHANGED",
        "",
        "ACCOUNT_QUERY",
        "ACCOUNT_QUERY_RESULT",
        "IM_ACCOUNT_LOGIN",
        "SAVE_CLOUD_ANNOTATION",
        "SAVE_CLOUD_ANNOTATION_RESULT",
        "SAVE_CLOUD_NOTE",
        "SAVE_CLOUD_NOTE_RESULT",
        "SYSTEM_ONYX_ACCOUNT_CHANGED",
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
.field public static final ACCOUNT_CHANGED:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.ACCOUNT_CHANGED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACCOUNT_QUERY:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.ACCOUNT_QUERY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACCOUNT_QUERY_RESULT:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.ACCOUNT_QUERY_RESULT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IM_ACCOUNT_LOGIN:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.IM_ACCOUNT_LOGIN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SAVE_CLOUD_ANNOTATION:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.SAVE_CLOUD_ANNOTATION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SAVE_CLOUD_ANNOTATION_RESULT:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.SAVE_CLOUD_ANNOTATION_RESULT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SAVE_CLOUD_NOTE:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.SAVE_CLOUD_NOTE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SAVE_CLOUD_NOTE_RESULT:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.SAVE_CLOUD_NOTE_RESULT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_ONYX_ACCOUNT_CHANGED:Ljava/lang/String; = "com.onyx.android.sdk.accounts.intent.action.SYSTEM_ONYX_ACCOUNT_CHANGED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;->INSTANCE:Lcom/onyx/android/sdk/data/config/cloudnote/AccountIntentAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
