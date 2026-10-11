.class public final Lcom/onyx/galaxy/note/common/constant/WebJSConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/constant/WebJSConstants;",
        "",
        "()V",
        "ERROR_FOR_PAY",
        "",
        "REFRESH_MESSAGE_STATUS",
        "REFRESH_PROGRESS",
        "REFRESH_USER_SHIP",
        "SUCCESS_FOR_PAY",
        "WINDOW_ON_DATA",
        "note_overseasRelease"
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
.field public static final ERROR_FOR_PAY:Ljava/lang/String; = "window.errorForPay"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/galaxy/note/common/constant/WebJSConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REFRESH_MESSAGE_STATUS:Ljava/lang/String; = "window.refreshMessageStatus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REFRESH_PROGRESS:Ljava/lang/String; = "window.refreshProgress"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REFRESH_USER_SHIP:Ljava/lang/String; = "window.refreshUserShip"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESS_FOR_PAY:Ljava/lang/String; = "window.successForPay"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WINDOW_ON_DATA:Ljava/lang/String; = "window.onData"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/constant/WebJSConstants;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/constant/WebJSConstants;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/constant/WebJSConstants;->INSTANCE:Lcom/onyx/galaxy/note/common/constant/WebJSConstants;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
