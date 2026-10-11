.class public final synthetic Lcom/sunia/HTREnginev2/vdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public final synthetic f:Ljava/lang/annotation/Annotation;

.field public final synthetic g:Lcom/alibaba/fastjson2/codec/FieldInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdk;->e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vdk;->f:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vdk;->g:Lcom/alibaba/fastjson2/codec/FieldInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vdk;->e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vdk;->f:Ljava/lang/annotation/Annotation;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdk;->g:Lcom/alibaba/fastjson2/codec/FieldInfo;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
