.class public Lcom/github/mikephil/charting/animation/Easing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/animation/Easing$b;,
        Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEasingFunctionFromOption(Lcom/github/mikephil/charting/animation/Easing$EasingOption;)Lcom/github/mikephil/charting/animation/EasingFunction;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/animation/Easing$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->a:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->B:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->A:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->z:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->y:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->x:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->w:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->v:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->u:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->t:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->s:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->r:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->q:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->p:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->o:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->n:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->m:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->l:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->k:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->j:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->i:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->h:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->g:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->f:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->e:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->d:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->c:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->b:Lcom/github/mikephil/charting/animation/EasingFunction;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
