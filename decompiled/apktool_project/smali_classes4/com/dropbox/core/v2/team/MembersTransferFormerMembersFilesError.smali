.class public final enum Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum RECIPIENT_NOT_VERIFIED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum USER_DATA_ALREADY_TRANSFERRED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum USER_DATA_CANNOT_BE_TRANSFERRED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum USER_DATA_IS_BEING_TRANSFERRED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

.field public static final enum USER_NOT_REMOVED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v1, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v2, "USER_NOT_IN_TEAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v2, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->OTHER:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v3, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v4, "REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v4, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v5, "REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v5, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v6, "TRANSFER_DEST_USER_NOT_FOUND"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v6, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v7, "TRANSFER_DEST_USER_NOT_IN_TEAM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v7, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v8, "TRANSFER_ADMIN_USER_NOT_IN_TEAM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v8, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v9, "TRANSFER_ADMIN_USER_NOT_FOUND"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v9, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v10, "UNSPECIFIED_TRANSFER_ADMIN_ID"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v10, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v11, "TRANSFER_ADMIN_IS_NOT_ADMIN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v11, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v12, "RECIPIENT_NOT_VERIFIED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->RECIPIENT_NOT_VERIFIED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v12, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v13, "USER_DATA_IS_BEING_TRANSFERRED"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->USER_DATA_IS_BEING_TRANSFERRED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v13, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v14, "USER_NOT_REMOVED"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->USER_NOT_REMOVED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v14, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v15, "USER_DATA_CANNOT_BE_TRANSFERRED"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->USER_DATA_CANNOT_BE_TRANSFERRED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    new-instance v15, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    const-string v13, "USER_DATA_ALREADY_TRANSFERRED"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->USER_DATA_ALREADY_TRANSFERRED:Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersTransferFormerMembersFilesError;

    return-object v0
.end method
