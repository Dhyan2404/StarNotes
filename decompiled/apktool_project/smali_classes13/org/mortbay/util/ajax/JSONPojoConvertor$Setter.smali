.class public Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSONPojoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setter"
.end annotation


# instance fields
.field protected _componentType:Ljava/lang/Class;

.field protected _method:Ljava/lang/reflect/Method;

.field protected _numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field protected _propertyName:Ljava/lang/String;

.field protected _type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_propertyName:Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-static {}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->a()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    invoke-static {}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->a()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getComponentType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    return-object p0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public getNumberType()Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    return-object p0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_propertyName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    sget-object p2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->NULL_ARG:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->invokeObject(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public invokeObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-eqz v0, :cond_0

    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/Number;

    invoke-interface {v0, p2}, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;->getActualValue(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    :try_start_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    aget-object v4, v0, v1

    check-cast v4, Ljava/lang/Number;

    invoke-interface {v3, v4}, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;->getActualValue(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public isPropertyNumber()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
