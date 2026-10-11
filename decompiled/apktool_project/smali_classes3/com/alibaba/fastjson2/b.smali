.class public Lcom/alibaba/fastjson2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/alibaba/fastjson2/JSONReader;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/JSONPath;->h:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/b;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/b;->c:Z

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "not support \'-\'"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/alibaba/fastjson2/JSONPath;
    .locals 5

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/b;->c:Z

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/alibaba/fastjson2/JSONPath;->f:Lcom/alibaba/fastjson2/JSONPath;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v3, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v3, v1, :cond_8

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/b;->c()Lcom/alibaba/fastjson2/c;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/b;->b()Lcom/alibaba/fastjson2/c;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7a

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x5a

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/b;->c()Lcom/alibaba/fastjson2/c;

    move-result-object v2

    goto :goto_1

    :cond_6
    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    sget-object v2, Lcom/alibaba/fastjson2/c$a;->a:Lcom/alibaba/fastjson2/c$a;

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONPath;

    iget-object p0, p0, Lcom/alibaba/fastjson2/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, v2}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v1
.end method

.method public final b()Lcom/alibaba/fastjson2/c;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    iget-object v0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    const-string v3, "TODO : "

    if-eq v1, v2, :cond_3

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    const-string v2, "not support range index \':\'"

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alibaba/fastjson2/d;->c(I)Lcom/alibaba/fastjson2/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support *"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/alibaba/fastjson2/e;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/e;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    iget-object p0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    const-string v1, "jsonpath syntax error"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support multi name"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lcom/alibaba/fastjson2/c;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/alibaba/fastjson2/b;->b:Lcom/alibaba/fastjson2/JSONReader;

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x28

    if-eq p0, v3, :cond_0

    new-instance p0, Lcom/alibaba/fastjson2/e;

    invoke-direct {p0, v2, v0, v1}, Lcom/alibaba/fastjson2/e;-><init>(Ljava/lang/String;J)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support jsonpath function"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support jsonpath .."

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support *"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
