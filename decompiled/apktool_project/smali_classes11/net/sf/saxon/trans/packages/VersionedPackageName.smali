.class public Lnet/sf/saxon/trans/packages/VersionedPackageName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public packageName:Ljava/lang/String;

.field public packageVersion:Lnet/sf/saxon/style/PackageVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    .line 6
    new-instance p1, Lnet/sf/saxon/style/PackageVersion;

    invoke-direct {p1, p2}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/PackageVersion;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equalsIgnoringSuffix(Lnet/sf/saxon/trans/packages/VersionedPackageName;)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/PackageVersion;->equalsIgnoringSuffix(Lnet/sf/saxon/style/PackageVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0}, Lnet/sf/saxon/style/PackageVersion;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0}, Lnet/sf/saxon/style/PackageVersion;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
