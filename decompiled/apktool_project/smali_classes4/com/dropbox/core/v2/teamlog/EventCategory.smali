.class public final enum Lcom/dropbox/core/v2/teamlog/EventCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/EventCategory$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum LEGAL_HOLDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHOWCASE:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TRUSTED_TEAMS:Lcom/dropbox/core/v2/teamlog/EventCategory;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v1, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v0, v1

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v1, v2

    const-string v3, "COMMENTS"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v2, v3

    const-string v4, "DEVICES"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v4, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v3, v4

    const-string v5, "DOMAINS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v5, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v4, v5

    const-string v6, "FILE_OPERATIONS"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v6, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v5, v6

    const-string v7, "FILE_REQUESTS"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v7, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v6, v7

    const-string v8, "GROUPS"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v8, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v7, v8

    const-string v9, "LEGAL_HOLDS"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/teamlog/EventCategory;->LEGAL_HOLDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v9, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v8, v9

    const-string v10, "LOGINS"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v10, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v9, v10

    const-string v11, "MEMBERS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v11, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v10, v11

    const-string v12, "PAPER"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v12, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v11, v12

    const-string v13, "PASSWORDS"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v13, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v12, v13

    const-string v14, "REPORTS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v14, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v13, v14

    const-string v15, "SHARING"

    move-object/from16 v22, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v14, v0

    const-string v15, "SHOWCASE"

    move-object/from16 v23, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHOWCASE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v15, v0

    const-string v1, "SSO"

    move-object/from16 v24, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v16, v0

    const-string v1, "TEAM_FOLDERS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v17, v0

    const-string v1, "TEAM_POLICIES"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v18, v0

    const-string v1, "TEAM_PROFILE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v19, v0

    const-string v1, "TFA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v20, v0

    const-string v1, "TRUSTED_TEAMS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TRUSTED_TEAMS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v21, v0

    const-string v1, "OTHER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    filled-new-array/range {v0 .. v21}, [Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->$VALUES:[Lcom/dropbox/core/v2/teamlog/EventCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->$VALUES:[Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/EventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object v0
.end method
