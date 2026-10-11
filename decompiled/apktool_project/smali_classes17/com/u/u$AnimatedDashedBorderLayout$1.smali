.class Lcom/u/u$AnimatedDashedBorderLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u/u$AnimatedDashedBorderLayout;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/u/u$AnimatedDashedBorderLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/u/u$AnimatedDashedBorderLayout;)V
    .locals 3

    iput-object p1, p0, Lcom/u/u$AnimatedDashedBorderLayout$1;->this$0:Lcom/u/u$AnimatedDashedBorderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "\u06e7\u06e3\u06e0"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :cond_0
    :sswitch_0
    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v2, v2, 0x19ea

    div-int/2addr v1, v2

    if-eqz v1, :cond_1

    const-string v1, "\u06e6\u06df"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v1

    if-gtz v1, :cond_0

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/2addr v1, v2

    const v2, 0x1ac981    # 2.460009E-39f

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/2addr v1, v2

    const v2, 0x1ac204

    add-int/2addr v1, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "xixm6QWaTEhl"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->۟ۤۢۨۤ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/lit16 v2, v2, -0x1aa

    add-int/2addr v1, v2

    if-ltz v1, :cond_2

    const-string v1, "\u06e2\u06e2\u06e1"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_2
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    rem-int/2addr v1, v2

    const v2, 0x1abee8

    xor-int/2addr v1, v2

    goto :goto_0

    :sswitch_3
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v2, v2, -0x1107

    div-int/2addr v1, v2

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v1, "\u06e2\u06e3"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_3
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/2addr v1, v2

    const v2, 0x1ac687

    add-int/2addr v1, v2

    goto :goto_0

    :sswitch_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/lit16 v2, v2, -0x1c61

    sub-int/2addr v1, v2

    if-ltz v1, :cond_4

    const/16 v1, 0x43

    sput v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    :cond_4
    const-string v1, "\u06e6\u06e5\u06e4"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    goto/16 :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1ab242 -> :sswitch_0
        0x1ab2a1 -> :sswitch_3
        0x1abe9c -> :sswitch_4
        0x1ac205 -> :sswitch_5
        0x1ac584 -> :sswitch_1
        0x1ac908 -> :sswitch_2
    .end sparse-switch
.end method

.method public static ۟ۤۢۦۣ(Ljava/lang/Object;)Lcom/u/u$AnimatedDashedBorderLayout;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e5\u06e8\u06e2"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    move v4, v0

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout$1;

    iget-object v0, v0, Lcom/u/u$AnimatedDashedBorderLayout$1;->this$0:Lcom/u/u$AnimatedDashedBorderLayout;

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v1, :cond_6

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    const-string v1, "\u06e5\u06e8\u06e2"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/lit16 v4, v4, -0xbc0

    sub-int/2addr v0, v4

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06df\u06e0\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/2addr v0, v4

    const v4, 0x1abcb5

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/2addr v0, v4

    const v4, -0x1aa987

    xor-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v0, "\u06e6\u06e3\u06e7"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v2

    move v4, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/2addr v0, v3

    const v3, -0x1ac563

    xor-int/2addr v0, v3

    move-object v3, v2

    move v4, v0

    goto :goto_0

    :cond_2
    :sswitch_4
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e2\u06e5\u06e3"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/2addr v0, v4

    const v4, 0x16fcff

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_4

    const-string v0, "\u06e0\u06e8\u06e6"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v1

    move v4, v0

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v3, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sub-int/2addr v0, v3

    const v3, 0x1ac3e1

    xor-int/2addr v0, v3

    move-object v3, v1

    move v4, v0

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "\u06df\u06e5\u06e3"

    goto :goto_1

    :sswitch_7
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_5

    const-string v0, "\u06e8\u06df\u06e7"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    or-int/2addr v0, v4

    const v4, 0x1ac657

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :cond_6
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v1, v4

    const v4, 0x1aabe3

    add-int/2addr v4, v1

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_8
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sub-int/2addr v0, v4

    const v4, 0x1ac1ca

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_9
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1aa7bd -> :sswitch_0
        0x1aabde -> :sswitch_5
        0x1aaee3 -> :sswitch_3
        0x1aaf23 -> :sswitch_1
        0x1abe9f -> :sswitch_6
        0x1ac1ca -> :sswitch_9
        0x1ac1e8 -> :sswitch_4
        0x1ac207 -> :sswitch_7
        0x1ac56a -> :sswitch_8
        0x1ac8d0 -> :sswitch_8
        0x1ac9e4 -> :sswitch_2
    .end sparse-switch
