.class public final enum Lcom/dropbox/core/v2/team/GroupCreateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupCreateError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/GroupCreateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/GroupCreateError;

.field public static final enum EXTERNAL_ID_ALREADY_IN_USE:Lcom/dropbox/core/v2/team/GroupCreateError;

.field public static final enum GROUP_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/GroupCreateError;

.field public static final enum GROUP_NAME_INVALID:Lcom/dropbox/core/v2/team/GroupCreateError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/GroupCreateError;

.field public static final enum SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupCreateError;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateError;

    const-string v1, "GROUP_NAME_ALREADY_USED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupCreateError;->GROUP_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/GroupCreateError;

    new-instance v1, Lcom/dropbox/core/v2/team/GroupCreateError;

    const-string v2, "GROUP_NAME_INVALID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/GroupCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/GroupCreateError;->GROUP_NAME_INVALID:Lcom/dropbox/core/v2/team/GroupCreateError;

    new-instance v2, Lcom/dropbox/core/v2/team/GroupCreateError;

    const-string v3, "EXTERNAL_ID_ALREADY_IN_USE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/GroupCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/GroupCreateError;->EXTERNAL_ID_ALREADY_IN_USE:Lcom/dropbox/core/v2/team/GroupCreateError;

    new-instance v3, Lcom/dropbox/core/v2/team/GroupCreateError;

    const-string v4, "SYSTEM_MANAGED_GROUP_DISALLOWED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/GroupCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/GroupCreateError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupCreateError;

    new-instance v4, Lcom/dropbox/core/v2/team/GroupCreateError;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/GroupCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/GroupCreateError;->OTHER:Lcom/dropbox/core/v2/team/GroupCreateError;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dropbox/core/v2/team/GroupCreateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupCreateError;->$VALUES:[Lcom/dropbox/core/v2/team/GroupCreateError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/GroupCreateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/GroupCreateError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/GroupCreateError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/GroupCreateError;->$VALUES:[Lcom/dropbox/core/v2/team/GroupCreateError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/GroupCreateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/GroupCreateError;

    return-object v0
.end method
