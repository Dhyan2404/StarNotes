.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFORMATION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

.field public static final INT_INFORMATION:I = 0x3

.field public static final INT_STOP:I = 0x1

.field public static final INT_WARNING:I = 0x2

.field public static final STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

.field public static final WARNING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdatavalidationerrorstyleca85type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "stop"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    const-string v0, "warning"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->WARNING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    const-string v0, "information"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->INFORMATION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
