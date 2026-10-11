.class public final enum Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamcommon/GroupManagementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string v1, "USER_MANAGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    new-instance v1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string v2, "COMPANY_MANAGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    new-instance v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string v3, "SYSTEM_MANAGED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    new-instance v3, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->$VALUES:[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->$VALUES:[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method
