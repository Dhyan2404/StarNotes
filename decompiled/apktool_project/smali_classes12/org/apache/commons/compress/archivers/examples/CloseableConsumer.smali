.class public interface abstract Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

.field public static final NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fvd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fvd;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    new-instance v0, Lcom/sunia/HTREnginev2/gvd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gvd;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    return-void
.end method

.method public static synthetic a(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static synthetic b(Ljava/io/Closeable;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->a(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/io/Closeable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
