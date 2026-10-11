.class public Lnet/sf/saxon/trans/packages/UsePack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public location:Lnet/sf/saxon/s9api/Location;

.field public packageName:Ljava/lang/String;

.field public ranges:Lnet/sf/saxon/style/PackageVersionRanges;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/UsePack;->packageName:Ljava/lang/String;

    new-instance p1, Lnet/sf/saxon/style/PackageVersionRanges;

    if-nez p2, :cond_0

    const-string p2, "*"

    :cond_0
    invoke-direct {p1, p2}, Lnet/sf/saxon/style/PackageVersionRanges;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/UsePack;->ranges:Lnet/sf/saxon/style/PackageVersionRanges;

    iput-object p3, p0, Lnet/sf/saxon/trans/packages/UsePack;->location:Lnet/sf/saxon/s9api/Location;

    return-void
.end method
