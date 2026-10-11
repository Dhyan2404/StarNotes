.class Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;

.field final synthetic val$entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;Ljava/util/zip/ZipEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;->access$200(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;)Ljava/util/zip/ZipFile;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->this$0:Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;->access$200(Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
