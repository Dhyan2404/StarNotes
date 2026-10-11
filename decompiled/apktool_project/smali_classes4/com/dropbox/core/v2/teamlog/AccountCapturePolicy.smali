.class public final enum Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

.field public static final enum ALL_USERS:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

.field public static final enum DISABLED:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

.field public static final enum INVITED_USERS:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->DISABLED:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    const-string v2, "INVITED_USERS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->INVITED_USERS:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    const-string v3, "ALL_USERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->ALL_USERS:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/AccountCapturePolicy;

    return-object v0
.end method
