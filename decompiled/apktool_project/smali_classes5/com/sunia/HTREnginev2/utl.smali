.class public final synthetic Lcom/sunia/HTREnginev2/utl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable$EventListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/b$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/b$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/utl;->a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

    return-void
.end method


# virtual methods
.method public final onTransportReady(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/utl;->a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/b$d;->a(Lcom/google/android/exoplayer2/source/rtsp/b$d;Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/RtpDataChannel;)V

    return-void
.end method
