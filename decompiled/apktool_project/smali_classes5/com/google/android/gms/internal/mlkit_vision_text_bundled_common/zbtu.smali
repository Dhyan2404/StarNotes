.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;


# instance fields
.field final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

.field private zbc:Z

.field private zbd:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbh()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbh()V

    return-void
.end method

.method public static zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;ILjava/lang/Object;)I
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Z

    add-int/2addr p1, p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p0, 0x3f

    shr-long/2addr v0, p0

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p2, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_1

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_2

    :pswitch_4
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;->zba()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto/16 :goto_2

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_6
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    goto :goto_0

    :cond_2
    check-cast p2, [B

    array-length p0, p2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    goto :goto_0

    :pswitch_7
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz p0, :cond_3

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;->zba()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    goto :goto_0

    :cond_3
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)I

    move-result v0

    goto :goto_2

    :pswitch_8
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbo()I

    move-result v0

    goto :goto_2

    :pswitch_9
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p0, :cond_4

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    :goto_0
    add-int v0, p2, p0

    goto :goto_2

    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbC(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_2

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_2

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto :goto_1

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto :goto_2

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto :goto_2

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto :goto_2

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_2

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    :goto_1
    move v0, v1

    :goto_2
    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    const p0, 0x1ea8e13

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    return-object v0
.end method

.method public static zbk(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;->zba()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbg(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbe([BII)V

    return-void

    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbp(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbL(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbg(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbt(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbb(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    return-void

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbL(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zbn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private final zbo(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_3

    instance-of v1, v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    if-eqz v1, :cond_2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    move-result-object p1

    goto :goto_0

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbK()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;->zbk()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    const/4 p0, 0x0

    throw p0

    :cond_4
    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lazy fields must be message-valued"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zbp(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;->zbp()Z

    move-result v3

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz p0, :cond_1

    :goto_0
    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v3
.end method

.method private static final zbq(Ljava/util/Map$Entry;)I
    .locals 6

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbf()Z

    instance-of v0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    const/16 v2, 0x18

    const v3, 0x1ea8e13

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p0

    add-int/2addr p0, p0

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;->zba()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    :goto_0
    add-int/2addr p0, v0

    add-int/2addr p0, v2

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p0

    add-int/2addr p0, p0

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->hashCode()I

    move-result p0

    return p0
.end method

.method public final zbc()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbq(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbq(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;->zba()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    iput-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    return-object v0
.end method

.method public final zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zbg()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuu;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final zbh()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbB()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zba()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbc:Z

    return-void
.end method

.method public final zbi(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbo(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbo(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_2
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-nez v0, :cond_0

    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_3
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    const v0, 0x1ea8e13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbc:Z

    return p0
.end method

.method public final zbm()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbp(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbp(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
