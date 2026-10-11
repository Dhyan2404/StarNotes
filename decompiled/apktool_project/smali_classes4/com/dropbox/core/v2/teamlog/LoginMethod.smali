.class public final enum Lcom/dropbox/core/v2/teamlog/LoginMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/LoginMethod$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/LoginMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum APPLE_OAUTH:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum FIRST_PARTY_TOKEN_EXCHANGE:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum GOOGLE_OAUTH:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum PASSWORD:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum QR_CODE:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum SAML:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum TWO_FACTOR_AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/LoginMethod;

.field public static final enum WEB_SESSION:Lcom/dropbox/core/v2/teamlog/LoginMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v1, "PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/LoginMethod;->PASSWORD:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v2, "TWO_FACTOR_AUTHENTICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/LoginMethod;->TWO_FACTOR_AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v3, "SAML"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/LoginMethod;->SAML:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v4, "GOOGLE_OAUTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/LoginMethod;->GOOGLE_OAUTH:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v4, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v5, "WEB_SESSION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/teamlog/LoginMethod;->WEB_SESSION:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v5, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v6, "QR_CODE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/teamlog/LoginMethod;->QR_CODE:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v6, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v7, "APPLE_OAUTH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/teamlog/LoginMethod;->APPLE_OAUTH:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v7, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v8, "FIRST_PARTY_TOKEN_EXCHANGE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/teamlog/LoginMethod;->FIRST_PARTY_TOKEN_EXCHANGE:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    new-instance v8, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const-string v9, "OTHER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/teamlog/LoginMethod;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/teamlog/LoginMethod;->OTHER:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    filled-new-array/range {v0 .. v8}, [Lcom/dropbox/core/v2/teamlog/LoginMethod;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/LoginMethod;->$VALUES:[Lcom/dropbox/core/v2/teamlog/LoginMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/LoginMethod;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/LoginMethod;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/LoginMethod;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginMethod;->$VALUES:[Lcom/dropbox/core/v2/teamlog/LoginMethod;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/LoginMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/LoginMethod;

    return-object v0
.end method
