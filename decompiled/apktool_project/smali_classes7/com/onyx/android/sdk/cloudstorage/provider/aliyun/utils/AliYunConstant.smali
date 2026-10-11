.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;",
        "",
        "()V",
        "CHECK_NAME_MODE_AUTO_RENAME",
        "",
        "CHECK_NAME_MODE_IGNORE",
        "CHECK_NAME_MODE_REFUSE",
        "QUERY_MAX_LIMIT",
        "",
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
.field public static final CHECK_NAME_MODE_AUTO_RENAME:Ljava/lang/String; = "auto_rename"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CHECK_NAME_MODE_IGNORE:Ljava/lang/String; = "ignore"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CHECK_NAME_MODE_REFUSE:Ljava/lang/String; = "refuse"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_MAX_LIMIT:I = 0x64


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunConstant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
