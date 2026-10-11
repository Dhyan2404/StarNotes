.class public Lonyx/org/apache/commons/io/output/BrokenWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lonyx/org/apache/commons/io/output/BrokenWriter;


# instance fields
.field public final e:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/BrokenWriter;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/BrokenWriter;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/output/BrokenWriter;->INSTANCE:Lonyx/org/apache/commons/io/output/BrokenWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/dv;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dv;-><init>()V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/output/BrokenWriter;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/cv;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/cv;-><init>(Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/output/BrokenWriter;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/bv;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bv;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/output/BrokenWriter;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 4
    iput-object p1, p0, Lonyx/org/apache/commons/io/output/BrokenWriter;->e:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic H()Ljava/lang/Throwable;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken writer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic I(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public static synthetic M(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/output/BrokenWriter;->M(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/output/BrokenWriter;->I(Ljava/io/IOException;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lonyx/org/apache/commons/io/output/BrokenWriter;->H()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/BrokenWriter;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final e0()Ljava/lang/RuntimeException;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/BrokenWriter;->e:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Erase;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/BrokenWriter;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public write([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/BrokenWriter;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
