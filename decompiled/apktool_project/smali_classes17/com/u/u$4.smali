.class Lcom/u/u$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u/u;->displayUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$updateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/u/u$4;->short:[S

    return-void

    :array_0
    .array-data 2
        0x8fds
        0x8f2s
        0x8f8s
        0x8ees
        0x8f3s
        0x8f5s
        0x8f8s
        0x8b2s
        0x8f5s
        0x8f2s
        0x8e8s
        0x8f9s
        0x8f2s
        0x8e8s
        0x8b2s
        0x8fds
        0x8ffs
        0x8e8s
        0x8f5s
        0x8f3s
        0x8f2s
        0x8b2s
        0x8cas
        0x8d5s
        0x8d9s
        0x8cbs
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/u/u$4;->val$updateUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/u/u$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06e0\u06e2"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    return-void

    :sswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06e6\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_0

    const/16 v0, 0x8

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    :cond_0
    const-string v0, "\u06e6\u06e5\u06e3"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    :sswitch_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_2

    const/16 v0, 0x4d

    sput v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v0, "\u06e7\u06e5\u06df"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e1\u06e6\u06e6"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-string v0, "8Ie1ltOvry7HVn"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۟ۧ۟۟(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v0, "\u06e1\u06e6\u06e6"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/2addr v0, v2

    const v2, 0x1ac243

    xor-int/2addr v0, v2

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_4

    const-string v0, "\u06e0\u06e6\u06df"

    goto :goto_1

    :cond_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/2addr v0, v2

    const v2, 0x1ac6ec

    add-int/2addr v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aaf61 -> :sswitch_0
        0x1aba83 -> :sswitch_5
        0x1ac204 -> :sswitch_4
        0x1ac243 -> :sswitch_1
        0x1ac510 -> :sswitch_3
        0x1ac529 -> :sswitch_2
    .end sparse-switch
.end method

.method public static ۣ۟۠ۢۤ()[S
    .locals 5

    const/4 v3, 0x0

    const-string v0, "\u06e3\u06e1\u06e8"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v3

    move-object v2, v3

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06df\u06e4"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-ltz v0, :cond_1

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v4

    const v4, -0x1aa945

    xor-int/2addr v0, v4

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x4e

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e2\u06e7\u06e2"

    move-object v2, v3

    goto :goto_1

    :cond_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/2addr v0, v2

    const v2, 0x1aba81

    add-int/2addr v0, v2

    move-object v2, v3

    goto :goto_0

    :cond_1
    :sswitch_3
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/2addr v0, v4

    const v4, 0xddb5

    xor-int/2addr v0, v4

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v2, v2, -0x1b57

    rem-int/2addr v0, v2

    if-ltz v0, :cond_2

    const/16 v0, 0x25

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06df\u06e3\u06e0"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move-object v2, v1

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/2addr v0, v2

    const v2, 0xdcdf

    xor-int/2addr v0, v2

    move-object v2, v1

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/lit16 v4, v4, -0x50e

    add-int/2addr v0, v4

    if-ltz v0, :cond_3

    const-string v0, "\u06e3\u06e1\u06e8"

    :goto_2
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "\u06e1\u06e2\u06df"

    goto :goto_2

    :sswitch_6
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_4

    const-string v0, "\u06e1\u06e0\u06e3"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/2addr v0, v4

    const v4, -0xdc48

    xor-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    or-int/lit16 v4, v4, -0x275

    add-int/2addr v0, v4

    if-gtz v0, :cond_5

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e0\u06df\u06e7"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sub-int/2addr v0, v4

    const v4, 0x1ab846

    add-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_8
    sget-object v1, Lcom/u/u$4;->short:[S

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_6

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e8\u06e6\u06e1"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e1\u06e1\u06e6"

    goto/16 :goto_1

    :sswitch_9
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc5f -> :sswitch_0
        0xdcdf -> :sswitch_9
        0x1aa77c -> :sswitch_3
        0x1aaac6 -> :sswitch_8
        0x1aaec6 -> :sswitch_4
        0x1aaede -> :sswitch_6
        0x1ab33d -> :sswitch_6
        0x1ab64a -> :sswitch_1
        0x1ab9c9 -> :sswitch_2
        0x1aba81 -> :sswitch_5
        0x1ac9a3 -> :sswitch_7
    .end sparse-switch
.end method

.method public static ۟ۡۡۡۢ(Ljava/lang/Object;)Landroid/app/Activity;
    .locals 5

    const/4 v3, 0x0

    const-string v0, "\u06e1\u06e0\u06e1"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v3

    move-object v2, v3

    move v4, v0

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e1\u06e5"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    :sswitch_1
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/lit16 v4, v4, 0x26b9

    sub-int/2addr v0, v4

    if-eqz v0, :cond_1

    const-string v0, "\u06e4\u06e6\u06df"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e2\u06e3\u06e0"

    goto :goto_1

    :sswitch_2
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    xor-int/lit16 v2, v2, 0xe79

    xor-int/2addr v0, v2

    if-gtz v0, :cond_2

    const/16 v0, 0x50

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06df\u06e4\u06df"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move-object v2, v1

    move v4, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    :goto_2
    const-string v1, "\u06df\u06e7\u06df"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    move-object v0, p0

    check-cast v0, Lcom/u/u$4;

    iget-object v0, v0, Lcom/u/u$4;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    goto :goto_2

    :sswitch_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v0, :cond_3

    const-string v0, "\u06e2\u06e3\u06e0"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    mul-int/2addr v0, v4

    const v4, 0x175858

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sub-int/2addr v0, v4

    const v4, 0x1aa999

    xor-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v4, v4, -0xc17

    mul-int/2addr v0, v4

    if-gtz v0, :cond_4

    const-string v0, "\u06e1\u06e0\u06df"

    :goto_3
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "\u06df\u06e7\u06df"

    goto :goto_3

    :sswitch_7
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/lit16 v2, v2, 0x255c

    or-int/2addr v0, v2

    if-ltz v0, :cond_6

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-object v0, v1

    move-object v2, v3

    :cond_5
    const-string v1, "\u06e5\u06e8\u06e1"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v0, v2

    const v2, -0x1accfa

    xor-int/2addr v0, v2

    move-object v2, v3

    move v4, v0

    goto/16 :goto_0

    :sswitch_8
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/lit16 v4, v4, 0x1238

    xor-int/2addr v0, v4

    if-gtz v0, :cond_7

    const-string v0, "\u06e0\u06e2\u06e0"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/2addr v0, v4

    const v4, 0x1ab055

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_9
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aa79a -> :sswitch_0
        0x1aa7f7 -> :sswitch_9
        0x1aab5f -> :sswitch_3
        0x1aaea2 -> :sswitch_5
        0x1ab286 -> :sswitch_6
        0x1ab2bf -> :sswitch_4
        0x1abae3 -> :sswitch_8
        0x1abe84 -> :sswitch_1
        0x1abe9e -> :sswitch_2
        0x1ac16c -> :sswitch_6
        0x1ac50f -> :sswitch_7
    .end sparse-switch
.end method

.method public static ۦۧۢۥ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const-string v0, "\u06df\u06e3\u06e8"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v3

    move-object v2, v3

    move v4, v0

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "\u06e7\u06e1\u06e3"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v0, 0xd

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e6\u06e2\u06e7"

    :goto_2
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/2addr v0, v4

    const v4, 0x1aa784

    xor-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/lit16 v2, v2, -0x1674

    div-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x4a

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e8\u06e6\u06e7"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move-object v2, v1

    move v4, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/2addr v0, v2

    const v2, 0x1ac508

    add-int/2addr v0, v2

    move-object v2, v1

    move v4, v0

    goto :goto_0

    :sswitch_3
    move-object v0, p0

    check-cast v0, Lcom/u/u$4;

    iget-object v0, v0, Lcom/u/u$4;->val$updateUrl:Ljava/lang/String;

    :goto_3
    const-string v1, "\u06df\u06e7\u06e1"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_2

    const-string v0, "\u06e8\u06e8\u06e2"

    goto :goto_1

    :cond_2
    const-string v0, "\u06e7\u06e5\u06e7"

    :goto_4
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x7

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e6\u06df\u06df"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_3
    const-string v0, "\u06e7\u06df\u06e1"

    goto :goto_2

    :sswitch_6
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v4, v4, 0x1698

    div-int/2addr v0, v4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e3\u06e0\u06e3"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "\u06e8\u06e0\u06e4"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/lit16 v2, v2, -0x1add

    or-int/2addr v0, v2

    if-ltz v0, :cond_5

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-object v0, v1

    move-object v2, v3

    goto :goto_3

    :cond_5
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/2addr v0, v2

    const v2, 0x1acb2c

    add-int/2addr v0, v2

    move-object v2, v3

    move v4, v0

    goto/16 :goto_0

    :cond_6
    :sswitch_8
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_7

    const-string v0, "\u06e7\u06e6\u06e1"

    goto :goto_4

    :cond_7
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/2addr v0, v4

    const v4, 0x1aae7e

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_9
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aa784 -> :sswitch_0
        0x1aa7f9 -> :sswitch_2
        0x1aae81 -> :sswitch_4
        0x1ab626 -> :sswitch_1
        0x1ac509 -> :sswitch_9
        0x1ac549 -> :sswitch_3
        0x1ac56c -> :sswitch_5
        0x1ac5c9 -> :sswitch_7
        0x1ac8ec -> :sswitch_5
        0x1ac9a9 -> :sswitch_6
        0x1ac9e2 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    const-string v0, "\u06e1\u06e8"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v3

    move-object v4, v1

    move-object v2, v1

    move-object v0, v1

    :goto_0
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/u/u$4;->ۦۧۢۥ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v2, :cond_2

    const/16 v2, 0x3d

    sput v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v2, "\u06e1\u06e8"

    invoke-static {v2}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v3

    move-object v2, v1

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/u/u$4;->۟ۡۡۡۢ(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "\u06e3\u06e1\u06df"

    :goto_1
    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto :goto_0

    :sswitch_2
    invoke-static {v2}, Lcom/u/۟۟ۥ۟;->ۥۦ۟ۨ(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    :goto_2
    const-string v1, "\u06e8\u06df\u06e5"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "\u06e6\u06e5\u06e2"

    goto :goto_1

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/u/u$4;->ۣ۟۠ۢۤ()[S

    move-result-object v1

    const/4 v3, 0x0

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v5, v5, -0x1ad

    const/16 v6, 0x89c

    invoke-static {v1, v3, v5, v6}, Lcom/u/ۣ۟ۦ۟;->۟ۦۦۣۢ([SIII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    :sswitch_4
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_1

    const/16 v1, 0x1f

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06e2\u06e6\u06df"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    const-string v1, "\u06e8\u06e0\u06e6"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_2
    const-string v2, "\u06e4\u06e2\u06e8"

    move-object v3, v2

    :goto_3
    invoke-static {v3}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v3

    move-object v2, v1

    goto :goto_0

    :sswitch_5
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v3, v3, 0x255a

    mul-int/2addr v1, v3

    if-ltz v1, :cond_3

    const-string v1, "\u06e8\u06e6\u06e8"

    goto :goto_1

    :cond_3
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    or-int/2addr v1, v3

    const v3, -0xdd22

    xor-int/2addr v1, v3

    move v3, v1

    goto/16 :goto_0

    :cond_4
    :sswitch_6
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v3, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v3, v3, -0x13ed

    add-int/2addr v1, v3

    if-gtz v1, :cond_5

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v3, "\u06e0\u06e1\u06e6"

    move-object v1, v2

    goto :goto_3

    :cond_5
    const-string v1, "\u06e3\u06e1\u06df"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/u/u$4;->ۦۧۢۥ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۤۤۧ(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v4, v4, -0x16d4

    mul-int/2addr v3, v4

    if-ltz v3, :cond_6

    const/16 v3, 0xe

    sput v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v3, "\u06e3\u06e1\u06df"

    invoke-static {v3}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v3

    move-object v4, v1

    goto/16 :goto_0

    :cond_6
    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v3, v4

    const v4, 0x1abf52

    add-int/2addr v3, v4

    move-object v4, v1

    goto/16 :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc27 -> :sswitch_0
        0x1ab300 -> :sswitch_6
        0x1ab31b -> :sswitch_5
        0x1ab641 -> :sswitch_8
        0x1ab9e8 -> :sswitch_3
        0x1aba2a -> :sswitch_4
        0x1ac203 -> :sswitch_7
        0x1ac8ce -> :sswitch_1
        0x1ac8ee -> :sswitch_2
    .end sparse-switch
.end method
