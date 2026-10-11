.class public final synthetic Lcom/sunia/HTREnginev2/uod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/vod;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/vod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uod;->a:Lcom/sunia/HTREnginev2/vod;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uod;->a:Lcom/sunia/HTREnginev2/vod;

    check-cast p1, Lcom/sunia/HTREnginev2/vod$c;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/vod;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
