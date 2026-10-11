.class public final synthetic Lcom/sunia/HTREnginev2/dxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dxo;->e:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dxo;->e:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f(Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)Z

    move-result p0

    return p0
.end method
