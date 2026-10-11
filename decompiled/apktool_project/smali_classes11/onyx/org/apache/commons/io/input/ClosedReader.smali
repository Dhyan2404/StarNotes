.class public Lonyx/org/apache/commons/io/input/ClosedReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field public static final CLOSED_READER:Lonyx/org/apache/commons/io/input/ClosedReader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lonyx/org/apache/commons/io/input/ClosedReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/ClosedReader;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/ClosedReader;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/input/ClosedReader;->INSTANCE:Lonyx/org/apache/commons/io/input/ClosedReader;

    sput-object v0, Lonyx/org/apache/commons/io/input/ClosedReader;->CLOSED_READER:Lonyx/org/apache/commons/io/input/ClosedReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read([CII)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
