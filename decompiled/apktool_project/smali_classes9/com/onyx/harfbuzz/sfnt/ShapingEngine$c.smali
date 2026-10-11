.class public final Lcom/onyx/harfbuzz/sfnt/ShapingEngine$c;
.super Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/sfnt/ShapingEngine;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingEngine;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to dispose a finalizable object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
