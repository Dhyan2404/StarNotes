.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$b;->e:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompressedCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$b;->e:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->j(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$b;->e:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->H(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v0

    return-wide v0
.end method
