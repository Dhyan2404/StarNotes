.class public final synthetic Lcom/sunia/HTREnginev2/y1g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$b;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/archivers/tar/TarFile;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y1g;->a:Lorg/apache/commons/compress/archivers/tar/TarFile;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y1g;->a:Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->d(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V

    return-void
.end method
