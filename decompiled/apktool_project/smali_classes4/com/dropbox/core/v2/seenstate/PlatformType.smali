.class public final enum Lcom/dropbox/core/v2/seenstate/PlatformType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/seenstate/PlatformType$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/seenstate/PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum API:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum DESKTOP:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum MOBILE:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum MOBILE_ANDROID:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum MOBILE_IOS:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum UNKNOWN:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum WEB:Lcom/dropbox/core/v2/seenstate/PlatformType;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v1, "WEB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->WEB:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v1, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v2, "DESKTOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/seenstate/PlatformType;->DESKTOP:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v2, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v3, "MOBILE_IOS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/seenstate/PlatformType;->MOBILE_IOS:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v3, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v4, "MOBILE_ANDROID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/seenstate/PlatformType;->MOBILE_ANDROID:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v4, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v5, "API"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/seenstate/PlatformType;->API:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v5, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/seenstate/PlatformType;->UNKNOWN:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v6, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v7, "MOBILE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/seenstate/PlatformType;->MOBILE:Lcom/dropbox/core/v2/seenstate/PlatformType;

    new-instance v7, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v8, "OTHER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/seenstate/PlatformType;->OTHER:Lcom/dropbox/core/v2/seenstate/PlatformType;

    filled-new-array/range {v0 .. v7}, [Lcom/dropbox/core/v2/seenstate/PlatformType;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->$VALUES:[Lcom/dropbox/core/v2/seenstate/PlatformType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/seenstate/PlatformType;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/seenstate/PlatformType;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->$VALUES:[Lcom/dropbox/core/v2/seenstate/PlatformType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/seenstate/PlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/seenstate/PlatformType;

    return-object v0
.end method
