.class public Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final exportName:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected final legalHoldId:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected part:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->legalHoldId:Ljava/lang/String;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->exportName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->part:Ljava/lang/String;

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->fileName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'exportName\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'name\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'legalHoldId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;
    .locals 7

    new-instance v6, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->legalHoldId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->exportName:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->part:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->fileName:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withFileName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public withPart(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/LegalHoldsExportDownloadedDetails$Builder;->part:Ljava/lang/String;

    return-object p0
.end method
