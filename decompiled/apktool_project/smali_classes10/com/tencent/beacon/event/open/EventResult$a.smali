.class public final Lcom/tencent/beacon/event/open/EventResult$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/open/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(I)Lcom/tencent/beacon/event/open/EventResult;
    .locals 4

    const-wide/16 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1
    :pswitch_1
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "sampled by user."

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 2
    :pswitch_2
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "not init LogIDGenerator"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_3
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "event code isEmpty!"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_4
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "event params length > 45K!"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_5
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "insert event to db error!"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_6
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "event report not enable!"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_7
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "sampled by svr rate (false)."

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_8
    new-instance v2, Lcom/tencent/beacon/event/open/EventResult;

    const-string v3, "not allowed in strategy (false)."

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(J)Lcom/tencent/beacon/event/open/EventResult;
    .locals 3

    .line 9
    new-instance v0, Lcom/tencent/beacon/event/open/EventResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    return-object v0
.end method
