.class public final synthetic Lcom/sunia/HTREnginev2/wjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wjf;->e:Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wjf;->e:Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->w(Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)V

    return-void
.end method
