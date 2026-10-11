.class public Lorg/mortbay/util/IO$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:Ljava/io/InputStream;

.field public f:Ljava/io/OutputStream;

.field public g:Ljava/io/Reader;

.field public h:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mortbay/util/IO$b;->e:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lorg/mortbay/util/IO$b;->f:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/mortbay/util/IO$b;->g:Ljava/io/Reader;

    .line 5
    iput-object p1, p0, Lorg/mortbay/util/IO$b;->h:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/mortbay/util/IO$b;->e:Ljava/io/InputStream;

    .line 8
    iput-object v0, p0, Lorg/mortbay/util/IO$b;->f:Ljava/io/OutputStream;

    .line 9
    iput-object p1, p0, Lorg/mortbay/util/IO$b;->g:Ljava/io/Reader;

    .line 10
    iput-object p2, p0, Lorg/mortbay/util/IO$b;->h:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/IO$b;->e:Ljava/io/InputStream;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/mortbay/util/IO$b;->f:Ljava/io/OutputStream;

    invoke-static {v0, v3, v1, v2}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/IO$b;->g:Ljava/io/Reader;

    iget-object v3, p0, Lorg/mortbay/util/IO$b;->h:Ljava/io/Writer;

    invoke-static {v0, v3, v1, v2}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/util/IO$b;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object p0, p0, Lorg/mortbay/util/IO$b;->h:Ljava/io/Writer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
