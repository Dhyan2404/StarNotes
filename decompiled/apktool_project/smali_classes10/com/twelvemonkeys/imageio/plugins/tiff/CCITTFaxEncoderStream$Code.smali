.class public Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Code"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->a:I

    .line 4
    iput p2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream$Code;-><init>(II)V

    return-void
.end method
