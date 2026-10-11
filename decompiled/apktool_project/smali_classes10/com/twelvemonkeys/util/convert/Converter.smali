.class public abstract Lcom/twelvemonkeys/util/convert/Converter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/convert/PropertyConverter;


# static fields
.field protected static final sInstance:Lcom/twelvemonkeys/util/convert/Converter;


# instance fields
.field protected final converters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/twelvemonkeys/util/convert/PropertyConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/dce;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dce;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/util/convert/Converter;->sInstance:Lcom/twelvemonkeys/util/convert/Converter;

    new-instance v0, Lcom/twelvemonkeys/util/convert/DefaultConverter;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/convert/DefaultConverter;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    new-instance v0, Lcom/twelvemonkeys/util/convert/NumberConverter;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/convert/NumberConverter;-><init>()V

    const-class v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    new-instance v0, Lcom/twelvemonkeys/util/convert/DateConverter;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/convert/DateConverter;-><init>()V

    const-class v1, Ljava/util/Date;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    new-instance v0, Lcom/twelvemonkeys/util/convert/TimeConverter;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/convert/TimeConverter;-><init>()V

    const-class v1, Lcom/twelvemonkeys/util/Time;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/util/convert/Converter;->converters:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/twelvemonkeys/util/convert/Converter;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/util/convert/Converter;->sInstance:Lcom/twelvemonkeys/util/convert/Converter;

    return-object v0
.end method

.method public static registerConverter(Ljava/lang/Class;Lcom/twelvemonkeys/util/convert/PropertyConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/twelvemonkeys/util/convert/PropertyConverter;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/twelvemonkeys/util/convert/Converter;->getInstance()Lcom/twelvemonkeys/util/convert/Converter;

    move-result-object v0

    iget-object v0, v0, Lcom/twelvemonkeys/util/convert/Converter;->converters:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregisterConverter(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/twelvemonkeys/util/convert/Converter;->getInstance()Lcom/twelvemonkeys/util/convert/Converter;

    move-result-object v0

    iget-object v0, v0, Lcom/twelvemonkeys/util/convert/Converter;->converters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/util/convert/Converter;->toObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract toObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/util/convert/Converter;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation
.end method
