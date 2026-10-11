.class public final enum Lcom/dropbox/core/v2/team/GroupUpdateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupUpdateError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/GroupUpdateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/GroupUpdateError;

.field public static final enum EXTERNAL_ID_ALREADY_IN_USE:Lcom/dropbox/core/v2/team/GroupUpdateError;

.field public static final enum GROUP_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/GroupUpdateError;

.field public static final enum GROUP_NAME_INVALID:Lcom/dropbox/core/v2/team/GroupUpdateError;

.field public static final enum GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupUpdateError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/GroupUpdateError;

.field public static final enum SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupUpdateError;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v1, "GROUP_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupUpdateError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupUpdateError;

    new-instance v1, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v2, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/GroupUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/GroupUpdateError;->OTHER:Lcom/dropbox/core/v2/team/GroupUpdateError;

    new-instance v2, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v3, "SYSTEM_MANAGED_GROUP_DISALLOWED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/GroupUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupUpdateError;

    new-instance v3, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v4, "GROUP_NAME_ALREADY_USED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/GroupUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/GroupUpdateError;->GROUP_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/GroupUpdateError;

    new-instance v4, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v5, "GROUP_NAME_INVALID"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/GroupUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/GroupUpdateError;->GROUP_NAME_INVALID:Lcom/dropbox/core/v2/team/GroupUpdateError;

    new-instance v5, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v6, "EXTERNAL_ID_ALREADY_IN_USE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/GroupUpdateError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/GroupUpdateError;->EXTERNAL_ID_ALREADY_IN_USE:Lcom/dropbox/core/v2/team/GroupUpdateError;

    filled-new-array/range {v0 .. v5}, [Lcom/dropbox/core/v2/team/GroupUpdateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupUpdateError;->$VALUES:[Lcom/dropbox/core/v2/team/GroupUpdateError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupUpdateError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/GroupUpdateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/GroupUpdateError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/GroupUpdateError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateError;->$VALUES:[Lcom/dropbox/core/v2/team/GroupUpdateError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/GroupUpdateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/GroupUpdateError;

    return-object v0
.end method
