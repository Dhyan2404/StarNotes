.class public final enum Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupMembersAddError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

.field public static final enum USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v1, "GROUP_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v2, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v3, "SYSTEM_MANAGED_GROUP_DISALLOWED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v3, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v4, "DUPLICATE_USER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v4, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v5, "GROUP_NOT_IN_TEAM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v5, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v6, "MEMBERS_NOT_IN_TEAM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v6, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v7, "USERS_NOT_FOUND"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v7, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v8, "USER_MUST_BE_ACTIVE_TO_BE_OWNER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    new-instance v8, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const-string v9, "USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    filled-new-array/range {v0 .. v8}, [Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    return-object v0
.end method
