.class public Lcom/trans/android/util/XfermodeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCompositeToXfermode(Ljava/awt/AlphaComposite;)Landroid/graphics/Xfermode;
    .locals 1

    .line 6
    invoke-static {p0}, Lsun/java2d/loops/CompositeType;->forAlphaComposite(Ljava/awt/AlphaComposite;)Lsun/java2d/loops/CompositeType;

    move-result-object p0

    .line 7
    sget-object v0, Lsun/java2d/loops/CompositeType;->Clear:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_0

    .line 8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    .line 9
    :cond_0
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_1

    .line 10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lsun/java2d/loops/CompositeType;->Src:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_2

    .line 12
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lsun/java2d/loops/CompositeType;->Dst:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_3

    .line 14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_4

    .line 16
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 17
    :cond_4
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcOver:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_5

    .line 18
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 19
    :cond_5
    sget-object v0, Lsun/java2d/loops/CompositeType;->DstOver:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_6

    .line 20
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 21
    :cond_6
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcIn:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_7

    .line 22
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 23
    :cond_7
    sget-object v0, Lsun/java2d/loops/CompositeType;->DstIn:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_8

    .line 24
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 25
    :cond_8
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcOut:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_9

    .line 26
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 27
    :cond_9
    sget-object v0, Lsun/java2d/loops/CompositeType;->DstOut:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_a

    .line 28
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 29
    :cond_a
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcAtop:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_b

    .line 30
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 31
    :cond_b
    sget-object v0, Lsun/java2d/loops/CompositeType;->DstAtop:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_c

    .line 32
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 33
    :cond_c
    sget-object v0, Lsun/java2d/loops/CompositeType;->AlphaXor:Lsun/java2d/loops/CompositeType;

    if-ne p0, v0, :cond_d

    .line 34
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 35
    :cond_d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 36
    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static convertCompositeToXfermode(Ljava/awt/Composite;)Landroid/graphics/Xfermode;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/awt/AlphaComposite;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/awt/AlphaComposite;

    invoke-static {p0}, Lcom/trans/android/util/XfermodeUtils;->convertCompositeToXfermode(Ljava/awt/AlphaComposite;)Landroid/graphics/Xfermode;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of p0, p0, Lsun/java2d/loops/XORComposite;

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public static convertXfermodeToComposite(Landroid/graphics/Xfermode;)Ljava/awt/AlphaComposite;
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    instance-of v1, p0, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/trans/android/util/XfermodeUtils;->getXfermodeMode(Landroid/graphics/Xfermode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/trans/android/util/XfermodeUtils$1;->$SwitchMap$android$graphics$PorterDuff$Mode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x1

    :goto_0
    :pswitch_a
    invoke-static {v0}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getXfermodeMode(Landroid/graphics/Xfermode;)Landroid/graphics/PorterDuff$Mode;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v2, Landroid/graphics/Xfermode;

    const-string v3, "porterDuffMode"

    invoke-static {v1, v2, p0, v3}, Lcom/onyx/common/util/ReflectUtils;->getFieldSafely(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_7
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_b
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_c
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_f
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    :goto_0
    return-object v0

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
