.class public final enum Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvernoteInstallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

.field public static final enum INSTALLED:Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

.field public static final enum NOT_INSTALLED:Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

.field public static final enum OLD_VERSION:Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    const-string v1, "INSTALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;->INSTALLED:Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    new-instance v1, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    const-string v2, "OLD_VERSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;->OLD_VERSION:Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    new-instance v2, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    const-string v3, "NOT_INSTALLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;->NOT_INSTALLED:Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    filled-new-array {v0, v1, v2}, [Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;->$VALUES:[Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;
    .locals 1

    const-class v0, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    return-object p0
.end method

.method public static values()[Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;
    .locals 1

    sget-object v0, Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;->$VALUES:[Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    invoke-virtual {v0}, [Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/client/android/EvernoteUtil$EvernoteInstallStatus;

    return-object v0
.end method
