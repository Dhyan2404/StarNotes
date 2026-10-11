.class public Lcom/alibaba/fastjson2/codec/BeanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alphabetic:Z

.field public autoTypeBeforeHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;",
            ">;"
        }
    .end annotation
.end field

.field public buildMethod:Ljava/lang/reflect/Method;

.field public builder:Ljava/lang/Class;

.field public builderWithPrefix:Ljava/lang/String;

.field public createMethod:Ljava/lang/reflect/Method;

.field public createParameterNames:[Ljava/lang/String;

.field public creatorConstructor:Ljava/lang/reflect/Constructor;

.field public deserializer:Ljava/lang/Class;

.field public format:Ljava/lang/String;

.field public ignores:[Ljava/lang/String;

.field public includes:[Ljava/lang/String;

.field public kotlin:Z

.field public locale:Ljava/util/Locale;

.field public markerConstructor:Ljava/lang/reflect/Constructor;

.field public mixIn:Z

.field public namingStrategy:Ljava/lang/String;

.field public objectReaderFieldName:Ljava/lang/String;

.field public objectWriterFieldName:Ljava/lang/String;

.field public orders:[Ljava/lang/String;

.field public readerFeatures:J

.field public seeAlso:[Ljava/lang/Class;

.field public seeAlsoDefault:Ljava/lang/Class;

.field public seeAlsoNames:[Ljava/lang/String;

.field public serializeFilters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public serializer:Ljava/lang/Class;

.field public typeKey:Ljava/lang/String;

.field public typeName:Ljava/lang/String;

.field public writeEnumAsJavaBean:Z

.field public writerFeatures:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    return-void
.end method
