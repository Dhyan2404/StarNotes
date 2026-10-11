.class public final synthetic Lcom/sunia/HTREnginev2/j7k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

.field public final synthetic f:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic g:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic h:Ljava/lang/Class;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/Class;

.field public final synthetic k:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic l:I

.field public final synthetic m:Ljava/util/Map;

.field public final synthetic n:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j7k;->e:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j7k;->f:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j7k;->g:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/j7k;->h:Ljava/lang/Class;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/j7k;->i:Ljava/lang/String;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/j7k;->j:Ljava/lang/Class;

    iput-object p7, p0, Lcom/sunia/HTREnginev2/j7k;->k:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput p8, p0, Lcom/sunia/HTREnginev2/j7k;->l:I

    iput-object p9, p0, Lcom/sunia/HTREnginev2/j7k;->m:Ljava/util/Map;

    iput-object p10, p0, Lcom/sunia/HTREnginev2/j7k;->n:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j7k;->e:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/j7k;->f:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/j7k;->g:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/j7k;->h:Ljava/lang/Class;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/j7k;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/j7k;->j:Ljava/lang/Class;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/j7k;->k:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget v7, p0, Lcom/sunia/HTREnginev2/j7k;->l:I

    iget-object v8, p0, Lcom/sunia/HTREnginev2/j7k;->m:Ljava/util/Map;

    iget-object v9, p0, Lcom/sunia/HTREnginev2/j7k;->n:Ljava/lang/reflect/Type;

    move-object v10, p1

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-static/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->d(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V

    return-void
.end method
