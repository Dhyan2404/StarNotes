.class public Lcom/squareup/okhttp/Cache$d$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/Cache$d;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field public final synthetic g:Lcom/squareup/okhttp/Cache$d;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache$d;Lokio/Source;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Cache$d$a;->g:Lcom/squareup/okhttp/Cache$d;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$d$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$d$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
