.class public final enum Lcom/dropbox/core/v2/filerequests/GracePeriod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/GracePeriod$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/filerequests/GracePeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field public static final enum TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string v1, "ONE_DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    new-instance v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string v2, "TWO_DAYS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/filerequests/GracePeriod;->TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    new-instance v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string v3, "SEVEN_DAYS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    new-instance v3, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string v4, "THIRTY_DAYS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/filerequests/GracePeriod;->THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    new-instance v4, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string v5, "ALWAYS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    new-instance v5, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    const-string v6, "OTHER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/filerequests/GracePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/filerequests/GracePeriod;->OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    filled-new-array/range {v0 .. v5}, [Lcom/dropbox/core/v2/filerequests/GracePeriod;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->$VALUES:[Lcom/dropbox/core/v2/filerequests/GracePeriod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->$VALUES:[Lcom/dropbox/core/v2/filerequests/GracePeriod;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/filerequests/GracePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/filerequests/GracePeriod;

    return-object v0
.end method
