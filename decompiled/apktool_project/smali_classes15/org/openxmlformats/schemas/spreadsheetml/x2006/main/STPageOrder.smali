.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;
    }
.end annotation


# static fields
.field public static final DOWN_THEN_OVER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DOWN_THEN_OVER:I = 0x1

.field public static final INT_OVER_THEN_DOWN:I = 0x2

.field public static final OVER_THEN_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpageorderd2cetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "downThenOver"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;->DOWN_THEN_OVER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    const-string v0, "overThenDown"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;->OVER_THEN_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
