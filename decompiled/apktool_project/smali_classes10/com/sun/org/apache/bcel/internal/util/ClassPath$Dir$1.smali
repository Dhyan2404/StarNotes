.class Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;->access$100(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method
