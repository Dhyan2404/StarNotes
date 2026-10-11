.class public final enum Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public static final enum EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public static final enum INVALID_ID:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public static final enum NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field public static final enum UNMOUNTED:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v1, "INVALID_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->INVALID_ID:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v2, "NOT_A_MEMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    new-instance v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v3, "EMAIL_UNVERIFIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    new-instance v3, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v4, "UNMOUNTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->UNMOUNTED:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    new-instance v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method
