.class public Lonyx/org/apache/commons/io/input/BoundedInputStream$Builder;
.super Lonyx/org/apache/commons/io/input/BoundedInputStream$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/BoundedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/input/BoundedInputStream$a<",
        "Lonyx/org/apache/commons/io/input/BoundedInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BoundedInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/BoundedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/BoundedInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v7, Lonyx/org/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->g()J

    move-result-wide v2

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->h()J

    move-result-wide v4

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->i()Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lonyx/org/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;JJZ)V

    return-object v7
.end method
