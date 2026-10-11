.class public Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadBuffers"
.end annotation


# instance fields
.field public final a:[[Lorg/mortbay/io/Buffer;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->a:[[Lorg/mortbay/io/Buffer;

    const/4 p0, 0x0

    new-array p1, p1, [Lorg/mortbay/io/Buffer;

    aput-object p1, v0, p0

    const/4 p0, 0x1

    new-array p1, p2, [Lorg/mortbay/io/Buffer;

    aput-object p1, v0, p0

    const/4 p0, 0x2

    new-array p1, p3, [Lorg/mortbay/io/Buffer;

    aput-object p1, v0, p0

    const/4 p0, 0x3

    new-array p1, p4, [Lorg/mortbay/io/Buffer;

    aput-object p1, v0, p0

    return-void
.end method
