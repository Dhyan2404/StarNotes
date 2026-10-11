.class public Lonyx/org/apache/commons/io/input/ClosedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lonyx/org/apache/commons/io/input/ClosedInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lonyx/org/apache/commons/io/input/ClosedInputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/ClosedInputStream;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/input/ClosedInputStream;->INSTANCE:Lonyx/org/apache/commons/io/input/ClosedInputStream;

    sput-object v0, Lonyx/org/apache/commons/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lonyx/org/apache/commons/io/input/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const/4 p0, -0x1

    return p0
.end method
