.class public Lonyx/org/apache/commons/io/input/CloseShieldReader;
.super Lonyx/org/apache/commons/io/input/ProxyReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static wrap(Ljava/io/Reader;)Lonyx/org/apache/commons/io/input/CloseShieldReader;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/CloseShieldReader;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/input/CloseShieldReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/input/ClosedReader;->INSTANCE:Lonyx/org/apache/commons/io/input/ClosedReader;

    iput-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    return-void
.end method
