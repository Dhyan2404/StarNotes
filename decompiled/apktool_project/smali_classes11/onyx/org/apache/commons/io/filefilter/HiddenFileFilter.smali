.class public Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x7bf0b9c4d4ed8916L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->negate()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;->VISIBLE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;->lambda$accept$0(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$accept$0(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 2
    new-instance p2, Lcom/sunia/HTREnginev2/czh;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/czh;-><init>(Lonyx/org/apache/commons/io/filefilter/HiddenFileFilter;Ljava/nio/file/Path;)V

    invoke-virtual {p0, p2}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
