.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;
    }
.end annotation


# static fields
.field public static final B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

.field public static final E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_B:I = 0x2

.field public static final INT_E:I = 0x4

.field public static final INT_N:I = 0x3

.field public static final INT_NIL:I = 0x1

.field public static final INT_STR:I = 0x5

.field public static final N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

.field public static final NIL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

.field public static final STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stddevaluetype6abftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "nil"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->NIL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    const-string v0, "b"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    const-string v0, "n"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    const-string v0, "e"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    const-string v0, "str"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDdeValueType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
