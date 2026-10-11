.class public final enum Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

.field public static final enum MINIMAL_REQUIREMENTS:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

.field public static final enum MODERATE_PASSWORD:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

.field public static final enum STRONG_PASSWORD:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    const-string v1, "MINIMAL_REQUIREMENTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->MINIMAL_REQUIREMENTS:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    new-instance v1, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    const-string v2, "MODERATE_PASSWORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->MODERATE_PASSWORD:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    new-instance v2, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    const-string v3, "STRONG_PASSWORD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->STRONG_PASSWORD:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    new-instance v3, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teampolicies/PasswordStrengthPolicy;

    return-object v0
.end method
