.class public final enum Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

.field public static final enum EDITOR:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

.field public static final enum MAX:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

.field public static final enum VIEWER:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    const-string v1, "VIEWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    new-instance v1, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    const-string v2, "EDITOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->EDITOR:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    new-instance v2, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    const-string v3, "MAX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->MAX:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    new-instance v3, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->OTHER:Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->$VALUES:[Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->$VALUES:[Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/RequestedLinkAccessLevel;

    return-object v0
.end method
