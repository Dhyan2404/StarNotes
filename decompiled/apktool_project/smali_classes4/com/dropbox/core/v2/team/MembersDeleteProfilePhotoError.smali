.class public final enum Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

.field public static final enum SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    new-instance v1, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    const-string v2, "USER_NOT_IN_TEAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    new-instance v2, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    const-string v3, "SET_PROFILE_DISALLOWED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    new-instance v3, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->OTHER:Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->$VALUES:[Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersDeleteProfilePhotoError;

    return-object v0
.end method
