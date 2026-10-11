.class public final enum Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

.field public static final enum ALERT_ONLY:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

.field public static final enum OFF:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

.field public static final enum STOP_SYNC:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->OFF:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    new-instance v1, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    const-string v2, "ALERT_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->ALERT_ONLY:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    new-instance v2, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    const-string v3, "STOP_SYNC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->STOP_SYNC:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    new-instance v3, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->OTHER:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->$VALUES:[Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->$VALUES:[Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    return-object v0
.end method
