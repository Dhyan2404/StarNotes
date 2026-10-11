.class public final enum Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum DOCX:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum HTML:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum MARKDOWN:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

.field public static final enum PDF:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v1, "DOCX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->DOCX:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v2, "HTML"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->HTML:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v3, "MARKDOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->MARKDOWN:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v4, "PDF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->PDF:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    new-instance v4, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->OTHER:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->$VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->$VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-object v0
.end method
