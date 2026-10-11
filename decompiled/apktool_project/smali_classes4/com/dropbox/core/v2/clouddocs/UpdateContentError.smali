.class public final enum Lcom/dropbox/core/v2/clouddocs/UpdateContentError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/UpdateContentError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/clouddocs/UpdateContentError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum CONFLICT:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum INVALID_DOC_ID:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum NOT_FOUND:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum PERMISSION_DENIED:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum UNLOCKED:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

.field public static final enum UPLOAD_SIZE_TOO_LARGE:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v1, "INVALID_DOC_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->INVALID_DOC_ID:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    new-instance v1, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v2, "NOT_FOUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->NOT_FOUND:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    new-instance v2, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v3, "PERMISSION_DENIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->PERMISSION_DENIED:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    new-instance v3, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->OTHER:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    new-instance v4, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v5, "UPLOAD_SIZE_TOO_LARGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->UPLOAD_SIZE_TOO_LARGE:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    new-instance v5, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v6, "CONFLICT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->CONFLICT:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    new-instance v6, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    const-string v7, "UNLOCKED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->UNLOCKED:Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    filled-new-array/range {v0 .. v6}, [Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->$VALUES:[Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/UpdateContentError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/clouddocs/UpdateContentError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->$VALUES:[Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/clouddocs/UpdateContentError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/clouddocs/UpdateContentError;

    return-object v0
.end method
