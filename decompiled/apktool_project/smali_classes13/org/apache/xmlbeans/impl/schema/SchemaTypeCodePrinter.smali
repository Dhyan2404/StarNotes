.class public final Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaCodePrinter;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADD_NEW_VALUE:I = 0x3

.field private static final INDENT_INCREMENT:I = 0x4

.field static final INDEX_CLASSNAME:Ljava/lang/String; = "TypeSystemHolder"

.field private static final MAX_SPACES:Ljava/lang/String; = "                                        "

.field private static final NOTHING:I = 0x1

.field private static final THROW_EXCEPTION:I = 0x4


# instance fields
.field private _indent:I

.field private _writer:Ljava/io/Writer;

.field private opt:Lorg/apache/xmlbeans/XmlOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    return-void
.end method

.method private emitSpecializedAccessors(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2

    const v1, 0xf4240

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "java.math.BigInteger getBigIntegerValue();"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "void setBigIntegerValue(java.math.BigInteger bi);"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_0

    :cond_2
    const-string v0, "long getLongValue();"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "void setLongValue(long l);"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_0

    :cond_3
    const-string v0, "int getIntValue();"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "void setIntValue(int i);"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_0

    :cond_4
    const-string v0, "short getShortValue();"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "void setShortValue(short s);"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_0

    :cond_5
    const-string v0, "byte getByteValue();"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "void setByteValue(byte b);"

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_6
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const-string v0, "java.lang.Object getObjectValue();"

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "void setObjectValue(java.lang.Object val);"

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v0, "org.apache.xmlbeans.SchemaType instanceType();"

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSTANCE_TYPE:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    if-eq v2, v1, :cond_7

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitSpecializedAccessors(Lorg/apache/xmlbeans/SchemaType;)V

    :cond_7
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    const-string p1, "java.util.List getListValue();"

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string p1, "java.util.List xgetListValue();"

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string p1, "void setListValue(java.util.List<?> list);"

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_8
    return-void
.end method

.method public static findBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getDerivedProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 7

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    array-length v2, p1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-array p1, v3, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object p0

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    return-object p0
.end method

.method private static getExtensionInterfaces(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/xmlbeans/InterfaceExtension;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFullJavaName(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeHandlerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".encode"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeHandlerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".decode"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasBase(Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isAnonymousType()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSkippedAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_2
    if-eq p0, p1, :cond_0

    :goto_0
    return v1
.end method

.method public static indexClassForSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "TypeSystemHolder"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isJavaPrimitive(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static javaStringEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/16 v4, 0x22

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static javaWrappedType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "java.lang.Long"

    return-object p0

    :pswitch_1
    const-string p0, "java.lang.Integer"

    return-object p0

    :pswitch_2
    const-string p0, "java.lang.Short"

    return-object p0

    :pswitch_3
    const-string p0, "java.lang.Byte"

    return-object p0

    :pswitch_4
    const-string p0, "java.lang.Double"

    return-object p0

    :pswitch_5
    const-string p0, "java.lang.Float"

    return-object p0

    :pswitch_6
    const-string p0, "java.lang.Boolean"

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const-string v4, "\\u"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    const-string v4, "\\u0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v4, "\\u00"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v4, "\\u000"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prettyQName(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private printExtensionImplMethods(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/InterfaceExtension;->getMethods()[Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Implementation method for interface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/xmlbeans/InterfaceExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInterfaceMethodDecl(Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-interface {v3}, Lorg/apache/xmlbeans/InterfaceExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInterfaceMethodImpl(Ljava/lang/String;Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static xmlTypeForPropertyIsUnion(Lorg/apache/xmlbeans/SchemaProperty;)Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public emit(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 6
    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0xa

    add-int/2addr v0, v1

    :cond_0
    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    move v0, v1

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    const-string v2, "                                        "

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->getCompilePartialMethod()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public emitAddTarget(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ");"

    const-string v1, "target = ("

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")get_store().add_attribute_user("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")get_store().add_element_user("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target = null;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, ");"

    const-string v1, "target = ("

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")get_store().find_attribute_user("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")get_store().find_element_user("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    if-ne p5, p1, :cond_1

    return-void

    :cond_1
    const-string p1, "if (target == null) {"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const/4 p1, 0x3

    if-eq p5, p1, :cond_3

    const/4 p1, 0x4

    if-eq p5, p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "throw new IndexOutOfBoundsException();"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2, p3, p6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public emitImplementationPostamble()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v0, "}"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitImplementationPreamble()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "synchronized (monitor()) {"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    const-string v0, "check_orphaned();"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v5, "-1"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrePostExtension()Lorg/apache/xmlbeans/PrePostExtension;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->hasPreCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    .line 6
    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->hasPostCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".postSet("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prePostOpString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v5, "-1"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrePostExtension()Lorg/apache/xmlbeans/PrePostExtension;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->hasPreCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".preSet("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prePostOpString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")) {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    :cond_1
    return-void
.end method

.method public endBlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v0, "}"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 0

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAtomicRestrictionType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "org.apache.xmlbeans.impl.values.JavaGDateHolderEx"

    return-object p0

    :pswitch_1
    const-string p0, "org.apache.xmlbeans.impl.values.JavaGDurationHolderEx"

    return-object p0

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx"

    return-object p0

    :cond_0
    const-string p0, "org.apache.xmlbeans.impl.values.JavaStringHolderEx"

    return-object p0

    :pswitch_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_2

    const/16 p1, 0x10

    if-eq p0, p1, :cond_2

    const/16 p1, 0x20

    if-eq p0, p1, :cond_2

    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    packed-switch p0, :pswitch_data_1

    :pswitch_4
    const-string p0, "org.apache.xmlbeans.impl.values.JavaDecimalHolderEx"

    return-object p0

    :pswitch_5
    const-string p0, "org.apache.xmlbeans.impl.values.JavaIntegerHolderEx"

    return-object p0

    :cond_1
    const-string p0, "org.apache.xmlbeans.impl.values.JavaLongHolderEx"

    return-object p0

    :cond_2
    const-string p0, "org.apache.xmlbeans.impl.values.JavaIntHolderEx"

    return-object p0

    :pswitch_6
    const-string p0, "org.apache.xmlbeans.impl.values.JavaDoubleHolderEx"

    return-object p0

    :pswitch_7
    const-string p0, "org.apache.xmlbeans.impl.values.JavaFloatHolderEx"

    return-object p0

    :pswitch_8
    const-string p0, "org.apache.xmlbeans.impl.values.JavaNotationHolderEx"

    return-object p0

    :pswitch_9
    const-string p0, "org.apache.xmlbeans.impl.values.JavaQNameHolderEx"

    return-object p0

    :pswitch_a
    const-string p0, "org.apache.xmlbeans.impl.values.JavaUriHolderEx"

    return-object p0

    :pswitch_b
    const-string p0, "org.apache.xmlbeans.impl.values.JavaHexBinaryHolderEx"

    return-object p0

    :pswitch_c
    const-string p0, "org.apache.xmlbeans.impl.values.JavaBase64HolderEx"

    return-object p0

    :pswitch_d
    const-string p0, "org.apache.xmlbeans.impl.values.JavaBooleanHolderEx"

    return-object p0

    :pswitch_e
    const-string p0, "org.apache.xmlbeans.impl.values.XmlAnySimpleTypeImpl"

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf4240
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getBaseClass(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    const/4 p0, 0x3

    if-ne v1, p0, :cond_0

    const-string p0, "org.apache.xmlbeans.impl.values.XmlListImpl"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "org.apache.xmlbeans.impl.values.XmlUnionImpl"

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getAtomicRestrictionType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "org.apache.xmlbeans.impl.values.XmlComplexContentImpl"

    return-object p0
.end method

.method public getIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/xml/namespace/QName;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PROPERTY_QNAME["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getDerivedProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperty(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    if-nez v0, :cond_6

    return-object p0

    :cond_6
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p0, v2, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object p0
.end method

.method public getSetIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PROPERTY_QSET["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public indent()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    return-void
.end method

.method public javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x24

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "java.lang.Object"

    return-object p0

    :pswitch_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->hasBase(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    const-string v3, ".Enum"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p0, "java.util.Calendar"

    return-object p0

    :pswitch_3
    const-string p0, "java.util.List"

    return-object p0

    :pswitch_4
    const-string p0, "javax.xml.namespace.QName"

    return-object p0

    :pswitch_5
    const-string p0, "java.util.Date"

    return-object p0

    :pswitch_6
    const-string p0, "org.apache.xmlbeans.GDuration"

    return-object p0

    :pswitch_7
    const-string p0, "org.apache.xmlbeans.GDate"

    return-object p0

    :pswitch_8
    const-string p0, "byte[]"

    return-object p0

    :pswitch_9
    const-string p0, "java.lang.String"

    return-object p0

    :pswitch_a
    const-string p0, "java.math.BigInteger"

    return-object p0

    :pswitch_b
    const-string p0, "java.math.BigDecimal"

    return-object p0

    :pswitch_c
    const-string p0, "long"

    return-object p0

    :pswitch_d
    const-string p0, "int"

    return-object p0

    :pswitch_e
    const-string p0, "short"

    return-object p0

    :pswitch_f
    const-string p0, "byte"

    return-object p0

    :pswitch_10
    const-string p0, "double"

    return-object p0

    :pswitch_11
    const-string p0, "float"

    return-object p0

    :pswitch_12
    const-string p0, "boolean"

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makeAttributeDefaultValue(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x24

    const/16 v0, 0x2e

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "target = ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")get_default_attribute_value("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public makeMissingValue(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "0L"

    return-object p0

    :pswitch_1
    const-string p0, "0"

    return-object p0

    :pswitch_2
    const-string p0, "0.0"

    return-object p0

    :pswitch_3
    const-string p0, "0.0f"

    return-object p0

    :pswitch_4
    const-string p0, "false"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outdent()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    return-void
.end method

.method public prePostOpString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "org.apache.xmlbeans.PrePostExtension.OPERATION_REMOVE"

    return-object p0

    :cond_1
    const-string p0, "org.apache.xmlbeans.PrePostExtension.OPERATION_INSERT"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "org.apache.xmlbeans.PrePostExtension.OPERATION_SET"

    return-object p0
.end method

.method public printConstructor(Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(org.apache.xmlbeans.SchemaType sType) {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super(sType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "protected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(org.apache.xmlbeans.SchemaType sType, boolean b) {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const-string p1, "super(sType, b);"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_1
    return-void
.end method

.method public printGetterImpls(Lorg/apache/xmlbeans/SchemaProperty;Ljava/util/Map;Ljava/util/Map;)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaProperty;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p3

    invoke-virtual {v7, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getSetIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    move v12, v3

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v16

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDocumentation()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_1

    const-string v1, " attribute"

    goto :goto_1

    :cond_1
    const-string v1, " element"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v15, :cond_2

    move/from16 v17, v2

    goto :goto_2

    :cond_2
    move/from16 v17, v3

    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForPropertyIsUnion(Lorg/apache/xmlbeans/SchemaProperty;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v17, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v14

    goto :goto_4

    :cond_4
    :goto_3
    const-string v1, "org.apache.xmlbeans.SimpleValue"

    move-object v4, v1

    :goto_4
    iget-object v1, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->getCompilePartialMethod()Ljava/util/Set;

    move-result-object v1

    :goto_5
    move-object v3, v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v1

    const-string v2, "return target;"

    move/from16 p2, v12

    const-string v12, "public boolean isNil"

    move-object/from16 p3, v12

    const-string v12, " xget"

    move-object/from16 v18, v12

    const-string v12, ";"

    move-object/from16 v19, v14

    const-string v14, " get"

    move-object/from16 v20, v12

    const-string v12, "public "

    move/from16 v21, v15

    const-string v15, "() {"

    const-string v8, "@Override"

    if-eqz v1, :cond_19

    const-string v1, "if (target == null) {"

    move-object/from16 v22, v4

    if-eqz v3, :cond_7

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object v3, v8

    move/from16 v2, v21

    move-object/from16 v4, v22

    const/4 v8, 0x2

    move-object/from16 v5, p1

    move-object v6, v1

    move-object/from16 v1, v20

    goto/16 :goto_a

    :cond_7
    :goto_6
    iget-object v4, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_9

    const-string v4, "Gets first "

    goto :goto_7

    :cond_9
    const-string v4, "Gets the "

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    :goto_8
    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v4, "0"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move-object v1, v10

    move-object/from16 v26, v2

    move-object v2, v9

    move-object/from16 v27, v3

    move/from16 v3, v16

    move-object/from16 v28, v22

    move-object/from16 v22, v8

    const/4 v8, 0x2

    move-object/from16 v29, v5

    move/from16 v5, v24

    move-object/from16 v30, v6

    move-object/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    if-eqz v16, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-eq v0, v8, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-ne v0, v8, :cond_c

    :cond_b
    move-object/from16 v6, v25

    invoke-virtual {v7, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    move-object/from16 v5, p1

    move-object/from16 v3, v22

    move-object/from16 v4, v28

    invoke-virtual {v7, v4, v5, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeAttributeDefaultValue(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_9

    :cond_c
    move-object/from16 v5, p1

    move-object/from16 v3, v22

    move-object/from16 v6, v25

    move-object/from16 v4, v28

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return (target == null) ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v21

    invoke-virtual {v7, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeMissingValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v7, v2, v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJGetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_a
    if-nez v17, :cond_13

    move-object/from16 v0, v27

    if-eqz v0, :cond_e

    sget-object v8, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move/from16 v21, v2

    move-object/from16 v34, v3

    move-object/from16 v22, v4

    move-object v8, v5

    move-object/from16 v20, v13

    move-object/from16 v35, v18

    move-object/from16 v13, v19

    move-object/from16 v6, v26

    goto/16 :goto_e

    :cond_e
    :goto_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_f

    const-string v20, "Gets (as xml) first "

    goto :goto_c

    :cond_f
    const-string v20, "Gets (as xml) the "

    :goto_c
    move-object/from16 v27, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v7, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v8, "0"

    const/16 v20, 0x1

    move-object/from16 v31, v0

    move-object/from16 v32, v27

    move-object/from16 v0, p0

    move-object/from16 v33, v1

    move-object v1, v10

    move/from16 v21, v2

    move-object v2, v9

    move-object/from16 v34, v3

    move/from16 v3, v16

    move-object/from16 v22, v4

    move-object v4, v8

    move-object/from16 v8, p1

    move-object/from16 v35, v18

    move-object/from16 v18, v14

    move-object v14, v5

    move/from16 v5, v20

    move-object/from16 v20, v13

    move-object v13, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    if-eqz v16, :cond_12

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-ne v0, v1, :cond_12

    :cond_11
    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    move-object/from16 v13, v19

    invoke-virtual {v7, v13, v8, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeAttributeDefaultValue(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_d

    :cond_12
    move-object/from16 v13, v19

    :goto_d
    move-object/from16 v6, v26

    invoke-virtual {v7, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_f

    :cond_13
    move-object/from16 v33, v1

    move/from16 v21, v2

    move-object/from16 v34, v3

    move-object/from16 v22, v4

    move-object v8, v5

    move-object/from16 v20, v13

    move-object/from16 v35, v18

    move-object/from16 v13, v19

    move-object/from16 v6, v26

    move-object/from16 v32, v27

    :goto_e
    move-object/from16 v31, v29

    move-object/from16 v18, v14

    move-object/from16 v14, v30

    :goto_f
    if-eqz p2, :cond_18

    move-object/from16 v5, v32

    if-eqz v5, :cond_15

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_10

    :cond_14
    move-object/from16 v36, p3

    move-object/from16 v38, v6

    move-object/from16 p3, v12

    move-object/from16 v8, v31

    move-object/from16 v37, v34

    move-object v12, v5

    goto/16 :goto_12

    :cond_15
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_16

    const-string v1, "Tests for nil first "

    goto :goto_11

    :cond_16
    const-string v1, "Tests for nil "

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    move-object/from16 v3, v34

    if-nez v0, :cond_17

    invoke-virtual {v7, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v19, "0"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v36, v2

    move-object v2, v9

    move-object/from16 v37, v3

    move/from16 v3, v16

    move-object v8, v4

    move-object/from16 v4, v19

    move-object/from16 p3, v12

    move-object v12, v5

    move/from16 v5, v23

    move-object/from16 v38, v6

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "return target != null && target.isNil();"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_12

    :cond_18
    move-object/from16 v36, p3

    move-object/from16 v38, v6

    move-object/from16 p3, v12

    move-object/from16 v8, v31

    move-object/from16 v12, v32

    move-object/from16 v37, v34

    goto :goto_12

    :cond_19
    move-object/from16 v36, p3

    move-object/from16 v38, v2

    move-object/from16 v22, v4

    move-object/from16 v37, v8

    move-object/from16 p3, v12

    move-object/from16 v35, v18

    move-object/from16 v33, v20

    move-object v12, v3

    move-object v8, v5

    move-object/from16 v20, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v19

    move-object v14, v6

    :goto_12
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v0

    const-string v6, "return get_store().count_elements("

    if-eqz v0, :cond_1e

    if-eqz v12, :cond_1a

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_1b

    const-string v1, "True if has at least one "

    goto :goto_13

    :cond_1b
    const-string v1, "True if has "

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    move-object/from16 v5, v37

    if-nez v0, :cond_1c

    invoke-virtual {v7, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public boolean isSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    if-eqz v16, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return get_store().find_attribute_user("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") != null;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_14

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") != 0;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_15

    :cond_1e
    move-object/from16 v5, v37

    :goto_15
    if-eqz v11, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v21 .. v21}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->isJavaPrimitive(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static/range {v21 .. v21}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaWrappedType(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_16

    :cond_1f
    move-object/from16 v3, v20

    :goto_16
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v14

    move/from16 v4, v17

    move-object/from16 v23, v13

    move-object v13, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printListGetterImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "s"

    if-eqz v12, :cond_21

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_17

    :cond_20
    move-object/from16 v4, p3

    move-object/from16 v3, v20

    move/from16 v2, v21

    goto :goto_18

    :cond_21
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gets array of all "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[] get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v2, v21

    invoke-virtual {v7, v2, v3, v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJGetArrayValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_18
    const-string v1, "(int i) {"

    if-eqz v12, :cond_24

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_19

    :cond_23
    move-object/from16 v40, v1

    move-object/from16 v42, v6

    move-object/from16 v20, v9

    move-object/from16 p3, v10

    move-object v9, v4

    move-object v10, v5

    goto/16 :goto_1a

    :cond_24
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v2

    const-string v2, "Gets ith "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v18, "i"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object v2, v1

    move-object v1, v10

    move-object/from16 v40, v2

    move/from16 v39, v21

    move-object v2, v9

    move-object/from16 v41, v3

    move/from16 v3, v16

    move-object/from16 v20, v9

    move-object v9, v4

    move-object/from16 v4, v18

    move-object/from16 p3, v10

    move-object v10, v5

    move/from16 v5, v19

    move-object/from16 v42, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v3, v39

    move-object/from16 v2, v41

    invoke-virtual {v7, v3, v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJGetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_1a
    if-nez v17, :cond_26

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printListGetterImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_26
    if-nez v17, :cond_29

    if-eqz v12, :cond_27

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gets (as xml) array of all "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[] xget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return xgetArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]::new);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_1b

    :cond_29
    move-object/from16 v14, p3

    move-object/from16 v10, v23

    :goto_1b
    if-nez v17, :cond_2c

    if-eqz v12, :cond_2a

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gets (as xml) ith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v40

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v16

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_1c

    :cond_2c
    move-object/from16 v9, v40

    :goto_1c
    if-eqz p2, :cond_2f

    if-eqz v12, :cond_2d

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tests for nil ith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v16

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "return target.isNil();"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_2f
    if-eqz v12, :cond_30

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SIZE_OF_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returns number of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {v7, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public int sizeOf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_32
    return-void
.end method

.method public printHolder(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaTypeSystem;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/repackage/Repackager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/repackage/Repackager;->repackage(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p2, "import org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl;"

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p2, "public final class TypeSystemHolder extends SchemaTypeSystemImpl {"

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    const-string p2, "public static final TypeSystemHolder typeSystem = new TypeSystemHolder();"

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "private TypeSystemHolder() {"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    const-string p1, "super(TypeSystemHolder.class);"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printInnerType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeJavaDoc(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startInterface(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStaticTypeDeclaration(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStringEnumeration(Lorg/apache/xmlbeans/SchemaType;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStringEnumeration(Lorg/apache/xmlbeans/SchemaType;)V

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getDerivedProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPropertyGetters(Lorg/apache/xmlbeans/SchemaProperty;)V

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPropertySetters(Lorg/apache/xmlbeans/SchemaProperty;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedInnerTypes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public printInnerTypeImpl(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaImplName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeJavaDoc(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startClass(Lorg/apache/xmlbeans/SchemaType;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printConstructor(Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printExtensionImplMethods(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getSchemaProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStaticFields([Lorg/apache/xmlbeans/SchemaProperty;Ljava/util/Map;Ljava/util/Map;)V

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    invoke-virtual {p0, v4, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printGetterImpls(Lorg/apache/xmlbeans/SchemaProperty;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4, v0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printSetterImpls(Lorg/apache/xmlbeans/SchemaProperty;Ljava/util/Map;Ljava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedTypeImpls(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public printInnerTypeJavaDoc(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    :cond_2
    :goto_0
    const-string v1, "/**"

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v1

    const-string v2, " *"

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocBody(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v1

    const-string v3, " * A document containing one "

    const-string v4, "."

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prettyQName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " element."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prettyQName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " attribute."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " * An XML "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prettyQName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, " * An anonymous inner XML type."

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " * This is a list type whose items are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v0, " * This is a union type. Instances are of one of the following types:"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_b

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " *     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " * This is an atomic type that is a restriction of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getFullJavaName(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string p1, " * This is a complex type."

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_b
    :goto_3
    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printInterfaceMethodDecl(Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getParameterTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getParameterNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    array-length v6, v2

    const-string v7, ", "

    if-ge v5, v6, :cond_1

    if-le v5, v4, :cond_0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getExceptionTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_2

    const-string v2, " throws "

    goto :goto_2

    :cond_2
    move-object v2, v7

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string p1, " {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printInterfaceMethodImpl(Ljava/lang/String;Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getReturnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "void"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(this"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getParameterNames()[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printJGetArrayValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "[]::new);"

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectArray(#ID#, e -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(e), "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getObjectValue, java.lang.Object[]::new);"

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EnumArray(#ID#, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getCalendarValue, java.util.Calendar[]::new);"

    goto :goto_0

    :pswitch_4
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getListValue, java.util.List[]::new);"

    goto :goto_0

    :pswitch_5
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getQNameValue, javax.xml.namespace.QName[]::new);"

    goto :goto_0

    :pswitch_6
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getDateValue, java.util.Date[]::new);"

    goto :goto_0

    :pswitch_7
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getGDurationValue, org.apache.xmlbeans.GDuration[]::new);"

    goto :goto_0

    :pswitch_8
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getGDateValue, org.apache.xmlbeans.GDate[]::new);"

    goto :goto_0

    :pswitch_9
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getByteArrayValue, byte[][]::new);"

    goto :goto_0

    :pswitch_a
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getStringValue, String[]::new);"

    goto :goto_0

    :pswitch_b
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getBigIntegerValue, java.math.BigInteger[]::new);"

    goto :goto_0

    :pswitch_c
    const-string p1, "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getBigDecimalValue, java.math.BigDecimal[]::new);"

    goto :goto_0

    :pswitch_d
    const-string p1, "LongArray(#ID#);"

    goto :goto_0

    :pswitch_e
    const-string p1, "IntArray(#ID#);"

    goto :goto_0

    :pswitch_f
    const-string p1, "ShortArray(#ID#);"

    goto :goto_0

    :pswitch_10
    const-string p1, "ByteArray(#ID#);"

    goto :goto_0

    :pswitch_11
    const-string p1, "DoubleArray(#ID#);"

    goto :goto_0

    :pswitch_12
    const-string p1, "FloatArray(#ID#);"

    goto :goto_0

    :pswitch_13
    const-string p1, "BooleanArray(#ID#);"

    goto :goto_0

    :pswitch_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "XmlObjectArray(#ID#, new "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[0]);"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "return get"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "#ID#"

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printJGetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(target)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "target.getObjectValue()"

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")target.getEnumValue()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, "target.getCalendarValue()"

    return-object p0

    :pswitch_4
    const-string p0, "target.getListValue()"

    return-object p0

    :pswitch_5
    const-string p0, "target.getQNameValue()"

    return-object p0

    :pswitch_6
    const-string p0, "target.getDateValue()"

    return-object p0

    :pswitch_7
    const-string p0, "target.getGDurationValue()"

    return-object p0

    :pswitch_8
    const-string p0, "target.getGDateValue()"

    return-object p0

    :pswitch_9
    const-string p0, "target.getByteArrayValue()"

    return-object p0

    :pswitch_a
    const-string p0, "target.getStringValue()"

    return-object p0

    :pswitch_b
    const-string p0, "target.getBigIntegerValue()"

    return-object p0

    :pswitch_c
    const-string p0, "target.getBigDecimalValue()"

    return-object p0

    :pswitch_d
    const-string p0, "target.getLongValue()"

    return-object p0

    :pswitch_e
    const-string p0, "target.getIntValue()"

    return-object p0

    :pswitch_f
    const-string p0, "target.getShortValue()"

    return-object p0

    :pswitch_10
    const-string p0, "target.getByteValue()"

    return-object p0

    :pswitch_11
    const-string p0, "target.getDoubleValue()"

    return-object p0

    :pswitch_12
    const-string p0, "target.getFloatValue()"

    return-object p0

    :pswitch_13
    const-string p0, "target.getBooleanValue()"

    return-object p0

    :pswitch_14
    const-string p0, "target"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "(#VARNAME#, target)"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const-string p1, "target.setObjectValue(#VARNAME#)"

    goto :goto_0

    :pswitch_2
    const-string p1, "target.setEnumValue(#VARNAME#)"

    goto :goto_0

    :pswitch_3
    const-string p1, "target.setCalendarValue(#VARNAME#)"

    goto :goto_0

    :pswitch_4
    const-string p1, "target.setListValue(#VARNAME#)"

    goto :goto_0

    :pswitch_5
    const-string p1, "target.setQNameValue(#VARNAME#)"

    goto :goto_0

    :pswitch_6
    const-string p1, "target.setDateValue(#VARNAME#)"

    goto :goto_0

    :pswitch_7
    const-string p1, "target.setGDurationValue(#VARNAME#)"

    goto :goto_0

    :pswitch_8
    const-string p1, "target.setGDateValue(#VARNAME#)"

    goto :goto_0

    :pswitch_9
    const-string p1, "target.setByteArrayValue(#VARNAME#)"

    goto :goto_0

    :pswitch_a
    const-string p1, "target.setStringValue(#VARNAME#)"

    goto :goto_0

    :pswitch_b
    const-string p1, "target.setBigIntegerValue(#VARNAME#)"

    goto :goto_0

    :pswitch_c
    const-string p1, "target.setBigDecimalValue(#VARNAME#)"

    goto :goto_0

    :pswitch_d
    const-string p1, "target.setLongValue(#VARNAME#)"

    goto :goto_0

    :pswitch_e
    const-string p1, "target.setIntValue(#VARNAME#)"

    goto :goto_0

    :pswitch_f
    const-string p1, "target.setShortValue(#VARNAME#)"

    goto :goto_0

    :pswitch_10
    const-string p1, "target.setByteValue(#VARNAME#)"

    goto :goto_0

    :pswitch_11
    const-string p1, "target.setDoubleValue(#VARNAME#)"

    goto :goto_0

    :pswitch_12
    const-string p1, "target.setFloatValue(#VARNAME#)"

    goto :goto_0

    :pswitch_13
    const-string p1, "target.setBooleanValue(#VARNAME#)"

    goto :goto_0

    :pswitch_14
    const-string p1, "target.set(#VARNAME#)"

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#VARNAME#"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printJavaDoc(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "/**"

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " */"

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->getCompilePartialMethod()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public printJavaDocBody(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "*/"

    const-string v1, "* /"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\n\\r]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printJavaDocParagraph(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "/**"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocBody(Ljava/lang/String;)V

    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printListGetterImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->getCompilePartialMethod()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz p5, :cond_3

    const-string v4, "(as xml) "

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a List of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "@Override"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public java.util.List<"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "xget"

    const-string v2, "get"

    if-eqz p5, :cond_5

    move-object v4, p3

    goto :goto_3

    :cond_5
    move-object v4, v2

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "List() {"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return new org.apache.xmlbeans.impl.values.JavaList"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_7

    if-eqz p5, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v3

    goto :goto_5

    :cond_7
    :goto_4
    const-string v4, "Xml"

    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Object<>("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    const-string p1, "this::"

    const-string v4, "null,"

    const-string v5, ","

    if-eqz v0, :cond_a

    if-eqz p5, :cond_8

    sget-object v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    goto :goto_6

    :cond_8
    sget-object v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    :goto_6
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_b

    goto :goto_8

    :cond_b
    move-object p3, v2

    :goto_8
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_9
    if-eqz v0, :cond_e

    if-eqz p5, :cond_c

    sget-object p3, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    goto :goto_a

    :cond_c
    sget-object p3, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    :goto_a
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    :goto_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_f

    const-string p1, "xset"

    goto :goto_c

    :cond_f
    const-string p1, "set"

    :goto_c
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_d
    if-eqz v0, :cond_13

    if-nez p4, :cond_11

    if-eqz p5, :cond_10

    goto :goto_e

    :cond_10
    sget-object p1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    goto :goto_f

    :cond_11
    :goto_e
    sget-object p1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_NEW_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    :goto_f
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_10

    :cond_12
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_11

    :cond_13
    :goto_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "this::insert"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_14

    if-eqz p5, :cond_15

    :cond_14
    const-string v3, "New"

    :cond_15
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_11
    if-eqz v0, :cond_17

    sget-object p1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->REMOVE_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_12

    :cond_16
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_13

    :cond_17
    :goto_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "this::remove"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_13
    if-eqz v0, :cond_19

    sget-object p1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SIZE_OF_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_14

    :cond_18
    const-string p1, "null"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_15

    :cond_19
    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "this::sizeOf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_15
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string p1, ");"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public printNestedInnerTypes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaType;->isSkippedAnonymousType()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedInnerTypes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivationType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public printNestedTypeImpls(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaType;->isSkippedAnonymousType()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedTypeImpls(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v6, p2, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeImpl(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;Z)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public printPackage(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printPropertyGetters(Lorg/apache/xmlbeans/SchemaProperty;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v8

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDocumentation()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, " attribute"

    goto :goto_1

    :cond_1
    const-string v11, " element"

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v7

    const-string v11, "boolean isNil"

    const-string v12, " xget"

    const-string v13, " get"

    const-string v14, "();"

    if-eqz v7, :cond_8

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const-string v15, "Gets first "

    goto :goto_3

    :cond_4
    const-string v15, "Gets the "

    :goto_3
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    if-nez v6, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_5

    const-string v15, "Gets (as xml) first "

    goto :goto_5

    :cond_5
    const-string v15, "Gets (as xml) the "

    :goto_5
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_6
    if-eqz v5, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_7

    const-string v15, "Tests for nil first "

    goto :goto_6

    :cond_7
    const-string v15, "Tests for nil "

    :goto_6
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_a

    const-string v15, "True if has at least one "

    goto :goto_7

    :cond_a
    const-string v15, "True if has "

    :goto_7
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "boolean isSet"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v7, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_b
    if-eqz v8, :cond_12

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Array"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->isJavaPrimitive(I)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaWrappedType(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_d
    move-object v2, v3

    :goto_9
    iget-object v8, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v8

    const-string v15, "s"

    if-eqz v8, :cond_e

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    move-object/from16 v16, v11

    goto :goto_a

    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v11

    const-string v11, "Gets a List of "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v8, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.util.List<"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> get"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "List();"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v17, v5

    sget-object v5, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v8, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gets array of all "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v5, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "[] get"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v5, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gets ith "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v5, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(int i);"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    if-nez v6, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gets (as xml) a List of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v5, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "> xget"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gets (as xml) array of all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[] xget"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gets (as xml) ith "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_10
    if-eqz v17, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tests for nil ith "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returns number of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SIZE_OF_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int sizeOf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_12
    return-void
.end method

.method public printPropertySetters(Lorg/apache/xmlbeans/SchemaProperty;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v12

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDocumentation()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/NameUtil;->lowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/common/NameUtil;->nonJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "i"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v14, "iValue"

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string v1, " attribute"

    goto :goto_2

    :cond_3
    const-string v1, " element"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "void setNil"

    const-string v4, " addNew"

    const-string v9, "void xset"

    const-string v15, "void set"

    move/from16 v16, v10

    const-string v10, "();"

    move-object/from16 p1, v2

    const-string v2, "("

    move/from16 v17, v7

    const-string v7, ");"

    move-object/from16 v18, v10

    const-string v10, " "

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v12}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    invoke-virtual {v0, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    move-object/from16 v20, v13

    goto :goto_4

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_5

    const-string v19, "Sets first "

    goto :goto_3

    :cond_5
    const-string v19, "Sets the "

    :goto_3
    move-object/from16 v20, v13

    move-object/from16 v13, v19

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    if-nez v8, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_6

    const-string v13, "Sets (as xml) first "

    goto :goto_5

    :cond_6
    const-string v13, "Sets (as xml) the "

    :goto_5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_7
    if-eqz v8, :cond_8

    if-nez v11, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Appends and returns a new empty "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD_NEW:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_6

    :cond_8
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    :goto_6
    if-eqz v17, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_9

    const-string v13, "Nils the first "

    goto :goto_7

    :cond_9
    const-string v13, "Nils the "

    :goto_7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_8

    :cond_a
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object/from16 v4, v18

    :cond_b
    move-object/from16 v18, v6

    move-object/from16 v6, p1

    :goto_8
    if-eqz v16, :cond_e

    iget-object v12, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v12}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v12

    if-eqz v12, :cond_c

    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c

    move-object/from16 v12, v20

    invoke-virtual {v0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    move-object/from16 p1, v6

    goto :goto_a

    :cond_c
    move-object/from16 v12, v20

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_d

    const-string v16, "Removes first "

    goto :goto_9

    :cond_d
    const-string v16, "Unsets the "

    :goto_9
    move-object/from16 p1, v6

    move-object/from16 v6, v16

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->UNSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v6, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "void unset"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->UNSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v6, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_b

    :cond_e
    move-object/from16 p1, v6

    move-object/from16 v12, v20

    :goto_b
    if-eqz v11, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Array"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v11, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v11}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v11

    if-eqz v11, :cond_f

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_f

    invoke-virtual {v0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sets array of all "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v11, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "[] "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    const-string v4, "Array);"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v3

    sget-object v3, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v11, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->isCompileAnnotationAsJavadoc()Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {v0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDocParagraph(Ljava/lang/String;)V

    goto :goto_d

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sets ith "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v3, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(int i, "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v3, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    if-nez v8, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sets (as xml) array of all "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v3, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v18

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sets (as xml) ith "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_e

    :cond_11
    move-object/from16 v15, v18

    :goto_e
    const-string v3, "(int i);"

    if-eqz v17, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nils the ith "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_12
    if-nez v8, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserts the value as the ith "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "void insert"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appends the value as the last "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "void add"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    goto :goto_f

    :cond_13
    move-object/from16 v8, v20

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserts and returns a new empty value (as xml) as the ith "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_NEW_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " insertNew"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appends and returns a new empty value (as xml) as the last "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD_NEW:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removes the ith "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->REMOVE_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "void remove"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_14
    return-void
.end method

.method public printSetterImpls(Lorg/apache/xmlbeans/SchemaProperty;Ljava/util/Map;Ljava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaProperty;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p4

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p3

    invoke-virtual {v7, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getSetIdentifier(Ljava/util/Map;Ljavax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->getCompilePartialMethod()Ljava/util/Set;

    move-result-object v0

    :goto_1
    move-object v3, v0

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/NameUtil;->lowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/NameUtil;->nonJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/NameUtil;->nonExtraKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v6, :cond_2

    move/from16 v16, v12

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    const/16 v2, 0x13

    if-ne v6, v2, :cond_3

    move/from16 v17, v12

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v18, v2, 0x1

    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForPropertyIsUnion(Lorg/apache/xmlbeans/SchemaProperty;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v16, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v15

    goto :goto_5

    :cond_5
    :goto_4
    const-string v2, "org.apache.xmlbeans.SimpleValue"

    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v2

    const-string v2, "\""

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    const-string v1, " attribute"

    goto :goto_6

    :cond_6
    const-string v1, " element"

    :goto_6
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v1

    const-string v2, "public "

    move-object/from16 v19, v2

    const-string v2, " target = null;"

    move-object/from16 v20, v2

    const-string v2, "() {"

    move-object/from16 v21, v2

    const-string v2, "public void set"

    move/from16 v22, v13

    const-string v13, ") {"

    const-string v8, " "

    move-object/from16 v23, v15

    const-string v15, ", "

    const-string v24, "0"

    const-string v25, "-1"

    move/from16 v26, v6

    const-string v6, "("

    move-object/from16 v27, v10

    const-string v10, ");"

    move-object/from16 v28, v10

    const-string v10, "@Override"

    if-eqz v1, :cond_20

    if-eqz v3, :cond_8

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v33, p3

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move/from16 p3, v5

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    move-object/from16 v19, v15

    move/from16 v14, v26

    move-object v15, v0

    move-object v13, v6

    goto/16 :goto_e

    :cond_8
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_9

    const-string v29, "Sets first "

    goto :goto_8

    :cond_9
    const-string v29, "Sets the "

    :goto_8
    move-object/from16 v30, v3

    move-object/from16 v3, v29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    if-eqz v16, :cond_d

    if-nez v18, :cond_d

    if-nez v5, :cond_d

    const/4 v3, 0x1

    const/16 v29, 0x0

    move-object v1, v0

    if-eqz v11, :cond_b

    move-object/from16 v31, v24

    goto :goto_9

    :cond_b
    move-object/from16 v31, v25

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v32, v1

    move-object/from16 v1, p4

    move-object/from16 v33, p3

    move-object/from16 v37, v2

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    move v2, v3

    move-object/from16 v38, v30

    move-object v3, v9

    move-object/from16 v39, v4

    move/from16 v4, v29

    move/from16 p3, v5

    move-object/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generatedSetterHelperImpl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v19, 0x0

    if-eqz v11, :cond_c

    move-object/from16 v20, v24

    goto :goto_a

    :cond_c
    move-object/from16 v20, v25

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move-object/from16 v27, v4

    move/from16 v4, v19

    move-object/from16 v19, v15

    move-object v15, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    move/from16 v14, v26

    move-object v13, v6

    goto/16 :goto_d

    :cond_d
    move-object/from16 v33, p3

    move-object/from16 v37, v2

    move-object/from16 v39, v4

    move/from16 p3, v5

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    move-object/from16 v38, v30

    move-object/from16 v19, v15

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    if-eqz v11, :cond_e

    move-object/from16 v5, v24

    goto :goto_b

    :cond_e
    move-object/from16 v5, v25

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "0"

    const/4 v5, 0x3

    move-object/from16 v1, v27

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    move/from16 v14, v26

    move-object v13, v6

    move-object/from16 v6, v33

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v7, v14, v15, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    const/4 v2, 0x1

    if-eqz v11, :cond_f

    move-object/from16 v5, v24

    goto :goto_c

    :cond_f
    move-object/from16 v5, v25

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_e
    if-nez v16, :cond_16

    move-object/from16 v6, v38

    if-eqz v6, :cond_11

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_f

    :cond_10
    move-object/from16 v26, v8

    move-object/from16 v40, v21

    move-object/from16 v8, v39

    move/from16 v21, v14

    move-object v14, v6

    move-object/from16 v6, v28

    goto/16 :goto_13

    :cond_11
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_12

    const-string v1, "Sets (as xml) first "

    goto :goto_10

    :cond_12
    const-string v1, "Sets (as xml) the "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void xset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    if-eqz v11, :cond_14

    move-object/from16 v21, v24

    goto :goto_11

    :cond_14
    move-object/from16 v21, v25

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v40, v3

    move-object v3, v9

    move-object/from16 v23, v4

    move/from16 v4, p3

    move-object/from16 v26, v8

    move-object v8, v5

    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "0"

    const/4 v5, 0x3

    move-object/from16 v1, v27

    move-object v2, v9

    move/from16 v3, p3

    move/from16 v21, v14

    move-object v14, v6

    move-object/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target.set("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v11, :cond_15

    move-object/from16 v5, v24

    goto :goto_12

    :cond_15
    move-object/from16 v5, v25

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_13

    :cond_16
    move-object/from16 v26, v8

    move-object/from16 v40, v21

    move-object/from16 v6, v28

    move-object/from16 v8, v39

    move/from16 v21, v14

    move-object/from16 v14, v38

    :goto_13
    if-eqz v16, :cond_19

    if-nez v11, :cond_19

    if-eqz v14, :cond_17

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD_NEW:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appends and returns a new empty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v41, v26

    const/4 v2, 0x2

    invoke-virtual {v7, v1, v2, v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v9, v0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v1, v2, v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    const-string v2, "return target;"

    invoke-virtual {v7, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_14

    :cond_19
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v4, v23

    move-object/from16 v41, v26

    move-object/from16 v5, v34

    move-object/from16 v3, v36

    :goto_14
    if-eqz v22, :cond_1f

    if-eqz v14, :cond_1a

    sget-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_1b

    const-string v23, "Nils the first "

    goto :goto_15

    :cond_1b
    const-string v23, "Nils the "

    :goto_15
    move/from16 p3, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public void setNil"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    if-eqz v11, :cond_1d

    move-object/from16 v23, v24

    goto :goto_16

    :cond_1d
    move-object/from16 v23, v25

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v42, v35

    move-object/from16 v43, v3

    move-object v3, v9

    move-object/from16 v26, v4

    move/from16 v4, p3

    move-object/from16 v44, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "0"

    const/4 v5, 0x3

    move-object/from16 v1, v27

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v32, v15

    move-object v15, v6

    move-object/from16 v6, v26

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "target.setNil();"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v11, :cond_1e

    move-object/from16 v5, v24

    goto :goto_17

    :cond_1e
    move-object/from16 v5, v25

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_18

    :cond_1f
    move/from16 p3, v0

    move-object/from16 v43, v3

    move-object/from16 v26, v4

    move-object/from16 v44, v5

    move-object/from16 v32, v15

    move-object/from16 v42, v35

    move-object v15, v6

    goto :goto_18

    :cond_20
    move-object/from16 v33, p3

    move-object/from16 v32, v0

    move-object/from16 v37, v2

    move/from16 p3, v5

    move-object/from16 v41, v8

    move-object/from16 v40, v13

    move-object/from16 v44, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    move/from16 v21, v26

    move-object v8, v4

    move-object v13, v6

    move-object/from16 v20, v14

    move-object/from16 v19, v15

    move-object/from16 v26, v23

    move-object/from16 v15, v28

    move-object v14, v3

    :goto_18
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz v14, :cond_21

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->UNSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_22

    const-string v1, "Removes first "

    goto :goto_19

    :cond_22
    const-string v1, "Unsets the "

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x3

    if-eqz v11, :cond_24

    move-object/from16 v5, v24

    goto :goto_1a

    :cond_24
    move-object/from16 v5, v25

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    move/from16 v5, p3

    if-eqz v5, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_store().remove_attribute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v4, v27

    goto :goto_1b

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_store().remove_element("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_1b
    const/4 v2, 0x3

    if-eqz v11, :cond_26

    goto :goto_1c

    :cond_26
    move-object/from16 v24, v25

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move-object/from16 v45, v4

    move v4, v5

    move-object/from16 v36, v6

    move v6, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_1d

    :cond_27
    move/from16 v6, p3

    move-object/from16 v45, v27

    move-object/from16 v36, v43

    :goto_1d
    if-eqz v11, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v5, "Array) {"

    const-string v4, "arraySetterHelper("

    const-string v3, "Array, "

    if-eqz v14, :cond_29

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_1f

    :cond_28
    move-object/from16 v1, p4

    move-object/from16 p3, v5

    move-object/from16 v39, v8

    move-object/from16 v17, v11

    move-object/from16 v38, v14

    move-object/from16 v5, v19

    move-object/from16 v14, v32

    move-object/from16 v2, v37

    move-object/from16 v0, v45

    :goto_1e
    move-object v8, v4

    goto/16 :goto_24

    :cond_29
    :goto_1f
    const-string v0, "unionArraySetterHelper("

    if-eqz v16, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sets array of all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  WARNING: This method is not atomicaly synchronized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v39, v8

    move-object/from16 v8, v20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v38, v14

    const-string v14, "[] "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v32

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const-string v1, "check_orphaned();"

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v1, p4

    move-object/from16 p3, v5

    const/4 v5, 0x1

    invoke-virtual {v7, v1, v5, v9, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    if-eqz v17, :cond_2c

    if-nez v18, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v20, v8

    move-object/from16 v0, v19

    move-object/from16 v8, v45

    goto :goto_20

    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v8

    move-object/from16 v8, v45

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_20

    :cond_2c
    move-object/from16 v20, v8

    move-object/from16 v0, v19

    move-object/from16 v8, v45

    if-nez v18, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_20

    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_20
    const/4 v5, 0x1

    invoke-virtual {v7, v1, v5, v9, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    move-object v5, v0

    move-object v0, v8

    move-object/from16 v17, v11

    goto/16 :goto_1e

    :cond_2e
    move-object/from16 v1, p4

    move-object/from16 p3, v5

    move-object/from16 v39, v8

    move-object/from16 v38, v14

    move-object/from16 v5, v19

    move-object/from16 v14, v32

    move-object/from16 v2, v37

    move-object/from16 v8, v45

    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v8

    const-string v8, "Sets array of all "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v4, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "[] "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4, v9, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    if-eqz v17, :cond_31

    if-nez v18, :cond_30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 p3, v8

    move-object/from16 v17, v11

    move-object/from16 v8, v19

    move-object/from16 v0, v27

    goto :goto_22

    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 p3, v8

    move-object/from16 v17, v11

    :goto_21
    move-object/from16 v8, v19

    :goto_22
    const/4 v4, 0x1

    goto/16 :goto_23

    :cond_31
    move-object/from16 v0, v27

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v4

    move-object/from16 p3, v8

    const/16 v8, 0x14

    if-ne v4, v8, :cond_33

    if-nez v18, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "org.apache.xmlbeans.SimpleValue[] dests = arraySetterHelper("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Array.length, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, "for ( int i = 0 ; i < dests.length ; i++ ) {"

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-object/from16 v17, v11

    const/4 v11, 0x1

    invoke-direct {v7, v11, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Array[i], dests[i]);"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, "}"

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_21

    :cond_32
    move-object/from16 v17, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "org.apache.xmlbeans.SimpleValue[] dests = arraySetterHelper("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Array.length, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, "for ( int i = 0 ; i < dests.length ; i++ ) {"

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v11, 0x1

    invoke-direct {v7, v11, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Array[i], dests[i]);"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, "}"

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_33
    move-object/from16 v17, v11

    if-nez v18, :cond_34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v19

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_34
    move-object/from16 v8, v19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto/16 :goto_22

    :goto_23
    invoke-virtual {v7, v1, v4, v9, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_24
    const-string v11, "(int i, "

    if-eqz v38, :cond_36

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v19, v8

    move-object/from16 v8, v38

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_25

    :cond_35
    move-object/from16 v27, v0

    move-object/from16 v50, v3

    move-object/from16 v24, v11

    move-object/from16 v28, v15

    move-object/from16 v51, v17

    move-object/from16 v52, v19

    move-object/from16 v47, v20

    move-object/from16 v11, v36

    move-object/from16 v48, v40

    move-object/from16 v49, v41

    move-object/from16 v15, p3

    move-object/from16 v19, v5

    move/from16 p3, v6

    move/from16 v6, v21

    goto/16 :goto_27

    :cond_36
    move-object/from16 v19, v8

    move-object/from16 v8, v38

    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v0

    const-string v0, "Sets ith "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    if-eqz v16, :cond_38

    if-nez v18, :cond_38

    const/16 v17, 0x1

    const-string v23, "i"

    move-object/from16 v46, v27

    move-object/from16 v0, p0

    move-object/from16 v24, v11

    move-object v11, v1

    move-object/from16 v1, p4

    move-object/from16 v48, v2

    move-object/from16 v47, v20

    move-object/from16 v49, v41

    move/from16 v2, v17

    move-object/from16 v50, v3

    move-object v3, v9

    move-object/from16 v51, v4

    move-object/from16 v52, v19

    move v4, v6

    move-object v11, v5

    move-object/from16 v28, v15

    move-object/from16 v15, p3

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generatedSetterHelperImpl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v46

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v17, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v27, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    move/from16 p3, v6

    move-object/from16 v19, v11

    move/from16 v6, v21

    move-object/from16 v11, v36

    goto :goto_26

    :cond_38
    move-object/from16 v48, v2

    move-object/from16 v50, v3

    move-object/from16 v51, v4

    move-object/from16 v24, v11

    move-object/from16 v28, v15

    move-object/from16 v52, v19

    move-object/from16 v47, v20

    move-object/from16 v49, v41

    move-object/from16 v15, p3

    move-object v11, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v1, v27

    move-object v2, v9

    move v3, v6

    move/from16 p3, v6

    move-object/from16 v19, v11

    move-object/from16 v11, v36

    move-object/from16 v6, v33

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v6, v21

    invoke-virtual {v7, v6, v14, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    :goto_26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_27
    if-nez v16, :cond_3b

    if-eqz v8, :cond_39

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sets (as xml) array of all "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void xset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v51

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    move/from16 v3, p3

    move-object/from16 v15, p4

    move-object/from16 v2, v19

    const/4 v0, 0x1

    invoke-virtual {v7, v15, v0, v9, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v50

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v15, v1, v9, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_28

    :cond_3b
    move/from16 v3, p3

    move-object/from16 v15, p4

    move-object/from16 v2, v19

    move-object/from16 v4, v26

    move-object/from16 v0, v28

    move-object/from16 v5, v51

    :goto_28
    if-nez v16, :cond_3e

    if-eqz v8, :cond_3c

    sget-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v0

    const-string v0, "Sets (as xml) ith "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void xset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    move-object/from16 v2, v49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v41, v2

    move-object/from16 v2, v48

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/16 v17, 0x1

    const-string v20, "i"

    move-object/from16 v53, v28

    move-object/from16 v0, p0

    move-object/from16 v36, v11

    move-object v11, v1

    move-object/from16 v1, p4

    move-object v15, v2

    move-object/from16 v54, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v41

    move/from16 v2, v17

    move/from16 p3, v3

    move-object v3, v9

    move-object/from16 v23, v4

    move/from16 v4, p3

    move-object/from16 v21, v15

    move-object v15, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v1, v27

    move-object v2, v9

    move/from16 v3, p3

    move/from16 v55, v6

    move-object/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target.set("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_29

    :cond_3e
    move-object/from16 v54, v2

    move/from16 p3, v3

    move-object/from16 v23, v4

    move-object v15, v5

    move/from16 v55, v6

    move-object/from16 v36, v11

    move-object/from16 v19, v13

    move-object/from16 v11, v24

    move-object/from16 v21, v48

    move-object/from16 v13, v49

    :goto_29
    if-eqz v22, :cond_41

    if-eqz v8, :cond_3f

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nils the ith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void setNil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(int i) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v1, v27

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "target.setNil();"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_41
    const-string v6, ")get_store().insert_element_user("

    const-string v15, ", i);"

    if-nez v16, :cond_45

    if-eqz v8, :cond_42

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inserts the value as the ith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void insert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v47

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x2

    const-string v17, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move-object/from16 v56, v4

    move/from16 v4, p3

    move-object/from16 v41, v13

    move-object v13, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    if-nez v18, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v3, v27

    move-object/from16 v2, v54

    goto :goto_2a

    :cond_44
    move-object/from16 v4, v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v1, v55

    invoke-virtual {v7, v1, v14, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    const/16 v17, 0x2

    const-string v19, "i"

    move-object/from16 v0, p0

    move-object/from16 p2, v15

    move v15, v1

    move-object/from16 v1, p4

    move-object/from16 v57, v2

    move/from16 v2, v17

    move-object/from16 v58, v3

    move-object v3, v9

    move-object/from16 v59, v4

    move/from16 v4, p3

    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_2b

    :cond_45
    move-object/from16 v17, v6

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    move-object/from16 v59, v19

    move-object/from16 v56, v21

    move-object/from16 v58, v27

    move-object/from16 v6, v33

    move-object/from16 v13, v39

    move-object/from16 v11, v47

    move-object/from16 v57, v54

    move/from16 v15, v55

    :goto_2b
    if-nez v16, :cond_48

    if-eqz v8, :cond_46

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appends the value as the last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v0, 0x2

    invoke-virtual {v7, v5, v0, v9, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v9, v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v7, v15, v14, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual {v7, v5, v0, v9, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_2c

    :cond_48
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, v42

    :goto_2c
    if-eqz v8, :cond_4a

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_NEW_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_2d

    :cond_49
    move/from16 p3, v4

    move-object/from16 v14, v23

    move-object/from16 v6, v44

    move-object/from16 v15, v58

    goto/16 :goto_2f

    :cond_4a
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inserts and returns a new empty value (as xml) as the ith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " insertNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(int i) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v15, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 p3, v4

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    if-nez v18, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v5, v58

    goto :goto_2e

    :cond_4c
    move-object/from16 v15, p2

    move-object/from16 v1, v17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target = ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v58

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_2e
    const/4 v2, 0x2

    const-string v16, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move/from16 v4, p3

    move-object/from16 p2, v15

    move-object v15, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v0, "return target;"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_2f
    if-eqz v8, :cond_4e

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD_NEW:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_30

    :cond_4d
    move/from16 v11, p3

    move-object/from16 v6, p4

    goto :goto_31

    :cond_4e
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appends and returns a new empty value (as xml) as the last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move/from16 v11, p3

    move-object/from16 v6, p4

    const/4 v0, 0x2

    invoke-virtual {v7, v6, v0, v9, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v9, v11, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v6, v0, v9, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    const-string v0, "return target;"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_31
    if-eqz v8, :cond_50

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->REMOVE_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removes the ith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(int i) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x3

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v9

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_store().remove_element("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_52
    return-void
.end method

.method public printStaticFields([Lorg/apache/xmlbeans/SchemaProperty;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/xmlbeans/SchemaProperty;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "private static final QName[] PROPERTY_QNAME = {"

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, "\"),"

    const-string v8, "\", \""

    const-string v9, "new QName(\""

    if-ge v5, v3, :cond_2

    aget-object v10, v1, v5

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p2

    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Ljavax/xml/namespace/QName;

    move-result-object v7

    if-nez v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Ljavax/xml/namespace/QName;

    move-result-object v7

    array-length v7, v7

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v3, "};"

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-le v6, v2, :cond_6

    const-string v5, "private static final QNameSet[] PROPERTY_QSET = {"

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    array-length v5, v1

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v10, v1, v6

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Ljavax/xml/namespace/QName;

    move-result-object v10

    if-eqz v10, :cond_4

    array-length v12, v10

    if-le v12, v2, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "QNameSet.forArray( new QName[] { "

    invoke-virtual {v0, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    array-length v11, v10

    move v12, v4

    :goto_3
    if-ge v12, v11, :cond_3

    aget-object v14, v10, v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v2, "}),"

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v13, p3

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public printStaticTypeDeclaration(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    goto :goto_0

    :cond_2
    const-class v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> Factory = new "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<>("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".TypeSystemHolder.typeSystem, \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\");"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "org.apache.xmlbeans.SchemaType type = Factory.getType();"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printStringEnumeration(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->hasBase(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "org.apache.xmlbeans.StringEnumAbstractBase getEnumValue();"

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    const-string v3, "void setEnumValue(org.apache.xmlbeans.StringEnumAbstractBase e);"

    sget-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions$BeanMethod;)V

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getStringEnumEntries()[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    move-result-object p1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const-string v8, "."

    const-string v9, " = "

    const-string v10, ";"

    if-ge v7, v5, :cond_3

    aget-object v11, p1, v7

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".Enum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = Enum.forString(\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaStringEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\");"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    array-length v3, p1

    move v5, v6

    :goto_2
    const-string v7, "INT_"

    if-ge v5, v3, :cond_6

    aget-object v11, p1, v5

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "int "

    if-eqz v1, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = Enum."

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    if-nez v1, :cond_a

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v1, "/**"

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " * Enumeration value class for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * These enum values can be used as follows:"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * <pre>"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * enum.toString(); // returns the string value of the enum"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * enum.intValue(); // returns an int value, useful for switches"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    array-length v0, p1

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " * // e.g., case Enum.INT_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v6

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_7
    const-string v0, " * Enum.forString(s); // returns the enum value for a string"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * Enum.forInt(i); // returns the enum value for an int"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * </pre>"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * Enumeration objects are immutable singleton objects that"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * can be compared using == object equality. They have no"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * public constructor. See the constants defined within this"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * class for all the valid values."

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " */"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "final class Enum extends org.apache.xmlbeans.StringEnumAbstractBase {"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, " * Returns the enum value for a string, or null if none."

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "public static Enum forString(java.lang.String s) {"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "    return (Enum)table.forString(s);"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "}"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v1, " * Returns the enum value corresponding to an int, or null if none."

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "public static Enum forInt(int i) {"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "    return (Enum)table.forInt(i);"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "private Enum(java.lang.String s, int i) {"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "    super(s, i);"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    array-length v0, p1

    move v1, v6

    :goto_4
    if-ge v1, v0, :cond_8

    aget-object v4, p1, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getIntValue()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "static final int "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "public static final org.apache.xmlbeans.StringEnumAbstractBase.Table table ="

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "    new org.apache.xmlbeans.StringEnumAbstractBase.Table(new Enum[] {"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    array-length v0, p1

    :goto_5
    if-ge v6, v0, :cond_9

    aget-object v1, p1, v6

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new Enum(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaStringEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string p1, "});"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "private static final long serialVersionUID = 1L;"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "private java.lang.Object readResolve() {"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "    return forInt(intValue());"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public printTopComment(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/*"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v1, " * Namespace: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " * XML Type:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v2, " * An XML document type."

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v2, " * An XML attribute type."

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " * Localname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " * Java type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " *"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " * Automatically generated - do not modify."

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printTopComment(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPackage(Lorg/apache/xmlbeans/SchemaType;Z)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "import "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->opt:Lorg/apache/xmlbeans/XmlOptions;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printTopComment(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPackage(Lorg/apache/xmlbeans/SchemaType;Z)V

    const-string p3, ""

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "import javax.xml.namespace.QName;"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "import org.apache.xmlbeans.QNameSet;"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "import org.apache.xmlbeans.XmlObject;"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeImpl(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;Z)V

    return-void
.end method

.method public startBlock()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    return-void
.end method

.method public startClass(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaImplName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getBaseClass(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    array-length v3, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v7, p1, v6

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "public "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, "static "

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "class "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extends "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " implements "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const-string p1, "private static final long serialVersionUID = 1L;"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public startInterface(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "public interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extends "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getExtensionInterfaces(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitSpecializedAccessors(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method public xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x24

    const/16 v0, 0x2e

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
