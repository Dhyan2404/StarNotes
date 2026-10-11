.class public final synthetic Lcom/sunia/HTREnginev2/udk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f:Ljava/lang/annotation/Annotation;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/udk;->e:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/udk;->f:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/udk;->e:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/udk;->f:Ljava/lang/annotation/Annotation;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method
