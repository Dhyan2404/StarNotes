.class public final synthetic Lcom/sunia/HTREnginev2/t1g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$a;


# instance fields
.field public final synthetic a:Ljava/util/Enumeration;

.field public final synthetic b:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t1g;->a:Ljava/util/Enumeration;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t1g;->b:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t1g;->a:Ljava/util/Enumeration;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t1g;->b:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v0, p0}, Lorg/apache/commons/compress/archivers/examples/Expander;->c(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object p0

    return-object p0
.end method
