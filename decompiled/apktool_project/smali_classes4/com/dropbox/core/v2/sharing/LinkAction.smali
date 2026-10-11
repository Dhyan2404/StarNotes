.class public final enum Lcom/dropbox/core/v2/sharing/LinkAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/LinkAction$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/LinkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

.field public static final enum SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v1, "CHANGE_ACCESS_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

    new-instance v1, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v2, "CHANGE_AUDIENCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

    new-instance v2, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v3, "REMOVE_EXPIRY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    new-instance v3, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v4, "REMOVE_PASSWORD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    new-instance v4, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v5, "SET_EXPIRY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    new-instance v5, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v6, "SET_PASSWORD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    new-instance v6, Lcom/dropbox/core/v2/sharing/LinkAction;

    const-string v7, "OTHER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/sharing/LinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/sharing/LinkAction;->OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

    filled-new-array/range {v0 .. v6}, [Lcom/dropbox/core/v2/sharing/LinkAction;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/LinkAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/LinkAction;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/LinkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/LinkAction;

    return-object v0
.end method
