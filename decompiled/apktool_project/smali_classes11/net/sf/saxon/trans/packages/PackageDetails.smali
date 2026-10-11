.class public Lnet/sf/saxon/trans/packages/PackageDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseName:Ljava/lang/String;

.field public beingProcessed:Ljava/lang/Thread;

.field public exportLocation:Ljavax/xml/transform/Source;

.field public loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

.field public nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

.field public priority:I

.field public shortName:Ljava/lang/String;

.field public sourceLocation:Ljavax/xml/transform/Source;

.field public staticParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/sf/saxon/trans/packages/PackageDetails;->priority:I

    return-void
.end method
