.class public final enum Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StsVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

.field public static final enum VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

.field public static final enum VERSION_3:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    const-string v1, "VERSION_2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    new-instance v1, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    const-string v2, "VERSION_3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_3:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    filled-new-array {v0, v1}, [Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    move-result-object v0

    sput-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->$VALUES:[Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;
    .locals 1

    const-class v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;
    .locals 1

    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->$VALUES:[Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    invoke-virtual {v0}, [Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    return-object v0
.end method
