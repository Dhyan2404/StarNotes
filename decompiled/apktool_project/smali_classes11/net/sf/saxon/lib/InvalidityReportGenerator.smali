.class public Lnet/sf/saxon/lib/InvalidityReportGenerator;
.super Lnet/sf/saxon/lib/StandardInvalidityHandler;
.source "SourceFile"


# static fields
.field public static final REPORT_NS:Ljava/lang/String; = "http://saxon.sf.net/ns/validation"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/lib/StandardInvalidityHandler;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Outputter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/lib/StandardInvalidityHandler;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method


# virtual methods
.method public createMetaData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endReporting()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWarningCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reportInvalidity(Lnet/sf/saxon/lib/Invalidity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public setReceiver(Lnet/sf/saxon/event/Outputter;)V
    .locals 0

    return-void
.end method

.method public setSchemaName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setXsdVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startReporting(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
