.class public Lonyx/org/apache/commons/io/output/CloseShieldOutputStream;
.super Lonyx/org/apache/commons/io/output/ProxyOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static wrap(Ljava/io/OutputStream;)Lonyx/org/apache/commons/io/output/CloseShieldOutputStream;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/CloseShieldOutputStream;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/output/CloseShieldOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/output/ClosedOutputStream;->INSTANCE:Lonyx/org/apache/commons/io/output/ClosedOutputStream;

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method
