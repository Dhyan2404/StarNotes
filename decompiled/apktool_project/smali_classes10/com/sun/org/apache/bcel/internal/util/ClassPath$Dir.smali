.class Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;
.super Lcom/sun/org/apache/bcel/internal/util/ClassPath$PathEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/util/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dir"
.end annotation


# instance fields
.field private dir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$PathEntry;-><init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$1;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;->dir:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;->dir:Ljava/lang/String;

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

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;-><init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;->dir:Ljava/lang/String;

    return-object p0
.end method
