.class public final synthetic Lcom/sunia/HTREnginev2/lrj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/filter/NameFilter;

.field public final synthetic b:Lcom/alibaba/fastjson2/filter/NameFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lrj;->a:Lcom/alibaba/fastjson2/filter/NameFilter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lrj;->b:Lcom/alibaba/fastjson2/filter/NameFilter;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lrj;->a:Lcom/alibaba/fastjson2/filter/NameFilter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lrj;->b:Lcom/alibaba/fastjson2/filter/NameFilter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/NameFilter;->b(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
