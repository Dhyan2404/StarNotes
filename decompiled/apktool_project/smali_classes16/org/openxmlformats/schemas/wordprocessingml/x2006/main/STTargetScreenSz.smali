.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_X_1024_X_768:I = 0x5

.field public static final INT_X_1152_X_882:I = 0x6

.field public static final INT_X_1152_X_900:I = 0x7

.field public static final INT_X_1280_X_1024:I = 0x8

.field public static final INT_X_1600_X_1200:I = 0x9

.field public static final INT_X_1800_X_1440:I = 0xa

.field public static final INT_X_1920_X_1200:I = 0xb

.field public static final INT_X_544_X_376:I = 0x1

.field public static final INT_X_640_X_480:I = 0x2

.field public static final INT_X_720_X_512:I = 0x3

.field public static final INT_X_800_X_600:I = 0x4

.field public static final X_1024_X_768:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_1152_X_882:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_1152_X_900:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_1280_X_1024:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_1600_X_1200:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_1800_X_1440:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_1920_X_1200:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_544_X_376:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_640_X_480:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_720_X_512:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final X_800_X_600:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttargetscreenszaf74type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "544x376"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_544_X_376:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "640x480"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_640_X_480:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "720x512"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_720_X_512:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "800x600"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_800_X_600:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1024x768"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1024_X_768:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1152x882"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1152_X_882:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1152x900"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1152_X_900:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1280x1024"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1280_X_1024:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1600x1200"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1600_X_1200:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1800x1440"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1800_X_1440:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    const-string v0, "1920x1200"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz;->X_1920_X_1200:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTargetScreenSz$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
