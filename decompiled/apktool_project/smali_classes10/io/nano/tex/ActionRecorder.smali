.class final Lio/nano/tex/ActionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nano/tex/ActionRecorder$Action;
    }
.end annotation


# static fields
.field private static final ACT_drawChar:B = 0x8t

.field private static final ACT_drawLine:B = 0xat

.field private static final ACT_drawRect:B = 0xbt

.field private static final ACT_drawRoundRect:B = 0xdt

.field private static final ACT_drawText:B = 0x9t

.field private static final ACT_fillRect:B = 0xct

.field private static final ACT_fillRoundRect:B = 0xet

.field private static final ACT_reset:B = 0x7t

.field private static final ACT_rotate:B = 0x6t

.field private static final ACT_scale:B = 0x5t

.field private static final ACT_setColor:B = 0x1t

.field private static final ACT_setFont:B = 0x0t

.field private static final ACT_setStroke:B = 0x3t

.field private static final ACT_setStrokeWidth:B = 0x2t

.field private static final ACT_translate:B = 0x4t

.field private static final TAG:Ljava/lang/String; = "ActionRecorder"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nano/tex/ActionRecorder$Action;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Lio/nano/tex/ActionRecorder$Action;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/nano/tex/ActionRecorder;->actions:Ljava/util/List;

    new-instance v0, Lio/nano/tex/ActionRecorder$Action;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/nano/tex/ActionRecorder$Action;-><init>(BLjava/lang/Object;[F)V

    iput-object v0, p0, Lio/nano/tex/ActionRecorder;->origin:Lio/nano/tex/ActionRecorder$Action;

    iget-object p0, p0, Lio/nano/tex/ActionRecorder;->actions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private play(Lio/nano/tex/Graphics2D;Lio/nano/tex/ActionRecorder$Action;)V
    .locals 13

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-byte p0, p2, Lio/nano/tex/ActionRecorder$Action;->action:B

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget v7, p0, v5

    aget v8, p0, v4

    aget v9, p0, v3

    aget v10, p0, v2

    aget v11, p0, v1

    aget v12, p0, v0

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lio/nano/tex/Graphics2D;->fillRoundRect(FFFFFF)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget v7, p0, v5

    aget v8, p0, v4

    aget v9, p0, v3

    aget v10, p0, v2

    aget v11, p0, v1

    aget v12, p0, v0

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lio/nano/tex/Graphics2D;->drawRoundRect(FFFFFF)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget v0, p0, v4

    aget v1, p0, v3

    aget p0, p0, v2

    invoke-virtual {p1, p2, v0, v1, p0}, Lio/nano/tex/Graphics2D;->fillRect(FFFF)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget v0, p0, v4

    aget v1, p0, v3

    aget p0, p0, v2

    invoke-virtual {p1, p2, v0, v1, p0}, Lio/nano/tex/Graphics2D;->drawRect(FFFF)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget v0, p0, v4

    aget v1, p0, v3

    aget p0, p0, v2

    invoke-virtual {p1, p2, v0, v1, p0}, Lio/nano/tex/Graphics2D;->drawLine(FFFF)V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->arg:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p2, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget v0, p2, v5

    aget p2, p2, v4

    invoke-virtual {p1, p0, v0, p2}, Lio/nano/tex/Graphics2D;->drawText(Ljava/lang/String;FF)V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    float-to-int p2, p2

    int-to-char p2, p2

    aget v0, p0, v4

    aget p0, p0, v3

    invoke-virtual {p1, p2, v0, p0}, Lio/nano/tex/Graphics2D;->drawChar(CFF)V

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-virtual {p1}, Lio/nano/tex/Graphics2D;->reset()V

    goto :goto_0

    .line 12
    :pswitch_8
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget v0, p0, v4

    aget p0, p0, v3

    invoke-virtual {p1, p2, v0, p0}, Lio/nano/tex/Graphics2D;->rotate(FFF)V

    goto :goto_0

    .line 13
    :pswitch_9
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget p0, p0, v4

    invoke-virtual {p1, p2, p0}, Lio/nano/tex/Graphics2D;->scale(FF)V

    goto :goto_0

    .line 14
    :pswitch_a
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget p0, p0, v4

    invoke-virtual {p1, p2, p0}, Lio/nano/tex/Graphics2D;->translate(FF)V

    goto :goto_0

    .line 15
    :pswitch_b
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p2, p0, v5

    aget v0, p0, v4

    aget v1, p0, v3

    float-to-int v1, v1

    aget p0, p0, v2

    float-to-int p0, p0

    invoke-virtual {p1, p2, v0, v1, p0}, Lio/nano/tex/Graphics2D;->setStroke(FFII)V

    goto :goto_0

    .line 16
    :pswitch_c
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p0, p0, v5

    invoke-virtual {p1, p0}, Lio/nano/tex/Graphics2D;->setStrokeWidth(F)V

    goto :goto_0

    .line 17
    :pswitch_d
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->args:[F

    aget p0, p0, v5

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Lio/nano/tex/Graphics2D;->setColor(I)V

    goto :goto_0

    .line 18
    :pswitch_e
    iget-object p0, p2, Lio/nano/tex/ActionRecorder$Action;->arg:Ljava/lang/Object;

    check-cast p0, Lio/nano/tex/Font;

    invoke-virtual {p1, p0}, Lio/nano/tex/Graphics2D;->setFont(Lio/nano/tex/Font;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public play(Lio/nano/tex/Graphics2D;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/nano/tex/ActionRecorder;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nano/tex/ActionRecorder$Action;

    .line 2
    invoke-direct {p0, p1, v1}, Lio/nano/tex/ActionRecorder;->play(Lio/nano/tex/Graphics2D;Lio/nano/tex/ActionRecorder$Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public record(ILjava/lang/Object;[F)V
    .locals 1

    new-instance v0, Lio/nano/tex/ActionRecorder$Action;

    int-to-byte p1, p1

    invoke-direct {v0, p1, p2, p3}, Lio/nano/tex/ActionRecorder$Action;-><init>(BLjava/lang/Object;[F)V

    iget-object p0, p0, Lio/nano/tex/ActionRecorder;->actions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget-object p0, p0, Lio/nano/tex/ActionRecorder;->origin:Lio/nano/tex/ActionRecorder$Action;

    iget-object p0, p0, Lio/nano/tex/ActionRecorder$Action;->args:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-void
.end method
