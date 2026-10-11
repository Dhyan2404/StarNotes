.class public final enum Lcom/dropbox/core/v2/team/MobileClientPlatform;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MobileClientPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum ANDROID:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum BLACKBERRY:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum IPAD:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum IPHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field public static final enum WINDOWS_PHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string v1, "IPHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    new-instance v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string v2, "IPAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPAD:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    new-instance v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string v3, "ANDROID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->ANDROID:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    new-instance v3, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string v4, "WINDOWS_PHONE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/MobileClientPlatform;->WINDOWS_PHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    new-instance v4, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string v5, "BLACKBERRY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/MobileClientPlatform;->BLACKBERRY:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    new-instance v5, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const-string v6, "OTHER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/MobileClientPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/MobileClientPlatform;->OTHER:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    filled-new-array/range {v0 .. v5}, [Lcom/dropbox/core/v2/team/MobileClientPlatform;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->$VALUES:[Lcom/dropbox/core/v2/team/MobileClientPlatform;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform;->$VALUES:[Lcom/dropbox/core/v2/team/MobileClientPlatform;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MobileClientPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object v0
.end method
