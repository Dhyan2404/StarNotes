.class public final synthetic Lcom/sunia/HTREnginev2/nrj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/PropertyNamingStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nrj;->a:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nrj;->a:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/NameFilter;->m(Lcom/alibaba/fastjson2/PropertyNamingStrategy;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
