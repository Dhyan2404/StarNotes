.class Lcom/u/u$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u/u;->displayUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "\u06df\u06df\u06e1"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v1

    if-gtz v1, :cond_2

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v1, :cond_0

    const-string v1, "\u06e4\u06e2\u06e4"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-string v0, "AAyd0"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->۟ۤۢۨۤ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/lit16 v2, v2, -0x1d0a

    add-int/2addr v1, v2

    if-ltz v1, :cond_1

    :cond_0
    const-string v1, "\u06e6\u06e0\u06e5"

    :goto_1
    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v1, v2

    const v2, 0x1abba8

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :sswitch_2
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v1, :cond_3

    const/16 v1, 0x1b

    sput v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v1, "\u06e3\u06e5\u06e7"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_3
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/2addr v1, v2

    const v2, 0x1ab695

    xor-int/2addr v1, v2

    goto :goto_0

    :sswitch_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v1, "\u06e3\u06e6\u06e4"

    goto :goto_1

    :sswitch_4
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/2addr v1, v2

    const v2, 0x1aa701

    xor-int/2addr v1, v2

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aa701 -> :sswitch_0
        0x1ab6e1 -> :sswitch_5
        0x1aba26 -> :sswitch_2
        0x1aba65 -> :sswitch_3
        0x1ac16b -> :sswitch_1
        0x1ac90d -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f7ae148    # 0.98f

    const-wide/16 v2, 0x0

    const-string v0, "\u06e7\u06df\u06e7"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v1, v4

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :goto_1
    :sswitch_0
    const-string v0, "\u06e1\u06e3\u06e4"

    :goto_2
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    :sswitch_1
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/2addr v0, v5

    const v5, 0x1ab636

    add-int/2addr v0, v5

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/lit16 v5, v5, 0x16bb

    sub-int/2addr v0, v5

    if-ltz v0, :cond_1

    :cond_0
    const-string v0, "\u06e4\u06e3\u06e7"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e1\u06e6\u06e6"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-static {p2}, Lcom/u/ۣۨۢۤ;->۠ۥۨ۠(Ljava/lang/Object;)I

    move-result v1

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/lit16 v5, v5, 0xd2a

    div-int/2addr v0, v5

    if-eqz v0, :cond_2

    const-string v0, "\u06e2\u06e5\u06e1"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e7\u06e7\u06e3"

    :goto_3
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_3

    const-string v0, "\u06e1\u06e3\u06e6"

    :goto_4
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "\u06e2\u06e5\u06e1"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-static {p1}, Lcom/u/۟ۦۧۡۢ;->ۣ۟ۡۤۡ(Ljava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/u/۟ۦۧۡۢ;->ۦۣۦۦ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/u/۟۟ۥ۟;->ۨ۠ۥۡ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/u/۟ۦۧۡۢ;->۟ۧۧ۟(Ljava/lang/Object;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->۟ۧۡۧ۟(Ljava/lang/Object;)V

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_4

    const-string v0, "\u06e7\u06e7\u06e3"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "\u06e4\u06df\u06e1"

    goto :goto_4

    :sswitch_6
    invoke-static {p1}, Lcom/u/۟ۦۧۡۢ;->ۣ۟ۡۤۡ(Ljava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/u/۟ۦۧۡۢ;->ۦۣۦۦ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/u/۟۟ۥ۟;->ۨ۠ۥۡ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/u/۟ۦۧۡۢ;->۟ۧۧ۟(Ljava/lang/Object;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->۟ۧۡۧ۟(Ljava/lang/Object;)V

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v5, v5, 0x1779

    rem-int/2addr v0, v5

    if-ltz v0, :cond_0

    const/16 v0, 0x35

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e6\u06e1\u06e4"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_5

    const/4 v0, 0x6

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e6\u06e4\u06e0"

    goto :goto_3

    :cond_5
    const-string v0, "\u06e2\u06e5\u06e1"

    goto/16 :goto_2

    :sswitch_8
    const-wide/16 v2, 0x10

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    int-to-long v6, v0

    xor-long/2addr v2, v6

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v0, "\u06e7\u06df\u06e7"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e3\u06e3\u06e3"

    goto/16 :goto_3

    :sswitch_9
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v5, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sub-int/2addr v0, v5

    const v5, 0x1ab95b

    add-int/2addr v0, v5

    goto/16 :goto_0

    :pswitch_1
    :sswitch_a
    const-string v0, "\u06e4\u06e7\u06df"

    goto/16 :goto_2

    :sswitch_b
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_2
    :sswitch_c
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    or-int/2addr v0, v5

    const v5, 0x1aca4a

    add-int/2addr v0, v5

    goto/16 :goto_0

    :sswitch_d
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v5, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/lit16 v5, v5, 0xa7c

    mul-int/2addr v0, v5

    if-gtz v0, :cond_7

    const/16 v0, 0x3f

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e1\u06e1\u06e1"

    goto/16 :goto_2

    :cond_7
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v5, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/2addr v0, v5

    const v5, 0x1ac50f

    xor-int/2addr v0, v5

    goto/16 :goto_0

    :sswitch_e
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_8

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e1\u06e3"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    mul-int/2addr v0, v5

    const v5, 0x18e7c4

    add-int/2addr v0, v5

    goto/16 :goto_0

    :sswitch_f
    return v4

    :sswitch_data_0
    .sparse-switch
        0xdc22 -> :sswitch_0
        0x1aaac5 -> :sswitch_7
        0x1aaf02 -> :sswitch_9
        0x1aaf04 -> :sswitch_c
        0x1aaf61 -> :sswitch_7
        0x1ab2fe -> :sswitch_f
        0x1ab683 -> :sswitch_b
        0x1ab71e -> :sswitch_5
        0x1ab9c6 -> :sswitch_e
        0x1aba48 -> :sswitch_4
        0x1aba62 -> :sswitch_d
        0x1ababc -> :sswitch_2
        0x1ac189 -> :sswitch_a
        0x1ac50f -> :sswitch_3
        0x1ac603 -> :sswitch_8
        0x1ac8eb -> :sswitch_1
        0x1ac947 -> :sswitch_6
        0x1ac949 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
