.class public Lcom/sunia/HTREnginev2/zfi;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;->getIdentifier()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "Caption"

    return-object p0

    :sswitch_1
    const-string p0, "CopyrightNotice"

    return-object p0

    :sswitch_2
    const-string p0, "Source"

    return-object p0

    :sswitch_3
    const-string p0, "Country"

    return-object p0

    :sswitch_4
    const-string p0, "CountryCode"

    return-object p0

    :sswitch_5
    const-string p0, "StateProvince"

    return-object p0

    :sswitch_6
    const-string p0, "SubLocation"

    return-object p0

    :sswitch_7
    const-string p0, "City"

    return-object p0

    :sswitch_8
    const-string p0, "ByLineTitle"

    return-object p0

    :sswitch_9
    const-string p0, "ByLine"

    return-object p0

    :sswitch_a
    const-string p0, "DigitalCreationTime"

    return-object p0

    :sswitch_b
    const-string p0, "DigitalCreationDate"

    return-object p0

    :sswitch_c
    const-string p0, "TimeCreated"

    return-object p0

    :sswitch_d
    const-string p0, "DateCreated"

    return-object p0

    :sswitch_e
    const-string p0, "Instructions"

    return-object p0

    :sswitch_f
    const-string p0, "Keywords"

    return-object p0

    :sswitch_10
    const-string p0, "RecordVersion"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_10
        0x219 -> :sswitch_f
        0x228 -> :sswitch_e
        0x237 -> :sswitch_d
        0x23c -> :sswitch_c
        0x23e -> :sswitch_b
        0x23f -> :sswitch_a
        0x250 -> :sswitch_9
        0x255 -> :sswitch_8
        0x25a -> :sswitch_7
        0x25c -> :sswitch_6
        0x25f -> :sswitch_5
        0x264 -> :sswitch_4
        0x265 -> :sswitch_3
        0x273 -> :sswitch_2
        0x274 -> :sswitch_1
        0x278 -> :sswitch_0
    .end sparse-switch
.end method

.method public getNativeIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;->getIdentifier()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shr-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d:%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
