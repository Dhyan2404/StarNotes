.class public Lcom/sunia/HTREnginev2/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "PlainTextConverter"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/HTREnginev2/d0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/HTREnginev2/d0;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/d0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/h;

    const/16 v1, 0x28

    const/16 v2, 0x29

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    const-string v0, ")/("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v0, :cond_2

    const-string v0, "\u221a("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :cond_2
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/j;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    const-string v0, ")\u221a("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :cond_3
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/o;

    const-string v1, "_("

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_4
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/q;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    const-string v0, "^("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/p;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    const-string v0, ")^("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v0;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/io/Writer;)V

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method
