.class public final Lcom/twelvemonkeys/imageio/metadata/iptc/IPTC$Tags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/metadata/iptc/IPTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tags"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(S)Z
    .locals 1

    const/16 v0, 0x105

    if-eq p0, v0, :cond_0

    const/16 v0, 0x132

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x214

    if-eq p0, v0, :cond_0

    const/16 v0, 0x250

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x219
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
