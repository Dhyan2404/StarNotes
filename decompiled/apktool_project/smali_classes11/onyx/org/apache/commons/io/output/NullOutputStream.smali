.class public Lonyx/org/apache/commons/io/output/NullOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lonyx/org/apache/commons/io/output/NullOutputStream;

.field public static final NULL_OUTPUT_STREAM:Lonyx/org/apache/commons/io/output/NullOutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/NullOutputStream;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/NullOutputStream;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/output/NullOutputStream;->INSTANCE:Lonyx/org/apache/commons/io/output/NullOutputStream;

    sput-object v0, Lonyx/org/apache/commons/io/output/NullOutputStream;->NULL_OUTPUT_STREAM:Lonyx/org/apache/commons/io/output/NullOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    return-void
.end method
