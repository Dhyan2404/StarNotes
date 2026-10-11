.class public Lcom/twelvemonkeys/util/BeanMap$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/BeanMap$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/BeanMap$b;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/twelvemonkeys/util/BeanMap$b;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/BeanMap$b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->b:Lcom/twelvemonkeys/util/BeanMap$b;

    iput-object p2, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->b:Lcom/twelvemonkeys/util/BeanMap$b;

    invoke-static {v0}, Lcom/twelvemonkeys/util/BeanMap$b;->a(Lcom/twelvemonkeys/util/BeanMap$b;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->b:Lcom/twelvemonkeys/util/BeanMap$b;

    invoke-virtual {v1}, Lcom/twelvemonkeys/util/BeanMap$b;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->b:Lcom/twelvemonkeys/util/BeanMap$b;

    iget-object v2, v2, Lcom/twelvemonkeys/util/BeanMap$b;->f:Lcom/twelvemonkeys/util/BeanMap;

    invoke-static {v2}, Lcom/twelvemonkeys/util/BeanMap;->access$300(Lcom/twelvemonkeys/util/BeanMap;)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->a:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write method for property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$b$b;->b:Lcom/twelvemonkeys/util/BeanMap$b;

    invoke-static {p0}, Lcom/twelvemonkeys/util/BeanMap$b;->a(Lcom/twelvemonkeys/util/BeanMap$b;)Ljava/beans/PropertyDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
