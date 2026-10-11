.class public final synthetic Lcom/sunia/HTREnginev2/mvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

.field public final synthetic f:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mvk;->e:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mvk;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mvk;->e:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mvk;->f:Ljava/util/concurrent/Callable;

    invoke-static {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->a(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Ljava/util/concurrent/Callable;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object p0

    return-object p0
.end method
