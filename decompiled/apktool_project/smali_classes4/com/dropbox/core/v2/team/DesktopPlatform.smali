.class public final enum Lcom/dropbox/core/v2/team/DesktopPlatform;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/DesktopPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum LINUX:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum MAC:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum WINDOWS:Lcom/dropbox/core/v2/team/DesktopPlatform;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->WINDOWS:Lcom/dropbox/core/v2/team/DesktopPlatform;

    new-instance v1, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v2, "MAC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/DesktopPlatform;->MAC:Lcom/dropbox/core/v2/team/DesktopPlatform;

    new-instance v2, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v3, "LINUX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/DesktopPlatform;->LINUX:Lcom/dropbox/core/v2/team/DesktopPlatform;

    new-instance v3, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/DesktopPlatform;->OTHER:Lcom/dropbox/core/v2/team/DesktopPlatform;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/team/DesktopPlatform;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->$VALUES:[Lcom/dropbox/core/v2/team/DesktopPlatform;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->$VALUES:[Lcom/dropbox/core/v2/team/DesktopPlatform;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/DesktopPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object v0
.end method
