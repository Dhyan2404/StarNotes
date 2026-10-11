.class public Lnet/sf/saxon/trans/packages/PackageLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public final b:Lnet/sf/saxon/trans/CompilerInfo;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/PackageVersion;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/trans/packages/VersionedPackageName;",
            "Lnet/sf/saxon/trans/packages/PackageDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->b:Lnet/sf/saxon/trans/CompilerInfo;

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/CompilerInfo;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/CompilerInfo;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->b:Lnet/sf/saxon/trans/CompilerInfo;

    .line 17
    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    .line 18
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 19
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageInspector;

    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/packages/PackageInspector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    .line 20
    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p2, v1}, Lnet/sf/saxon/trans/packages/PackageInspector;->getPackageDetails(Ljava/io/File;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to get package name and version for file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-virtual {v0}, Lnet/sf/saxon/trans/packages/PackageInspector;->getDiagnostics()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Lnet/sf/saxon/trans/packages/PackageDetails;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/packages/PackageLibrary;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    .line 11
    iget-object v0, p1, Lnet/sf/saxon/trans/packages/PackageLibrary;->b:Lnet/sf/saxon/trans/CompilerInfo;

    iput-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->b:Lnet/sf/saxon/trans/CompilerInfo;

    .line 12
    iget-object p1, p1, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/packages/PackageDetails;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->baseName:Ljava/lang/String;

    const-string v1, ")"

    const-string v2, ") does not match the value in the XSLT source ("

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base name of package ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->baseName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v0, v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object p0

    iget-object p1, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/PackageVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered version number of package ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object p2, p2, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered name of package ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object p2, p2, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPackage(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 20
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageInspector;

    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/packages/PackageInspector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    .line 21
    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/trans/packages/PackageInspector;->getPackageDetails(Ljava/io/File;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get package name and version for file "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-virtual {v0}, Lnet/sf/saxon/trans/packages/PackageInspector;->getDiagnostics()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Lnet/sf/saxon/trans/packages/PackageDetails;)V

    return-void
.end method

.method public declared-synchronized addPackage(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object v1

    .line 3
    new-instance v2, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V

    .line 4
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageDetails;

    invoke-direct {v0}, Lnet/sf/saxon/trans/packages/PackageDetails;-><init>()V

    .line 5
    iput-object v2, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    .line 6
    iput-object p1, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    .line 7
    iget-object p1, v2, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Lnet/sf/saxon/trans/packages/PackageDetails;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackage(Lnet/sf/saxon/trans/packages/PackageDetails;)V
    .locals 5

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    .line 12
    iget-object v1, v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    .line 13
    iget-object v2, v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    .line 14
    iget-object v3, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v4, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lnet/sf/saxon/trans/packages/PackageDetails;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/packages/PackageDetails;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/packages/VersionedPackageName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->beingProcessed:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v0, v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "and "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is a cycle of package dependencies involving "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XTSE3005"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public declared-synchronized findDetailsForAlias(Ljava/lang/String;)Lnet/sf/saxon/trans/packages/PackageDetails;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/packages/PackageDetails;

    iget-object v3, v2, Lnet/sf/saxon/trans/packages/PackageDetails;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-unique shortName in package library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findPackage(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersionRanges;)Lnet/sf/saxon/trans/packages/PackageDetails;
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v3, -0x80000000

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/style/PackageVersion;

    iget-object v6, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    new-instance v7, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-direct {v7, p1, v5}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/trans/packages/PackageDetails;

    invoke-virtual {p2, v5}, Lnet/sf/saxon/style/PackageVersionRanges;->contains(Lnet/sf/saxon/style/PackageVersion;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v5, v6, Lnet/sf/saxon/trans/packages/PackageDetails;->priority:I

    if-le v5, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/packages/PackageDetails;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-ne v4, v3, :cond_8

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/trans/packages/PackageDetails;

    if-eqz v2, :cond_7

    iget-object v0, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v0, v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    iget-object v1, v2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v1, v1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/PackageVersion;->compareTo(Lnet/sf/saxon/style/PackageVersion;)I

    move-result v0

    if-lez v0, :cond_6

    :cond_7
    move-object v2, p2

    goto :goto_1

    :cond_8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/trans/packages/PackageDetails;

    iget v0, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->priority:I

    iget-object v1, p2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v1, v1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    if-eq v0, v3, :cond_9

    if-ne v0, v4, :cond_9

    if-eqz v2, :cond_a

    iget-object v0, v2, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v0, v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageVersion:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/PackageVersion;->compareTo(Lnet/sf/saxon/style/PackageVersion;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_9

    :cond_a
    move-object v2, p2

    goto :goto_2

    :cond_b
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->b:Lnet/sf/saxon/trans/CompilerInfo;

    return-object p0
.end method

.method public declared-synchronized getPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/packages/PackageDetails;

    iget-object v2, v2, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public obtainLoadedPackage(Lnet/sf/saxon/trans/packages/PackageDetails;Ljava/util/List;)Lnet/sf/saxon/style/StylesheetPackage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/packages/PackageDetails;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/packages/VersionedPackageName;",
            ">;)",
            "Lnet/sf/saxon/style/StylesheetPackage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->exportLocation:Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/packages/PackageLibrary;->b(Lnet/sf/saxon/trans/packages/PackageDetails;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->beingProcessed:Ljava/lang/Thread;

    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->exportLocation:Ljavax/xml/transform/Source;

    iget-object v0, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePackageLoader()Lnet/sf/saxon/trans/packages/IPackageLoader;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/sf/saxon/trans/packages/IPackageLoader;->loadPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->a(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/packages/PackageDetails;)V

    iput-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object v1, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->beingProcessed:Ljava/lang/Thread;

    return-object p2

    :cond_1
    iget-object v0, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->sourceLocation:Ljavax/xml/transform/Source;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/packages/PackageLibrary;->b(Lnet/sf/saxon/trans/packages/PackageDetails;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->beingProcessed:Ljava/lang/Thread;

    new-instance v0, Lnet/sf/saxon/style/Compilation;

    iget-object v2, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->a:Lnet/sf/saxon/Configuration;

    iget-object v3, p0, Lnet/sf/saxon/trans/packages/PackageLibrary;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-direct {v0, v2, v3}, Lnet/sf/saxon/style/Compilation;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/style/Compilation;->setUsingPackages(Ljava/util/List;)V

    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/style/Compilation;->setExpectedNameAndVersion(Lnet/sf/saxon/trans/packages/VersionedPackageName;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->clearParameters()V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lnet/sf/saxon/style/Compilation;->setLibraryPackage(Z)V

    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->staticParams:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/style/Compilation;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->sourceLocation:Ljavax/xml/transform/Source;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/style/Compilation;->compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p2

    iput-object v1, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->beingProcessed:Ljava/lang/Thread;

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->a(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/packages/PackageDetails;)V

    iput-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p2

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Errors found in package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object p1, p1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v1
.end method
