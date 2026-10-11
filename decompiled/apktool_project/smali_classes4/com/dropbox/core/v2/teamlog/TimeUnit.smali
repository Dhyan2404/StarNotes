.class public final enum Lcom/dropbox/core/v2/teamlog/TimeUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/TimeUnit$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum DAYS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum HOURS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum MILLISECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum MINUTES:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum MONTHS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum SECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum WEEKS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

.field public static final enum YEARS:Lcom/dropbox/core/v2/teamlog/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v1, "MILLISECONDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MILLISECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v2, "SECONDS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->SECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v3, "MINUTES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MINUTES:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v4, "HOURS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/TimeUnit;->HOURS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v4, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v5, "DAYS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/teamlog/TimeUnit;->DAYS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v5, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v6, "WEEKS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/teamlog/TimeUnit;->WEEKS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v6, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v7, "MONTHS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MONTHS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v7, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v8, "YEARS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/teamlog/TimeUnit;->YEARS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    new-instance v8, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    const-string v9, "OTHER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/teamlog/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/teamlog/TimeUnit;->OTHER:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    filled-new-array/range {v0 .. v8}, [Lcom/dropbox/core/v2/teamlog/TimeUnit;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->$VALUES:[Lcom/dropbox/core/v2/teamlog/TimeUnit;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->$VALUES:[Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/TimeUnit;

    return-object v0
.end method
