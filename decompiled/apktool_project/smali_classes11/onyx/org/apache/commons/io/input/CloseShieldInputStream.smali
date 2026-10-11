.class public Lonyx/org/apache/commons/io/input/CloseShieldInputStream;
.super Lonyx/org/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static wrap(Ljava/io/InputStream;)Lonyx/org/apache/commons/io/input/CloseShieldInputStream;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/CloseShieldInputStream;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/input/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/input/ClosedInputStream;->INSTANCE:Lonyx/org/apache/commons/io/input/ClosedInputStream;

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    return-void
.end method
