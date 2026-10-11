.class public Lcom/squareup/okhttp/internal/DiskLruCache$b;
.super Lcom/sunia/HTREnginev2/d9g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;->s0()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic g:Z


# instance fields
.field public final synthetic f:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$b;->f:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/d9g;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$b;->f:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->m0(Lcom/squareup/okhttp/internal/DiskLruCache;Z)Z

    return-void
.end method
