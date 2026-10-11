.class public final enum Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

.field public static final enum NO_ONE:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

.field public static final enum PASSWORD:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

.field public static final enum PUBLIC:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    const-string v1, "NO_ONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->NO_ONE:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    const-string v2, "PASSWORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->PASSWORD:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    const-string v3, "PUBLIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->PUBLIC:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    const-string v4, "TEAM_ONLY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    new-instance v4, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->$VALUES:[Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->$VALUES:[Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SharedLinkVisibility;

    return-object v0
.end method
