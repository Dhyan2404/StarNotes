.class public final enum Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

.field public static final enum INVALID_DOC_ID:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

.field public static final enum NOT_FOUND:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

.field public static final enum PERMISSION_DENIED:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    const-string v1, "INVALID_DOC_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->INVALID_DOC_ID:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    new-instance v1, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    const-string v2, "NOT_FOUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->NOT_FOUND:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    new-instance v2, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    const-string v3, "PERMISSION_DENIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->PERMISSION_DENIED:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    new-instance v3, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->OTHER:Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->$VALUES:[Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->$VALUES:[Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/clouddocs/CloudDocsAccessError;

    return-object v0
.end method
