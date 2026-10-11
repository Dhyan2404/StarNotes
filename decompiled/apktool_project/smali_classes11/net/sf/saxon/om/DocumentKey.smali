.class public Lnet/sf/saxon/om/DocumentKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CASE_BLIND_FILES:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lnet/sf/saxon/style/PackageVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "a"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "A"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnet/sf/saxon/om/DocumentKey;->CASE_BLIND_FILES:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/om/DocumentKey;->c:Ljava/lang/String;

    .line 3
    sget-object v0, Lnet/sf/saxon/style/PackageVersion;->ONE:Lnet/sf/saxon/style/PackageVersion;

    iput-object v0, p0, Lnet/sf/saxon/om/DocumentKey;->d:Lnet/sf/saxon/style/PackageVersion;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/om/DocumentKey;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lnet/sf/saxon/om/DocumentKey;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/om/DocumentKey;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lnet/sf/saxon/om/DocumentKey;->c:Ljava/lang/String;

    .line 9
    sget-object v1, Lnet/sf/saxon/style/PackageVersion;->ONE:Lnet/sf/saxon/style/PackageVersion;

    iput-object v1, p0, Lnet/sf/saxon/om/DocumentKey;->d:Lnet/sf/saxon/style/PackageVersion;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lnet/sf/saxon/om/DocumentKey;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lnet/sf/saxon/om/DocumentKey;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/om/DocumentKey;->b:Ljava/lang/String;

    if-nez p2, :cond_0

    move-object p2, v0

    .line 13
    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/om/DocumentKey;->c:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lnet/sf/saxon/om/DocumentKey;->d:Lnet/sf/saxon/style/PackageVersion;

    return-void
.end method

.method public static normalizeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "FILE:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "file:"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "file:/"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    sget-boolean v0, Lnet/sf/saxon/om/DocumentKey;->CASE_BLIND_FILES:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/om/DocumentKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/DocumentKey;->b:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/om/DocumentKey;

    iget-object v1, p1, Lnet/sf/saxon/om/DocumentKey;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/DocumentKey;->c:Ljava/lang/String;

    iget-object v1, p1, Lnet/sf/saxon/om/DocumentKey;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/DocumentKey;->d:Lnet/sf/saxon/style/PackageVersion;

    iget-object p1, p1, Lnet/sf/saxon/om/DocumentKey;->d:Lnet/sf/saxon/style/PackageVersion;

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

.method public getAbsoluteURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/DocumentKey;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/DocumentKey;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/DocumentKey;->a:Ljava/lang/String;

    return-object p0
.end method
