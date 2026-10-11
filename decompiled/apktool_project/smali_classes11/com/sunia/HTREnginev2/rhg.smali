.class public final synthetic Lcom/sunia/HTREnginev2/rhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rhg;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rhg;->e:Ljava/lang/String;

    check-cast p1, Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/file/spi/FileSystemProviders;->a(Ljava/lang/String;Ljava/nio/file/spi/FileSystemProvider;)Z

    move-result p0

    return p0
.end method
