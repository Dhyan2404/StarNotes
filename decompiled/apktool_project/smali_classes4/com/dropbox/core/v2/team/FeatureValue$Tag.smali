.class public final enum Lcom/dropbox/core/v2/team/FeatureValue$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/FeatureValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/FeatureValue$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field public static final enum HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field public static final enum HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field public static final enum HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field public static final enum UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    const-string v1, "UPLOAD_API_RATE_LIMIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    new-instance v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    const-string v2, "HAS_TEAM_SHARED_DROPBOX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    new-instance v2, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    const-string v3, "HAS_TEAM_FILE_EVENTS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    new-instance v3, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    const-string v4, "HAS_TEAM_SELECTIVE_SYNC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    new-instance v4, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/FeatureValue$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/FeatureValue$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object v0
.end method
