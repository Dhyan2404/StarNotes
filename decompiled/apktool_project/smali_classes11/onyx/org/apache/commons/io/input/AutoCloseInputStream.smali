.class public Lonyx/org/apache/commons/io/input/AutoCloseInputStream;
.super Lonyx/org/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/AutoCloseInputStream$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/AutoCloseInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/AutoCloseInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/AutoCloseInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public afterRead(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sget-object v0, Lonyx/org/apache/commons/io/input/ClosedInputStream;->INSTANCE:Lonyx/org/apache/commons/io/input/ClosedInputStream;

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
