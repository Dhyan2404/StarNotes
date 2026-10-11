.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;
.super Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/jetty/IncludableGzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncludableResponseWrapper"
.end annotation


# instance fields
.field public final synthetic h:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;->h:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;-><init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method


# virtual methods
.method public newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;

    iget-object v1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;->h:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;-><init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    return-object v8
.end method
