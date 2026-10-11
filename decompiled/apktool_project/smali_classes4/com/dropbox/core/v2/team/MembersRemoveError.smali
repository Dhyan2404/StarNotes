.class public final enum Lcom/dropbox/core/v2/team/MembersRemoveError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersRemoveError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MembersRemoveError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_ACCOUNT_REQUIRED_TO_SIGN_TOS:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_ACCOUNT_UNDER_LEGAL_HOLD:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_RETAIN_SHARES_WHEN_DATA_WIPED:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_RETAIN_SHARES_WHEN_NO_ACCOUNT_KEPT:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_RETAIN_SHARES_WHEN_TEAM_EXTERNAL_SHARING_OFF:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum RECIPIENT_NOT_VERIFIED:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v0, v1

    const-string v2, "USER_NOT_FOUND"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v2, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v1, v2

    const-string v3, "USER_NOT_IN_TEAM"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v3, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v2, v3

    const-string v4, "OTHER"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/MembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v4, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v3, v4

    const-string v5, "REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v5, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v4, v5

    const-string v6, "REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v6, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v5, v6

    const-string v7, "TRANSFER_DEST_USER_NOT_FOUND"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v7, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v6, v7

    const-string v8, "TRANSFER_DEST_USER_NOT_IN_TEAM"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v8, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v7, v8

    const-string v9, "TRANSFER_ADMIN_USER_NOT_IN_TEAM"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v9, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v8, v9

    const-string v10, "TRANSFER_ADMIN_USER_NOT_FOUND"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v10, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v9, v10

    const-string v11, "UNSPECIFIED_TRANSFER_ADMIN_ID"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/team/MembersRemoveError;->UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v11, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v10, v11

    const-string v12, "TRANSFER_ADMIN_IS_NOT_ADMIN"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v12, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v11, v12

    const-string v13, "RECIPIENT_NOT_VERIFIED"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/team/MembersRemoveError;->RECIPIENT_NOT_VERIFIED:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v13, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v12, v13

    const-string v14, "REMOVE_LAST_ADMIN"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v14, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v13, v14

    const-string v15, "CANNOT_KEEP_ACCOUNT_AND_TRANSFER"

    move-object/from16 v23, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v14, v0

    const-string v15, "CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA"

    move-object/from16 v24, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object v15, v0

    const-string v1, "EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED"

    move-object/from16 v25, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v16, v0

    const-string v1, "CANNOT_KEEP_INVITED_USER_ACCOUNT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v17, v0

    const-string v1, "CANNOT_RETAIN_SHARES_WHEN_DATA_WIPED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_RETAIN_SHARES_WHEN_DATA_WIPED:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v18, v0

    const-string v1, "CANNOT_RETAIN_SHARES_WHEN_NO_ACCOUNT_KEPT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_RETAIN_SHARES_WHEN_NO_ACCOUNT_KEPT:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v19, v0

    const-string v1, "CANNOT_RETAIN_SHARES_WHEN_TEAM_EXTERNAL_SHARING_OFF"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_RETAIN_SHARES_WHEN_TEAM_EXTERNAL_SHARING_OFF:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v20, v0

    const-string v1, "CANNOT_KEEP_ACCOUNT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v21, v0

    const-string v1, "CANNOT_KEEP_ACCOUNT_UNDER_LEGAL_HOLD"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_UNDER_LEGAL_HOLD:Lcom/dropbox/core/v2/team/MembersRemoveError;

    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v22, v0

    const-string v1, "CANNOT_KEEP_ACCOUNT_REQUIRED_TO_SIGN_TOS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_REQUIRED_TO_SIGN_TOS:Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    filled-new-array/range {v0 .. v22}, [Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersRemoveError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersRemoveError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersRemoveError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersRemoveError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersRemoveError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersRemoveError;

    return-object v0
.end method
