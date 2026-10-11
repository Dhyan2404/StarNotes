.class public Lonyx/org/apache/commons/io/output/CloseShieldWriter;
.super Lonyx/org/apache/commons/io/output/ProxyWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public static wrap(Ljava/io/Writer;)Lonyx/org/apache/commons/io/output/CloseShieldWriter;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/CloseShieldWriter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/output/CloseShieldWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/output/ClosedWriter;->INSTANCE:Lonyx/org/apache/commons/io/output/ClosedWriter;

    iput-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    return-void
.end method
