.class public final Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static className:Ljava/lang/String;

.field public static clazz:Ljava/lang/Class;

.field public static methodName:Ljava/lang/String;

.field public static nArgs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findConstructor([Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 10

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    sget v6, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->nArgs:I

    if-ne v5, v6, :cond_1

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_0
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v2

    move v5, v3

    :goto_1
    if-ge v3, v0, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move v8, v2

    :goto_2
    sget v9, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->nArgs:I

    if-ge v8, v9, :cond_5

    aget-object v5, p0, v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aget-object v9, v7, v8

    if-ne v5, v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v2

    :cond_5
    if-eqz v5, :cond_6

    return-object v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v1

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONSTRUCTOR_NOT_FOUND_ERR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findMethods([Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 10

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->methodName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    sget v6, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->nArgs:I

    if-ne v5, v6, :cond_1

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_0
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v2

    move v5, v3

    :goto_1
    if-ge v3, v0, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move v8, v2

    :goto_2
    sget v9, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->nArgs:I

    if-ge v8, v9, :cond_6

    aget-object v5, p0, v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aget-object v9, v7, v8

    if-ne v5, v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    aget-object v5, v7, v8

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, v7, v8

    aget-object v9, p0, v8

    invoke-static {v5, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->isPrimitive(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p0, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    :cond_6
    if-eqz v5, :cond_7

    return-object v6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "METHOD_NOT_FOUND_ERR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const-string v0, "Couldn\'t load the class"

    sput-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->className:Ljava/lang/String;

    sput-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->methodName:Ljava/lang/String;

    array-length p1, p2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    new-array v2, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, p2, v3

    const/4 v5, 0x0

    sput-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->clazz:Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz p0, :cond_4

    move p0, v1

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object v0, p2, p0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr p0, v1

    goto :goto_0

    :cond_0
    sput p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->nArgs:I

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->methodName:Ljava/lang/String;

    const-string p1, "Error: Number of actual and formal argument differ "

    if-eqz p0, :cond_2

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->findMethods([Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: underlying constructor throws an exception "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: Method is inaccessible"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Method not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->findConstructor([Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3

    return-object p0

    :catch_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: Class that declares the underlying constructor represents an abstract class"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: constructor is inaccessible"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: constructor throws an exception "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Constructor not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    :catch_7
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPrimitive(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->typeCast(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->typeCast(Ljava/lang/Class;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_2

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->typeCast(Ljava/lang/Class;Ljava/lang/Double;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_3

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/CallFunction;->typeCast(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_5

    check-cast p1, Ljava/lang/Byte;

    return-object p1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static typeCast(Ljava/lang/Class;Ljava/lang/Double;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 6
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 8
    new-instance p0, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Double;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object p0

    .line 9
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 10
    new-instance p0, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Double;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static typeCast(Ljava/lang/Class;Ljava/lang/Float;)Ljava/lang/Object;
    .locals 2

    .line 27
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 28
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    .line 29
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 30
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    .line 31
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 32
    new-instance p0, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Float;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object p0

    .line 33
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 34
    new-instance p0, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Float;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p0

    :cond_3
    return-object p1
.end method

.method public static typeCast(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2

    .line 19
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 20
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    .line 21
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 22
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    .line 23
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 24
    new-instance p0, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object p0

    .line 25
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 26
    new-instance p0, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p0

    :cond_3
    return-object p1
.end method

.method public static typeCast(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 12
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    .line 13
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 14
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    .line 15
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 16
    new-instance p0, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object p0

    .line 17
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 18
    new-instance p0, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Long;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p0

    :cond_3
    return-object p1
.end method
