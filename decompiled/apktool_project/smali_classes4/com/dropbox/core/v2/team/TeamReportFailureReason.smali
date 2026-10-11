.class public final enum Lcom/dropbox/core/v2/team/TeamReportFailureReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamReportFailureReason$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/TeamReportFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/TeamReportFailureReason;

.field public static final enum MANY_REPORTS_AT_ONCE:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

.field public static final enum TEMPORARY_ERROR:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

.field public static final enum TOO_MUCH_DATA:Lcom/dropbox/core/v2/team/TeamReportFailureReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    const-string v1, "TEMPORARY_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/TeamReportFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamReportFailureReason;->TEMPORARY_ERROR:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    new-instance v1, Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    const-string v2, "MANY_REPORTS_AT_ONCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/TeamReportFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/TeamReportFailureReason;->MANY_REPORTS_AT_ONCE:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    new-instance v2, Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    const-string v3, "TOO_MUCH_DATA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/TeamReportFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/TeamReportFailureReason;->TOO_MUCH_DATA:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    new-instance v3, Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/TeamReportFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/TeamReportFailureReason;->OTHER:Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamReportFailureReason;->$VALUES:[Lcom/dropbox/core/v2/team/TeamReportFailureReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamReportFailureReason;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/TeamReportFailureReason;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/TeamReportFailureReason;->$VALUES:[Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/TeamReportFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/TeamReportFailureReason;

    return-object v0
.end method
