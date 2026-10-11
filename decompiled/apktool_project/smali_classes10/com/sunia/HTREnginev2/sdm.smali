.class public abstract Lcom/sunia/HTREnginev2/sdm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p1, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Unknown JPEG marker: 0x%04x"

    invoke-static {v0, p1, v1}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/sdm;->a:I

    return-void
.end method

.method public static a(ILjava/lang/String;ILjava/io/DataInput;)Lcom/sunia/HTREnginev2/sdm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffdd

    if-eq p0, v0, :cond_1

    const v0, 0xfffe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    invoke-static {p0, p2, p3}, Lcom/sunia/HTREnginev2/qtn;->b(IILjava/io/DataInput;)Lcom/sunia/HTREnginev2/sdm;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1, p3, p2}, Lcom/sunia/HTREnginev2/gd;->c(ILjava/lang/String;Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/gd;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p3, p2}, Lcom/sunia/HTREnginev2/hal;->d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/hal;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p3, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b(Ljava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p3, p2}, Lcom/sunia/HTREnginev2/n0i;->d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/sdm;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0, p3, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e(ILjava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p3, p2}, Lcom/sunia/HTREnginev2/d4e;->b(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/sdm;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p3, p2}, Lcom/sunia/HTREnginev2/cml;->b(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/cml;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xffc9
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xffcd
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xffda
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xffe0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
