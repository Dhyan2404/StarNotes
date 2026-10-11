.class public final enum Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

.field public static final enum LEGAL_HOLD_ALREADY_RELEASING:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

.field public static final enum LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

.field public static final enum LEGAL_HOLD_POLICY_NOT_FOUND:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

.field public static final enum UNKNOWN_LEGAL_HOLD_ERROR:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    const-string v1, "UNKNOWN_LEGAL_HOLD_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->UNKNOWN_LEGAL_HOLD_ERROR:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    new-instance v1, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    const-string v2, "INSUFFICIENT_PERMISSIONS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    new-instance v2, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->OTHER:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    new-instance v3, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    const-string v4, "LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    new-instance v4, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    const-string v5, "LEGAL_HOLD_ALREADY_RELEASING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->LEGAL_HOLD_ALREADY_RELEASING:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    new-instance v5, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    const-string v6, "LEGAL_HOLD_POLICY_NOT_FOUND"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->LEGAL_HOLD_POLICY_NOT_FOUND:Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    filled-new-array/range {v0 .. v5}, [Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->$VALUES:[Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->$VALUES:[Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/LegalHoldsPolicyReleaseError;

    return-object v0
.end method
