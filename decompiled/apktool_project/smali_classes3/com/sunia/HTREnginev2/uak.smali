.class public final synthetic Lcom/sunia/HTREnginev2/uak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic f:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic g:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uak;->e:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uak;->f:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/uak;->g:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uak;->e:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uak;->f:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uak;->g:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->d(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method
