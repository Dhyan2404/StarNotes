.class public Lorg/mortbay/servlet/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/io/InputStream;

.field public final synthetic g:Ljava/io/OutputStream;

.field public final synthetic h:Lorg/mortbay/servlet/CGI;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/CGI;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/servlet/a;->h:Lorg/mortbay/servlet/CGI;

    iput p2, p0, Lorg/mortbay/servlet/a;->e:I

    iput-object p3, p0, Lorg/mortbay/servlet/a;->f:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/mortbay/servlet/a;->g:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget v0, p0, Lorg/mortbay/servlet/a;->e:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/servlet/a;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/mortbay/servlet/a;->g:Ljava/io/OutputStream;

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/servlet/a;->g:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
