.class public Lonyx/org/apache/commons/io/output/ClosedOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final CLOSED_OUTPUT_STREAM:Lonyx/org/apache/commons/io/output/ClosedOutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lonyx/org/apache/commons/io/output/ClosedOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/ClosedOutputStream;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/ClosedOutputStream;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/output/ClosedOutputStream;->INSTANCE:Lonyx/org/apache/commons/io/output/ClosedOutputStream;

    sput-object v0, Lonyx/org/apache/commons/io/output/ClosedOutputStream;->CLOSED_OUTPUT_STREAM:Lonyx/org/apache/commons/io/output/ClosedOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/IOException;

    const-string v0, "flush() failed: stream is closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "write(int) failed: stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "write(byte[], int, int) failed: stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
