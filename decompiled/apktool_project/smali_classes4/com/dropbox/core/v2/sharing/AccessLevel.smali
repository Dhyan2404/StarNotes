.class public final enum Lcom/dropbox/core/v2/sharing/AccessLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/AccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum EDITOR:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum OWNER:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/AccessLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string v1, "OWNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->OWNER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    new-instance v1, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string v2, "EDITOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel;->EDITOR:Lcom/dropbox/core/v2/sharing/AccessLevel;

    new-instance v2, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string v3, "VIEWER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    new-instance v3, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string v4, "VIEWER_NO_COMMENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/AccessLevel;

    new-instance v4, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/sharing/AccessLevel;->OTHER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->$VALUES:[Lcom/dropbox/core/v2/sharing/AccessLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->$VALUES:[Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/AccessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method
