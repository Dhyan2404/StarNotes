.class public final synthetic Lcom/sunia/HTREnginev2/b0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/ValueFilter;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/filter/ValueFilter;

.field public final synthetic b:Lcom/alibaba/fastjson2/filter/ValueFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b0o;->a:Lcom/alibaba/fastjson2/filter/ValueFilter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b0o;->b:Lcom/alibaba/fastjson2/filter/ValueFilter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b0o;->a:Lcom/alibaba/fastjson2/filter/ValueFilter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b0o;->b:Lcom/alibaba/fastjson2/filter/ValueFilter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/ValueFilter;->l(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
