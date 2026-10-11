.class Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;
.super Lcom/sun/org/apache/bcel/internal/util/ClassPath$PathEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/util/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Zip"
.end annotation


# instance fields
.field private zip:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$PathEntry;-><init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$1;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;)Ljava/util/zip/ZipFile;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    return-object p0
.end method


# virtual methods
.method public getClassFile(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;

    invoke-direct {p2, p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;-><init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;Ljava/util/zip/ZipEntry;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