.end method

.method public static ۠ۤۨۤ(Ljava/lang/Object;F)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "\u06e3\u06e6\u06df"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    :goto_0
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v2, "\u06e3\u06e4\u06e6"

    move-object v0, v1

    :goto_1
    invoke-static {v2}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v2

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/lit16 v2, v2, -0x1ca8

    mul-int/2addr v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e4\u06df\u06e1"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "\u06e3\u06e2\u06e5"

    move-object v0, v1

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v0

    if-gtz v0, :cond_3

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v2, v2, -0x15bd

    or-int/2addr v0, v2

    if-ltz v0, :cond_1

    const-string v0, "\u06e3\u06e6\u06df"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v2, "\u06e4\u06df\u06e1"

    move-object v0, v1

    goto :goto_1

    :sswitch_3
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    invoke-static {v0, p1}, Lcom/u/u$AnimatedDashedBorderLayout;->-$$Nest$fputphase(Lcom/u/u$AnimatedDashedBorderLayout;F)V

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/2addr v0, v2

    const v2, 0x1c731e

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v2, v2, -0x124b

    mul-int/2addr v0, v2

    if-ltz v0, :cond_2

    const/16 v0, 0x36

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e0\u06e0\u06e7"

    :goto_2
    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e7\u06e7\u06e2"

    goto :goto_2

    :sswitch_5
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/2addr v0, v2

    const v2, 0x1aba1b

    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :cond_3
    :sswitch_6
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    xor-int/lit16 v2, v2, -0x240c

    rem-int/2addr v0, v2

    if-ltz v0, :cond_4

    const/16 v0, 0x5a

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e3\u06e3\u06e4"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sub-int/2addr v0, v2

    const v2, 0x1aa784

    xor-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v0

    if-gtz v0, :cond_5

    const/16 v0, 0x47

    sput v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v0, "\u06e5\u06e3\u06df"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/2addr v0, v2

    const v2, 0x1ac202

    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :cond_6
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/2addr v0, v2

    const v2, 0x1aa69c

    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :cond_7
    :sswitch_8
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/lit16 v2, v2, 0x416

    mul-int/2addr v0, v2

    if-gtz v0, :cond_8

    const/16 v0, 0x35

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e6\u06df\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "\u06e5\u06e3\u06df"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "OzldT"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->۟ۤۢۨۤ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/lit16 v2, v2, 0x21ed

    mul-int/2addr v1, v2

    if-gtz v1, :cond_9

    const-string v1, "\u06df\u06e3\u06e8"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v2

    move-object v1, v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "\u06e2\u06e6"

    move-object v2, v1

    goto/16 :goto_1

    :sswitch_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc44 -> :sswitch_0
        0x1aa784 -> :sswitch_a
        0x1ab666 -> :sswitch_4
        0x1ab6a5 -> :sswitch_6
        0x1ab6dc -> :sswitch_7
        0x1ab9c6 -> :sswitch_9
        0x1aba23 -> :sswitch_5
        0x1abe01 -> :sswitch_1
        0x1ac203 -> :sswitch_3
        0x1ac5e4 -> :sswitch_8
        0x1ac602 -> :sswitch_2
        0x1ac8ec -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "\u06e2\u06e2\u06e8"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout$1;->۟ۤۢۦۣ(Ljava/lang/Object;)Lcom/u/u$AnimatedDashedBorderLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->ۣ۟۠ۢۥ(Ljava/lang/Object;)V

    const-string v0, "\u06e7\u06e4\u06e4"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "\u06e7\u06e1\u06e5"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "\u06e2\u06e2\u06e8"

    goto :goto_1

    :sswitch_2
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout$1;->۟ۤۢۦۣ(Ljava/lang/Object;)Lcom/u/u$AnimatedDashedBorderLayout;

    move-result-object v1

    invoke-static {p1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۤۡ۟(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۥۧۡۨ(Ljava/lang/Object;)F

    move-result v0

    neg-float v0, v0

    invoke-static {v1, v0}, Lcom/u/u$AnimatedDashedBorderLayout$1;->۠ۤۨۤ(Ljava/lang/Object;F)V

    const-string v0, "\u06e1\u06e8\u06e1"

    goto :goto_1

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1aaf9a -> :sswitch_0
        0x1ab2a8 -> :sswitch_2
        0x1ac240 -> :sswitch_1
        0x1ac5a7 -> :sswitch_3
    .end sparse-switch
.end method
