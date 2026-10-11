.class public final Lcom/google/android/exoplayer2/source/rtsp/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/c;

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

.field public c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/b;Lcom/google/android/exoplayer2/source/rtsp/c;ILcom/google/android/exoplayer2/source/rtsp/RtpDataChannel$Factory;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->d:Lcom/google/android/exoplayer2/source/rtsp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->a:Lcom/google/android/exoplayer2/source/rtsp/c;

    new-instance v3, Lcom/sunia/HTREnginev2/utl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/utl;-><init>(Lcom/google/android/exoplayer2/source/rtsp/b$d;)V

    new-instance v6, Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/b;->s(Lcom/google/android/exoplayer2/source/rtsp/b;)Lcom/google/android/exoplayer2/source/rtsp/b$b;

    move-result-object v4

    move-object v0, v6

    move v1, p3

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;-><init>(ILcom/google/android/exoplayer2/source/rtsp/c;Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable$EventListener;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel$Factory;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->b:Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/b$d;Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/b$d;->f(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/b$d;)Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->b:Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    return-object p0
.end method

.method private synthetic f(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->c:Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;->c()Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->d:Lcom/google/android/exoplayer2/source/rtsp/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/b;->d(Lcom/google/android/exoplayer2/source/rtsp/b;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;->getLocalPort()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->H0(ILcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->d:Lcom/google/android/exoplayer2/source/rtsp/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/b;->y(Lcom/google/android/exoplayer2/source/rtsp/b;Z)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->d:Lcom/google/android/exoplayer2/source/rtsp/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/b;->u(Lcom/google/android/exoplayer2/source/rtsp/b;)V

    return-void
.end method


# virtual methods
.method public c()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->b:Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;->b:Lcom/google/android/exoplayer2/source/rtsp/c;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$d;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
