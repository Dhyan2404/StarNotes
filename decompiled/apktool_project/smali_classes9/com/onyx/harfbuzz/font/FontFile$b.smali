.class public Lcom/onyx/harfbuzz/font/FontFile$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/font/FontFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/harfbuzz/font/FontFile;


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/font/FontFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/harfbuzz/font/FontFile$b;->a:Lcom/onyx/harfbuzz/font/FontFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/font/FontFile;Lcom/onyx/harfbuzz/font/FontFile$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/font/FontFile$b;-><init>(Lcom/onyx/harfbuzz/font/FontFile;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile$b;->a:Lcom/onyx/harfbuzz/font/FontFile;

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/font/FontFile;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
