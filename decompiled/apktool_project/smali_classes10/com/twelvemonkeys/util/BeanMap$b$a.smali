.class public Lcom/twelvemonkeys/util/BeanMap$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/BeanMap$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/BeanMap$b;->getValue()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/twelvemonkeys/util/BeanMap$b;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/BeanMap$b;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/BeanMap$b$a;->a:Lcom/twelvemonkeys/util/BeanMap$b;

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

    iget-object v0, p0, Lcom/twelvemonkeys/util/BeanMap$b$a;->a:Lcom/twelvemonkeys/util/BeanMap$b;

    invoke-static {v0}, Lcom/twelvemonkeys/util/BeanMap$b;->a(Lcom/twelvemonkeys/util/BeanMap$b;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$b$a;->a:Lcom/twelvemonkeys/util/BeanMap$b;

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$b;->f:Lcom/twelvemonkeys/util/BeanMap;

    invoke-static {p0}, Lcom/twelvemonkeys/util/BeanMap;->access$300(Lcom/twelvemonkeys/util/BeanMap;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No getter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/util/BeanMap$b$a;->a:Lcom/twelvemonkeys/util/BeanMap$b;

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
