.class public final synthetic Lcom/sunia/HTREnginev2/x1g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$a;


# instance fields
.field public final synthetic a:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x1g;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x1g;->a:Ljava/util/Iterator;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/examples/Expander;->e(Ljava/util/Iterator;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object p0

    return-object p0
.end method
